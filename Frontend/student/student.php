<?php
include '../connection/server.php'; // conecting to the database "sprm" 
session_start(); // start the session
if (!isset($_SESSION['StudentID'])) { // check if the StudentID is set in the session
    header('Location: ../Login/index.php'); // if not, redirect to the login page
    exit(); // stop executing the rest of the script
}
$StudentID = $_SESSION['StudentID']; // get the StudentID from the session
// now you can use the StudentID variable to display student-specific information
?>


<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8">
    <!--<title> Responsive Sidebar Menu  | CodingLab </title>-->
    <link rel="stylesheet" href="sidebar.css">
    <!-- Boxicons CDN Link -->
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous"> -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <title>Welcome to Student Dashboard</title>
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
                <a href="student.html">
                    <i class='bx bx-grid-alt'></i>
                    <span class="links_name">Dashboard</span>
                </a>
                <span class="tooltip">Dashboard</span>
            </li>
            <li>
                <a href="mycourses.html">
                    <i class='bx bxs-graduation'></i>
                    <span class="links_name">My Courses</span>
                </a>
                <span class="tooltip">My Courses</span>
            </li>
            <li>
                <a href="plo.html">
                    <i class='bx bx-chat'></i>
                    <span class="links_name">PLO</span>
                </a>
                <span class="tooltip">PLO</span>
            </li>
            <li>
                <a href="co.html">
                    <i class='bx bx-pie-chart-alt-2'></i>
                    <span class="links_name">CO</span>
                </a>
                <span class="tooltip">CO</span>
            </li>
            <li>
                <a href="#">
                    <i class='bx bx-folder'></i>
                    <span class="links_name">Faculty Evaluation</span>
                </a>
                <span class="tooltip">Faculty Evaluation</span>
            </li>
            <li class="profile">
                <div class="profile-details">
                    <!--<img src="profile.jpg" alt="profileImg">-->
                    <div class="name_job">
                        <div class="name">Mahady Hasan</div>
                        <div class="job">Dean</div>
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
    <br>
    <!-- ...........First table............. -->
    <div>
        <form method="post">
            <section class="choice-container">
                <h1 style="text-align: center; color:rgb(221, 88, 88); font-size: 35px; padding-top:20px;">Semester Wise Result</h1>
                <select name="year" id="year-select">
                    <option value="" disabled selected>Year</option>
                    <option value="2020">2020</option>
                </select>
                <select name="semester" id="semester-select">
                    <option value="" disabled selected>Semester</option>
                    <option value="Spring">Spring</option>
                    <option value="Summer">Summer</option>
                    <option value="Autumn">Autumn</option>
                </select>
                <button id="load-btn" name="Load-Result" type="submit">Load</button>
            </section>
        </form>
    </div>
    <?php

        if (isset($_POST["Load-Result"])) {
    $year = $_POST["year"];
    $semester = $_POST["semester"];
    $sql = "SELECT course.CourseID, course.Course_Name, student_grade.Grade  as Grade
            FROM sprm.student
            JOIN sprm.registered_course ON student.StudentID = registered_course.StudentID
            JOIN sprm.section_registration ON registered_course.RegistrationID = section_registration.RegistrationID
            JOIN sprm.section ON section_registration.SectionID = section.SectionID
            JOIN sprm.course ON section.CourseID= course.CourseID
            JOIN sprm.student_grade  ON student_grade.CourseID=course.CourseID AND student_grade.StudentID = student.StudentID
            JOIN sprm.registration ON registered_course.RegistrationID = registration.RegistrationID
            WHERE student.StudentID = '$StudentID'
            AND registration.Semester = '$semester'
            AND registration.Year = $year";
    // Execute the SQL query
    $result = mysqli_query($con, $sql);

    // Check if the query was successful
    if (!$result) {
        die("Query failed: " . mysqli_error($con));
    }

    // Display the results in a table
    echo '<section class="master-table">
            <section class="table">   
                <section class="table_body">
                    <table>
                        <thead>
                            <tr>
                                <th>Course ID</th>
                                <th>Course Name</th>
                                <th>Grade</th>
                            </tr>
                        </thead><tbody>';
                        
    while ($row = mysqli_fetch_assoc($result)) {
        echo "
            <tr>
                  <td>" . $row["CourseID"] . "</td>
                  <td>" . $row["Course_Name"] . "</td>
                  <td>" . $row["Grade"] . "</td>
                </tr>";
    }
    echo '</tbody>
            </table>
            </section>
            </section>
            </section>';

    // // Close the database connection
    // mysqli_close($conn);
}
?>
    <br>
    <div class="2ndOne">

    <?php
    // $student_id = 2022020; // replace with actual student ID
    
    $query = "SELECT c.CourseID, c.Course_Name, g.Grade
              FROM course c
              INNER JOIN department d ON c.DepartmentID = d.DepartmentID
              INNER JOIN program p ON d.DepartmentID = p.DepartmentID
              INNER JOIN student s ON p.ProgramID = s.ProgramID
              LEFT JOIN student_grade g ON c.CourseID = g.CourseID AND s.StudentID = g.StudentID
              WHERE s.StudentID = $StudentID";

    $result = mysqli_query($con, $query);
    if (!$result) {
        die("Error executing query: " . mysqli_error($con));
    }
    
    if (mysqli_num_rows($result) > 0) {
        
        echo '<section class="master-table">';
        echo '<section class="table">';
        echo '<section class="choice-container">';
        echo '<h1 style="text-align: center; color:rgb(221, 88, 88); font-size: 35px; padding-top: 20px;">Program Courses</h1>';
        echo '</section>';
        echo '<section class="table_body">';
        echo "<table>";
        echo "<thead>";
        echo "<tr>";
        echo "<th>Course ID</th>";
        echo "<th>Course Name</th>";
        echo "<th>Grade</th>"; /* add grade column */
        echo "</tr>";
        echo "</thead>";
        echo "<tbody>";
        while($row = mysqli_fetch_assoc($result)) {
            echo "<tr>";
            echo "<td>" . $row["CourseID"] . "</td>";
            echo "<td>" . $row["Course_Name"] . "</td>";
            if ($row["Grade"]) {
                echo "<td>" . $row["Grade"] . "</td>"; /* show grade if exists */
            } else {
                echo "<td>Z</td>"; /* show N/A if no grade */
            }
            echo "</tr>";
        }
        echo "</tbody>";
        echo "</table>";
        echo '</section>';
        echo '</section>';
        echo '</section>';
    } else {
        echo "No courses found for student ID $student_id";
    }

    // mysqli_close($con);
