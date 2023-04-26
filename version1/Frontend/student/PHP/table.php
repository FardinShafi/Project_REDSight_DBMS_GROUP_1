<?php
$conn = mysqli_connect("127.0.0.1:3307", "root", "", "testgpt");
?>
<html>
<head>
	<title>Exam Table</title>
</head>
<body>
	<form method="POST" action="insert_data.php">
		<table>
			<tr>
				<th>Exam ID</th>
				<th>Question ID</th>
				<th>Marks</th>
				<th>CO</th>
			</tr>
			<?php
			for ($i=1; $i<=6; $i++) {
				echo "<tr>";
				echo "<td><input type='text' name='examID[]'></td>";
				echo "<td><input type='text' name='questionID[]'></td>";
				echo "<td><input type='text' name='marks[]'></td>";
				echo "<td><input type='text' name='co[]'></td>";
				echo "</tr>";
			}
			?>
		</table>
		<input type="submit" name="submit" value="Submit">
	</form>
</body>
</html>
