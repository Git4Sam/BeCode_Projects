<?php
// Function to sanitize user input
function sanitizeInput($data) {
    return htmlspecialchars(trim($data));
}

// Function to validate email format
function validateEmail($email) {
    return filter_var($email, FILTER_VALIDATE_EMAIL);
}

// Function to display error messages
function displayErrors($errors) {
    foreach ($errors as $error) {
        echo "<p style='color: red;'>$error</p>";
    }
}

// Function to handle the form submission
function handleFormSubmission($postData) {
    $errors = [];
    $feedback = [];

    // Sanitize and validate inputs
    $name = sanitizeInput($postData['name']);
    $email = sanitizeInput($postData['email']);
    $message = sanitizeInput($postData['message']);

    // Check for missing fields and invalid email
    if (empty($name)) {
        $errors[] = "Name is required.";
    }

    if (empty($email)) {
        $errors[] = "Email is required.";
    } elseif (!validateEmail($email)) {
        $errors[] = "Invalid email format.";
    }

    if (empty($message)) {
        $errors[] = "Message is required.";
    }

    // If no errors, provide feedback summary
    if (empty($errors)) {
        $feedback[] = "Thank you, $name. We have received your booking.";
        $feedback[] = "Email: $email";
        $feedback[] = "Message: $message";
    }

    return ['errors' => $errors, 'feedback' => $feedback];
}

// Initialize errors and feedback
$errors = [];
$feedback = [];

// Process form submission if POST request
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $result = handleFormSubmission($_POST);
    $errors = $result['errors'];
    $feedback = $result['feedback'];
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Form</title>
</head>
<body>
    <h1>Booking Form</h1>

    <?php
    // Display any errors if present
    if (!empty($errors)) {
        displayErrors($errors);
    }

    // Display feedback if form was successfully submitted
    if (!empty($feedback)) {
        foreach ($feedback as $message) {
            echo "<p style='color: green;'>$message</p>";
        }
    }
    ?>

    <!-- Form for user input -->
    <form action="form.php" method="POST">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" value=""><br><br>

        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" value=""><br><br>

        <label for="message">Message:</label><br>
        <textarea id="message" name="message"></textarea><br><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>

