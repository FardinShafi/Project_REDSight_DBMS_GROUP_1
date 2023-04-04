<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $userType = $_POST['semester']; // retrieve the selected value
    include '../connection/server.php';
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
                if ($result->num_rows > 0) { 
                    
                        session_start(); // start the session
                        $_SESSION['StudentID'] = $uID; // set the StudentID in the session
                        header('Location: ../student/student.php');
                    }    
                 else {
                    
                    echo "No results found.";
                    header('Location: index.php');
                }
            } else {
                // The query failed, so handle the case where the query was not successful
                echo "Query failed: " . $con->error;
            }
        } elseif($userType=="vc") {
            $check = "SELECT * FROM `employee` where `VC?`='1'and `EmployeeID` ='$uID' and `Password`='$uPass'";
            $result=$con->query($check);
            if ($result) { 
                if ($result->num_rows > 0) { 
                    header('Location: ../dean/dean.php');
                    }    
                 else {
                    
                    echo "No results found.";
                    header('Location: index.php');
                }
            } else {
                // The query failed, so handle the case where the query was not successful
                echo "Query failed: " . $con->error;
            }
            
        } elseif($userType=="dean") {
            $check = "SELECT * FROM `employee` where Dean?='1'and EmployeeID ='$uID' and Password='$uPass'";
            $result=$con->query($check);
            if($result->num_rows > 0){
                header('Location: ../dean/dean.php');
                exit(); 
            } else {
                echo "Invalid username and password";
                header('Location: index.php');
                exit(); 
            }
        } elseif($userType=="depthead") {
            $check = "SELECT * FROM `employee` where DeptHead?='1' and EmployeeID ='$uID'and Password='$uPass'";
            $result=$con->query($check);
            if($result->num_rows > 0){
                header('Location: ../departmentHead/departmentHead.html');
                exit(); 
            } else {
                echo "Invalid username and password";
                header('Location: index.php');
                exit(); 
            }
        } elseif($userType=="instructor") {

            $check = "SELECT * FROM `employee` where Instructor?='1'and EmployeeID ='$uID' and Password='$uPass'";
            $result=$con->query($check);
            if($result->num_rows <= 0){
                session_start(); // start the session
                $_SESSION['InstructorID'] = $uID; // set the StudentID in the session
                header('Location: ../instructor/instructor.php');
                exit(); 
            } else {
                echo "Invalid username and password";
                header('Location: index.php');
                exit(); // Stop further execution
            }
        } else {
            echo "Invalid user type";
            exit();
        }

    
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