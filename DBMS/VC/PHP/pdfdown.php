<!DOCTYPE html>
<html>
<head>
	<title>Student Data PDF Generator</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="container">
		<h1>Student Data PDF Generator</h1>
		<button id="generate-pdf-btn">Generate Student Data in PDF</button>
	</div>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#generate-pdf-btn').on('click', function() {
				window.location.href = 'generate_pdf.php';
			});
		});
	</script>
</body>
</html>
