<?php
 // Connect to the database
$server = "127.0.0.1:3307"; // server should be localhost or 127.0.0.1
$username = "root";
$password = "";
$db = "sprm";
$conn = mysqli_connect($server, $username, $password, $db);
if(!$conn){
    die("Connection to database failed due to ".mysqli_connect_error());
}
?>