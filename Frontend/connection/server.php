<?php
 // Connect to the database
$server = "localhost"; // server should be localhost or 127.0.0.1
$username = "root";
$password = "";
$db = "sprm";
$con = mysqli_connect($server, $username, $password, $db);
if(!$con){
    die("Connection to database failed due to ".mysqli_connect_error());
}
?>