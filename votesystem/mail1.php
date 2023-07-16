<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Handle the form submission
    

    $to = $_POST['recipient_email'];
    $subject = 'Your Vote Matters! 🗳';
    $message = 'Dear voters,

Warm greetings! As a valued member of our community, we want to remind you of the upcoming voting opportunity that awaits you. Your voice and participation play a vital role in shaping the future of our society.

Thank you for your dedication and for being an integral part of our community. Your vote matters, and we appreciate your invaluable contribution.

Best regards,
PU_HACKERS
puhackers1@outlook.com';
    $headers = 'From: puhackers1@outlook.com';

    if (mail($to, $subject, $message, $headers)) {
        echo 'Email sent successfully.';
    } else {
        echo 'Email sending failed.';
    }
}
?>
