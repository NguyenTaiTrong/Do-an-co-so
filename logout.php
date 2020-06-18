<?php
session_start();
unset($_SESSION['username']);
session_destroy();

header("Location: login.php");
exit;
?>
 <!DOCTYPE html>
 <html lang="en">
 <head>
 	<meta charset="UTF-8">
 	<title>Logout</title>
 </head>
 <body>

 </body>
 </html>