<?php
if(isset($_POST['userID'])){
    $server = "localhost";
    $username = "root";
    $password = "";
    $db = "sprm";
   
    // Connect to the database
    $con = mysqli_connect($server, $username, $password, $db);
    if(!$con){
        die("Connection to database failed due to ".mysqli_connect_error());
    }

    // Retrieve user input and query the database
    $uID = $_POST['userID'];
    $uPass = $_POST['pass'];
    $sql = "SELECT * FROM `employee` WHERE employeeId='$uID' AND password='$uPass'";
    $result = $con->query($sql);

    // Check if query was successful and redirect accordingly
    if($result->num_rows > 0){
        header('Location: adminHome.php');
        exit(); // Stop further execution
    } else {
        echo "Invalid username and password";
        header('Location: index.php');
        exit(); // Stop further execution
    }
}
?>
<!-- SELECT * FROM `employee` WHERE employeeId='42069' AND password='123456'; -->

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
                <form method="POST" input="index.php">
                    <div class="logo">
                    </div>
                    <h2>Login</h2>
                    <div class="inputbox">
                        <ion-icon name="mail-outline"></ion-icon>
                        <input type="text" required name="userID">
                        <label for="">User ID</label>
                    </div>
                    <div class="inputbox">
                        <ion-icon name="lock-closed-outline"></ion-icon>
                        <input type="password" required name="pass">
                        <label for="">Password</label>
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