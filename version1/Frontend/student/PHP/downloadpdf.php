<!DOCTYPE html>
<html>
<head>
    <title>Generate PDF</title>
</head>
<body>
    <button onclick="generatePDF()">Generate Student data in PDF</button>

    <script>
        function generatePDF() {
            // Redirect the user to the PHP script that generates the PDF file
            window.location.href = 'generate_pdf.php';
        }
    </script>
</body>
</html>
