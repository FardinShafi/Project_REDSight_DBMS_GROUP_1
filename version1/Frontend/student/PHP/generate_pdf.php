<?php
require_once 'dompdf/vendor/autoload.php'; // Include the Dompdf autoload file

// Get the data from the database
require_once(__DIR__ . "/../../Includes/connection.php");

$sql = "SELECT * FROM student";
$result = mysqli_query($conn, $sql);

// Create PDF document
$dompdf = new Dompdf\Dompdf();

$html = "<table><thead><tr><th>Student ID</th><th>First Name</th><th>Last Name</th><th>Password</th></tr></thead><tbody>";
while ($row = mysqli_fetch_assoc($result)) {
    $html .= "<tr><td>".$row["StudentID"]."</td><td>".$row["First_Name"]."</td><td>".$row["Last_Name"]."</td><td>".$row["Password"]."</td></tr>";
}
$html .= "</tbody></table>";

$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'landscape');
$dompdf->render();

// Output generated PDF to browser
$dompdf->stream('student_data.pdf');
?>