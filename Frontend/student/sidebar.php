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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Semester wise result</title>
	  <link rel="stylesheet" href="sidebar.css">
	
</head>
<body>
	<div class="courseRelated">
		<div class="semesterCourse">
			<div class="container">
				<h3>Semester wise result</h3>
					<div class="selects">
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
							<button id="load-btn">Load</button>
					</div>
				<table>
					<thead>
						<tr>
							<th>Course ID</th>
							<th>Course Name</th>
							<th>Grade</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>C001</td>
							<td>Introduction to Computer Science</td>
							<td>A</td>
						</tr>
						<tr>
							<td>C002</td>
							<td>Web Development</td>
							<td>B+</td>
						</tr>
						<tr>
							<td>C003</td>
							<td>Database Management</td>
							<td>A-</td>
						</tr>
						<tr>
							<td>C004</td>
							<td>Data Structures and Algorithms</td>
						

					<td>A</td>
					</tr>
					</tbody>
        		</table>
      		</div>
		</div>
	</div>
	<div>
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
                echo "<td>Z</td>"; /* show N/A if no grade */
            }
            echo "</tr>";
        }
        echo "</tbody>";
        echo "</table>";
        echo '</div>';
    } else {
        echo "No courses found for student ID $student_id";
    }

    // mysqli_close($con);
?>
	</div>
    <?php
// Connect to the database


// Query the database to retrieve the sections that match the filter
$sql = "SELECT `CourseID`, `Section_Number`, `Year`, `Semester` FROM `section` WHERE `Year`='2020' AND `Semester`='Autumn'";
$result = mysqli_query($con, $sql);
// Check if any rows were returned
if (mysqli_num_rows($result) > 0) {
  // Start the table HTML
  echo '<div class="table-container">';
  echo '<table class="tbody">';
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
    if ($count % 2 == 0) {
      echo '<tr class="even">';
    } else {
      echo '<tr class="odd">';
    }
    echo '<td>' . $row['CourseID'] . '</td>';
    echo '<td>' . $row['Section_Number'] . '</td>';
    echo '<td>' . $row['Year'] . '</td>';
    echo '<td>' . $row['Semester'] . '</td>';
    echo '</tr>';
  }

  // End the table HTML
  echo '</tbody>';
  echo '</table>';
  echo '</div>';
} else {
  echo 'No sections found.';
}

// Close the database connection
mysqli_close($con);
?>
	
      
</body>
</html>