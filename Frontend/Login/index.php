<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $userType = $_POST['semester']; // retrieve the selected value
    // Connect to the database
    $server = "localhost";
    $username = "root";
    $password = "dark@2020#";
    $db = "sprm";
    $con = mysqli_connect($server, $username, $password, $db);
    if(!$con){
        die("Connection to database failed due to ".mysqli_connect_error());
    }
    $uID=$_POST['userid'];
    $uPass=$_POST['pass'];
    echo $uID;
    echo $uPass;


    // Log the values of $uID and $uPass to the error log
        error_log("uID: $uID, uPass: $uPass");
        if($userType=="student"){
            $check = "SELECT * FROM `student` where StudentId='$uID' and Password='$uPass'";            
            $result=$con->query($check);
            if ($result) { // Check if the query was successful
                if ($result->num_rows > 0) { // Check if any rows were returned
                    // Rows were returned, so do something with them
                    header('Location: adminHome.php');
                    }    
                 else {
                    // No rows were returned, so handle the case where the query returned no results
                    echo "No results found.";
                    header('Location: dummy.php');
                }
            } else {
                // The query failed, so handle the case where the query was not successful
                echo "Query failed: " . $con->error;
            }
        } elseif($userType=="vc") {
            $check = "SELECT * FROM `employee` where `VC?`='1'and `EmployeeID` ='$uID' and `Password`='$uPass'";
            $result=$con->query($check);
            if ($result) { // Check if the query was successful
                if ($result->num_rows > 0) { 
                    header('Location: adminHome.php');
                    }    
                 else {
                    // No rows were returned, so handle the case where the query returned no results
                    echo "No results found.";
                    header('Location: dummy.php');
                }
            } else {
                // The query failed, so handle the case where the query was not successful
                echo "Query failed: " . $con->error;
            }
            
        } elseif($userType=="dean") {
            $check = "SELECT * FROM `employee` where Dean?='1'and EmployeeID ='$uID' and Password='$uPass'";
            $result=$con->query($check);
            if($result->num_rows > 0){
                header('Location: adminHome.php');
                exit(); // Stop further execution
            } else {
                echo "Invalid username and password";
                header('Location: dummy.php');
                exit(); // Stop further execution
            }
        } elseif($userType=="depthead") {
            $check = "SELECT * FROM `employee` where DeptHead?='1' and EmployeeID ='$uID'and Password='$uPass'";
            $result=$con->query($check);
            if($result->num_rows > 0){
                header('Location: adminHome.php');
                exit(); // Stop further execution
            } else {
                echo "Invalid username and password";
                header('Location: dummy.php');
                exit(); // Stop further execution
            }
        } elseif($userType=="instructor") {
            $check = "SELECT * FROM `employee` where Instructor?='1'and EmployeeID ='$uID' and Password='$uPass'";
            $result=$con->query($check);
            if($result->num_rows > 0){
                header('Location: adminHome.php');
                exit(); // Stop further execution
            } else {
                echo "Invalid username and password";
                header('Location: dummy.php');
                exit(); // Stop further execution
            }
        } else {
            echo "Invalid user type";
            exit();
        }
        
    // }else{

    // }
    
    // Check if query was successful and redirect accordingly
    
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="index.css">
  <title>SPRM</title>
</head>
<body>
    <section>
        <div class="form-box">
            <div class="form-value">
                <form  method="POST" input="index.php">
                    <div class="logo">
                    </div>
                    <h2>Login</h2>
                    <div class="inputbox">
                        <ion-icon name="mail-outline"></ion-icon>
                        <input type="text" required name="userid">
                        <label for="">User ID</label>
                    </div>
                    <div class="inputbox">
                        <ion-icon name="lock-closed-outline"></ion-icon>
                        <input type="password" required name="pass">
                        <label for="">Password</label>
                    </div>
                    <div class="user-type">
                        <label for="semester">Semester:</label>
                        <select class="form-control" id="semester" name="semester">
                            <option value="student">Student</option>
                            <option value="vc">VC</option>
                            <option value="dean">Dean</option>
                            <option value="depthead">Department Head</option>
                            <option value="instructor">Instructor</option>
                        </select>
                    </div>
                    <button>Log in</button>
                </form>
            </div>
        </div>
    </section>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>