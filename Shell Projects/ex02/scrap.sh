#!/bin/bash

# Laptop class-like structure (simulating object-oriented behavior)
Laptop() {
    # Properties (name, description, price)
    local name
    local description
    local price

    # Constructor: sets initial properties
    function init() {
        name="$1"
        description="$2"
        price="$3"
    }

    # Methods to access the properties
    function get_name() {
        echo "$name"
    }

    function get_description() {
        echo "$description"
    }

    function get_price() {
        echo "$price"
    }

    # Method to print laptop info
    function display_info() {
        echo "$name | $description | $price"
    }

    # Return methods
    export -f init
    export -f get_name
    export -f get_description
    export -f get_price
    export -f display_info
}

# Use curl to fetch the page content
html_content=$(curl -s "https://webscraper.io/test-sites/e-commerce/allinone/computers/laptops")

# Loop over each laptop found on the page
echo "$html_content" | grep -o '<div class="col-sm-4 col-lg-4 col-md-4">.*</div>' |
while read -r item; do
    # Extracting laptop name, description, and price using sed
    name=$(echo "$item" | sed -n 's/.*<h4 class="caption">\([^<]*\)<\/h4>.*/\1/p')
    description=$(echo "$item" | sed -n 's/.*<p class="description">\([^<]*\)<\/p>.*/\1/p')
    price=$(echo "$item" | sed -n 's/.*<h4 class="price">\([^<]*\)<\/h4>.*/\1/p')

    # Create an instance of the "Laptop"
    Laptop
    init "$name" "$description" "$price"  # Initialize laptop with data

    # Display laptop info
    display_info
done

