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
<html>
<head>
    <title>Student Course</title>
    <link rel="stylesheet" href="test.css">
</head>
<body>
<?php
    
    include '../connection/server.php'; // conecting to the database "sprm" 
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
        echo '<div class="courseTable-container">';
        echo "<table class='courseTable'>";
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
                echo "<td>N/A</td>"; /* show N/A if no grade */
            }
            echo "</tr>";
        }
        echo "</tbody>";
        echo "</table>";
        echo '</div>';
    } else {
        echo "No courses found for student ID $student_id";
    }

    mysqli_close($con);
?>

</body>
</html>
