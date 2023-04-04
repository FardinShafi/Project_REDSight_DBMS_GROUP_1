<?php
include '../connection/server.php'; // conecting to the database "sprm" 
session_start(); // start the session
if (!isset($_SESSION['InstructorID'])) { // check if the StudentID is set in the session
    header('Location: ../Login/index.php'); // if not, redirect to the login page
    exit(); // stop executing the rest of the script
}
$InstructorID = $_SESSION['InstructorID']; // get the StudentID from the session
// now you can use the StudentID variable to display student-specific information
$submitMessage=false;
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
// Get the form data
$SectionID = $_POST["SectionID"];
$OutlineID = $_POST["OutlineID"];
$Lesson_Plan = $_POST["LessonPlan"];
$Room_Number = $_POST["RoomNumber"];
$Mark_Distribution = $_POST["MarkDistribution"];
$Grading = $_POST["Grading"];
$Syllabus = $_POST["Syllabus"];
$Book = $_POST["Book"];
$Lesson_Plan = mysqli_real_escape_string($con, $Lesson_Plan);
$Mark_Distribution = mysqli_real_escape_string($con, $Mark_Distribution);
$Grading = mysqli_real_escape_string($con, $Grading);
$Syllabus = mysqli_real_escape_string($con, $Syllabus);
$Book = mysqli_real_escape_string($con, $Book);

$sql = "INSERT INTO outline (SectionID, OutlineID, Lesson_Plan, Room_Number, Mark_Distribution, Grading, Syllabus, Book) 
        VALUES ('$SectionID', '$OutlineID', '$Lesson_Plan', '$Room_Number', '$Mark_Distribution', '$Grading', '$Syllabus', '$Book')";

// Run the SQL query
if (mysqli_query($con, $sql)) {
  echo "Data inserted successfully";
} else {
  echo "Error: " . mysqli_error($con);
}

$sql = "INSERT INTO outline (SectionID, OutlineID, Lesson_Plan, Room_Number, Mark_Distribution, Grading, Syllabus, Book) 
        VALUES ('$SectionID', '$OutlineID', '$Lesson_Plan', '$Room_Number', '$Mark_Distribution', '$Grading', '$Syllabus', '$Book')";
// $sql = "INSERT INTO outline (SectionID, OutlineID, Lesson_Plan, Room_Number, Mark_Distribution, Grading, Syllabus, Book) 
//         VALUES ('$SectionID', '$OutlineID', '$Lesson_Plan', '$Room_Number', '$Mark_Distribution', '$Grading', '$Syllabus', '$Book')";

// Execute the SQL query and check for errors
if ($con->query($sql) === TRUE) {
        $submitMessage=true;
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $con->error;
}
}
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="outline.css">

    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>

    <div class="sidebar">
        <div class="logo-details">
            <i class='bx bxl-c-plus-plus icon'></i>
            <div class="logo_name">SPRM</div>
            <i class='bx bx-menu' id="btn"></i>
        </div>
        <ul class="nav-list">
            <li>
                <a href="instructor.php">
                    <i class='bx bx-grid-alt'></i>
                    <span class="links_name">Dashboard</span>
                </a>
                <span class="tooltip">Dashboard</span>
            </li>
            <li>
                <a href="#">
                    <i class='bx bx-user'></i>
                    <span class="links_name">Departments</span>
                </a>
                <span class="tooltip">Departments</span>
            </li>
            <li>
                <a href="outline.php">
                    <i class='bx bx-chat'></i>
                    <span class="links_name">Course Outline</span>
                </a>
                <span class="tooltip">Course Outline</span>
            </li>
            <li>
                <a href="#">
                    <i class='bx bx-pie-chart-alt-2'></i>
                    <span class="links_name">Student Analytics</span>
                </a>
                <span class="tooltip">Student Analytics</span>
            </li>
            <li>
                <a href="#">
                    <i class='bx bx-folder'></i>
                    <span class="links_name">Courses</span>
                </a>
                <span class="tooltip">Enrollment</span>
            </li>
            <li>
                <a href="questionBank.php">
                    <i class='bx bx-cog'></i>
                    <span class="links_name">Question Bank</span>
                </a>
                <span class="tooltip">Question Bank</span>
            </li>
            <li class="profile">
                <div class="profile-details">
                    <!--<img src="profile.jpg" alt="profileImg">-->
                    <div class="name_job">
                        <!-- <div class="name">Mahady Hasan</div> -->
                        <div class="name">Dean</div>
                    </div>
                </div>
                <i class='bx bx-log-out' id="log_out"></i>
            </li>
        </ul>
    </div>

    <!-- sprm header code -->
    <div class="SPRM">
        <div class="container">
            <div class="Title">
                <h1>SPRM
                    <div class="Title__highlight"></div>
                </h1>
                <div class="Title__underline"></div>
                <div aria-hidden class="Title__filled">SPRM</div>
            </div>
        </div>
    </div>
    <!-- Outline Form -->
    <div class="master">
        <div class="contact">
        <h1 > 
        <?php
        if($submitMessage==false){
          
            echo "<p>Fill Up The Course Outline Form</p>";

        }
        else if($submitMessage==true){
          echo "New record created successfully";
            echo "<p><b>Course Outline added to database</b></p>";

        }
   
        ?></h1>           
           
            <form class="form" action="outline.php" method="POST">
                <input type="text" class="formtext" placeholder="Section ID" name="SectionID">
                <input type="text" class="formtext" placeholder="Outline ID (CSE101_1_Spring_YEAR)" name="OutlineID">
                <textarea class="formtext" placeholder="Lesson Plan" name="LessonPlan"></textarea>
                <input type="text" class="formtext" placeholder="Room Number" name="RoomNumber">
                <textarea class="formtext" placeholder="Mark Distribution" name="MarkDistribution"></textarea>
                <textarea class="formtext" placeholder="Grading" name="Grading"></textarea>
                <textarea class="formtext" placeholder="Syllabus" name="Syllabus"></textarea>
                <input type="text" class="formtext" placeholder="Book" name="Book">
                <button type="submit" class="formbtn">Submit</button>
            </form>
        </div>
    </div>
    <br>
    <br>
    <script>
        let sidebar = document.querySelector(".sidebar");
        let closeBtn = document.querySelector("#btn");
        let searchBtn = document.querySelector(".bx-search");

        closeBtn.addEventListener("click", () => {
            sidebar.classList.toggle("open");
            menuBtnChange();//calling the function(optional)
        });

        searchBtn.addEventListener("click", () => { // Sidebar open when you click on the search iocn
            sidebar.classList.toggle("open");
            menuBtnChange(); //calling the function(optional)
        });

        // following are the code to change sidebar button(optional)
        function menuBtnChange() {
            if (sidebar.classList.contains("open")) {
                closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
            } else {
                closeBtn.classList.replace("bx-menu-alt-right", "bx-menu");//replacing the iocns class
            }
        }

    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
        crossorigin="anonymous"></script>
</body>

</html>
