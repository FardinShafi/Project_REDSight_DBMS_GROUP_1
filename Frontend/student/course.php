<!DOCTYPE html>
<html>
<head>
  <title>Section Table</title>
  <link rel="stylesheet" href="course.css">
</head>
<body>
<?php
// Connect to the database
// conecting to the database "sprm" 
include '../connection/server.php';
// Query the database to retrieve the sections that match the filter
$sql = "SELECT CourseID, Section_Number, Year, Semester FROM section WHERE Year='2020' AND Semester='Spring'";
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