?>
    </div>
    <br>
    <div class="thirdOne">
    <?php
// Connect to the database


// Query the database to retrieve the sections that match the filter
$sql = "SELECT `CourseID`, `Section_Number`, `Year`, `Semester` FROM `section` WHERE `Year`='2020' AND `Semester`='Autumn'";
$result = mysqli_query($con, $sql);
// Check if any rows were returned
if (mysqli_num_rows($result) > 0) {
  // Start the table HTML
  echo '<section class="master-table">';
  echo '<section class="table">';
  echo '<section class="choice-container">';
  echo '<h1 style="text-align: center; color:rgb(221, 88, 88); font-size: 35px; padding-top: 20px;">Courses Offered</h1>';
  echo '</section>';
  echo '<section class="table_body">';
  echo '<table>';
  echo '<thead>';
  echo '<tr>';
  echo '<th>Course ID</th>';
  echo '<th>Section</th>';
  echo '<th>Year</th>';
  echo '<th>Semester</th>';
  echo '</tr>';
  echo '</thead>';
  echo '<tbody>';

  // Output each row as a table row
  $count = 0;
  while ($row = mysqli_fetch_assoc($result)) {
    $count++;
    echo '<tr >';
    echo '<td>' . $row['CourseID'] . '</td>';
    echo '<td>' . $row['Section_Number'] . '</td>';
    echo '<td>' . $row['Year'] . '</td>';
    echo '<td>' . $row['Semester'] . '</td>';
    echo '</tr>';
  }

  // End the table HTML
  echo '</tbody>';
  echo '</table>';
  echo '</section>';
  echo '</section>';
  echo '</section>';
  echo '</div>';

} else {
  echo 'No sections found.';
}

// Close the database connection
mysqli_close($con);
?>

    </div>
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