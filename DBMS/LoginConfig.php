<?php
require_once(__DIR__ . "../Includes/connection.php");

include('Login.php');
if(isset($_POST['userID'])){


    // Retrieve user input and query the database
    $uID = $_POST['userID'];
    $uPass = $_POST['pass'];
    $sql = "SELECT * FROM `employee` WHERE employeeId='$uID' AND password='$uPass'";
    $result = $con->query($sql);

    // Check if query was successful and redirect accordingly
    if($result->num_rows > 0){
        header('Location: ../Dean/html/dDashboard.php');
        exit(); // Stop further execution
    } else {
        echo "Invalid username and password";
        header('Location: Login.php');
        exit(); // Stop further execution
    }
}
?>