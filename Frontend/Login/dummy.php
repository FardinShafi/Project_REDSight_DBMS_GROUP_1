<?php
// Connect to the database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sprm";

$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

// Select all the tables from the database
$sql = "SHOW TABLES FROM $dbname";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  // Generate HTML table with table names
  echo "<table>";
  echo "<tr><th>Table Name</th></tr>";
  while($row = mysqli_fetch_assoc($result)) {
    echo "<tr><td>" . $row["Tables_in_$dbname"] . "</td></tr>";
  }
  echo "</table>";
} else {
  echo "No tables found in database.";
}

mysqli_close($conn);
?>
