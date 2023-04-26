<?php
// connect to the database
$conn = mysqli_connect("127.0.0.1:3307", "root", "", "testgpt");

// check if form has been submitted
if (isset($_POST['submit'])) {
	// get the values from the form
	$examIDs = $_POST['examID'];
	$questionIDs = $_POST['questionID'];
	$markss = $_POST['marks'];
	$cos = $_POST['co'];

	// loop through the values and insert into the database
	for ($i=0; $i<count($examIDs); $i++) {
		$examID = mysqli_real_escape_string($conn, $examIDs[$i]);
		$questionID = mysqli_real_escape_string($conn, $questionIDs[$i]);
		$marks = mysqli_real_escape_string($conn, $markss[$i]);
		$co = mysqli_real_escape_string($conn, $cos[$i]);

		// check if any of the values are empty
		if ($examID != '' && $questionID != '' && $marks != '' && $co != '') {
			$sql = "INSERT INTO exam (examID, questionID, marks, co) VALUES ('$examID', '$questionID', '$marks', '$co')";
			mysqli_query($conn, $sql);
		}
	}

	// redirect to the table page
	header("Location: table.php");
	exit();
}
?>
