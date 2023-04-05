<?php
include '../connection/server.php'; // conecting to the database "sprm" 
session_start(); // start the session
if (!isset($_SESSION['InstructorID'])) { // check if the StudentID is set in the session
    header('Location: ../Login/index.php'); // if not, redirect to the login page
    exit(); // stop executing the rest of the script
}
$InstructorID = $_SESSION['InstructorID'];
$sql = "SELECT QuestionID, Question_Description, Marks FROM question";
$result = mysqli_query($con, $sql);
if (mysqli_num_rows($result) > 0) {
    $rows = mysqli_fetch_all($result, MYSQLI_ASSOC);
} else {
    $rows = array();
}
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="questionbank.css">

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
            <a href="StudentAnalytics.html">
                <i class='bx bx-pie-chart-alt-2'></i>
                <span class="links_name">Student Analytics</span>
            </a>
            <span class="tooltip">Student Analytics</span>
        </li>
        <li>
            <a href="courseR.html">
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
            <a href="../Login/index.php" style="text-decoration: none;"><i class='bx bx-log-out' id="log_out"> </i></a>
        </li>
    </ul>
</div>
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
    <br>
    <section class="master-table">
        <section class="table">
            <section class="table_header">
                <h1 style="text-align: center;">Question Bank</h1>
            </section>
            <section class="table_body">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Description</th>
                            <th>Marks</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($rows as $row) { ?>
                            <tr>
                                <td data-label='ID'><?php echo $row['QuestionID']; ?></td>
                                <td data-label='Description'><?php echo $row['Question_Description']; ?></td>
                                <td data-label='Marks'><?php echo $row['Marks']; ?></td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </section>
        </section>
    </section>
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