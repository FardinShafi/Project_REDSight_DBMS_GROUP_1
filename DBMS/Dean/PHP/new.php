<?php
// Define table data
require_once(__DIR__ . "/../../Includes/connection.php");
$table_data = array(
    array('Name', 'Age', 'Gender'),
    array('John Doe', '32', 'Male'),
    array('Jane Smith', '27', 'Female'),
    array('Bob Johnson', '45', 'Male')
);

// Create table HTML
$table_html = '<table>';
foreach ($table_data as $row) {
    $table_html .= '<tr>';
    foreach ($row as $cell) {
        $table_html .= '<td>' . $cell . '</td>';
    }
    $table_html .= '</tr>';
}
$table_html .= '</table>';

// Output table HTML inside a div tag with ID "TableView"
echo '<div id="TableView">' . $table_html . '</div>';
?>
<!DOCTYPE html>
<html>
<head>
    <title>My Table</title>
</head>
<body>
    <div id="TableView">
        <!-- <?php include 'new.php'; ?> -->
    </div>
</body>
</html>
