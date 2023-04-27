<?php
require_once(__DIR__ . "../Includes/connection.php");

include('Login.php');
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $userType = $_POST['Usertype']; // retrieve the selected value

    $uID=$_POST['userid'];
    $uPass=$_POST['pass'];
    echo $uID;
    echo $uPass;


    // Log the values of $uID and $uPass to the error log
        error_log("uID: $uID, uPass: $uPass");
        if($userType=="student"){
            $check = "SELECT * FROM `student` where StudentId='$uID' and Password='$uPass'";            
            $result=$conn->query($check);
            if ($result) { // Check if the query was successful
                if ($result->num_rows > 0) { 
                    
                        session_start(); // start the session
                        $_SESSION['StudentID'] = $uID; // set the StudentID in the session
                        header('Location: ../student/student.php');
                    }    
                 else {
                    
                    echo "No results found.";
                    header('Location: Login.php');
                }
            } else {
                // The query failed, so handle the case where the query was not successful
                echo "Query failed: " . $conn->error;
            }
        } elseif($userType=="vc" || $userType=="dean"|| $userType=="depthead" ) {
            $check = "SELECT * FROM `employee` where `EmployeeID` ='$uID' and `Password`='$uPass'";
            $result=$conn->query($check);
            header('Location: ../Dean/html/dDashboard.php');
            // if ($result) { 
            //     if ($result->num_rows > 0) { 
            //         header('Location: ../Dean/html/dDashboard.php');
            //         }    
            //      else {
                    
            //         echo "No results found.";
            //         header('Location: Login.php');
            //     }
            // } else {
            //     // The query failed, so handle the case where the query was not successful
            //     echo "Query failed: " . $conn->error;
            // }
            
        // } elseif($userType=="dean") {
        //     $check = "SELECT * FROM `employee` where Dean?='1'and EmployeeID ='$uID' and Password='$uPass'";
        //     $result=$conn->query($check);
        //     if($result->num_rows > 0){
        //         header('Location: ../Dean/html/dDashboard.php');
        //         exit(); 
        //     } else {
        //         echo "Invalid username and password";
        //         header('Location: index.php');
        //         exit(); 
        //     }
        // } elseif($userType=="depthead") {
        //     $check = "SELECT * FROM `employee` where DeptHead?='1' and EmployeeID ='$uID'and Password='$uPass'";
        //     $result=$conn->query($check);
        //     if($result->num_rows > 0){
        //         header('Location: ../Dean/html/dDashboard.php');
        //         exit(); 
        //     } else {
        //         echo "Invalid username and password";
        //         header('Location: index.php');
        //         exit(); 
        //     }
        // }
        } 
        elseif($userType=="instructor") {

            $check = "SELECT * FROM `employee` where Instructor?='1'and EmployeeID ='$uID' and Password='$uPass'";
            $result=$conn->query($check);
            if($result->num_rows <= 0){
                session_start(); // start the session
                $_SESSION['InstructorID'] = $uID; // set the StudentID in the session
                header('Location: ../Faculty/HtmlFiles/fDashboard.html');
                exit(); 
            } else {
                echo "Invalid username and password";
                header('Location: Login.php');
                exit(); // Stop further execution
            }
        } else {
            echo "Invalid user type";
            exit();
        }

    
}

?>