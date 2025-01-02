# Laptop Scraper Script (`scrap.sh`)

## About
This script is designed to scrape laptop information from the [webscraper.io test site](https://webscraper.io/test-sites/e-commerce/allinone/computers/laptops). It simulates an object-oriented programming (OOP) style in Bash, allowing you to easily retrieve and display laptop details such as the name, description, and price.

The script uses `curl` to fetch the webpage, and `grep`, `sed` to parse the HTML content, extracting details for each laptop and printing them in a structured format.

## Features
- Fetches laptop information from the given e-commerce webpage.
- Parses the HTML content using `sed` and `grep`.
- Displays laptop name, description, and price in a readable format.
- Simulates object-oriented programming principles using functions.

## Requirements
- Bash shell
- `curl`
- `grep`
- `sed`

## How to Use

1. **Clone the repository or download the script**:
   Download the `scrap.sh` file to your local machine.

2. **Make the script executable**:
   Run the following command to give execute permissions to the script:
   ```bash
   chmod +x scrap.sh

