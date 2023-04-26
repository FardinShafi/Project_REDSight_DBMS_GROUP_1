<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../CSSFolder/dSidebar.css">
    <link rel="stylesheet" href="../CSSFolder/mainHome.css">
    <link rel="stylesheet" href="../CSSFolder/dCsv.css">

</head>

<body>
    <?php include('dSidebarhtml.php') ?>
    <section class="LogoSPRM">
        <div class="sprm">SPRM</div>

    </section>
    <section class="mainHome">

        <div class="csvForm">
            <form method="POST" enctype="multipart/form-data">
                <label class="header">Upload CSV File</label> <br> <br>
                <label class="txt" for="csv_file">Sample Format: </label>
                <a href='../CSV/grade.csv' ; download="grade.csv"> Click to Download</a>
                <br>
                <label class="txt" for="csv_file">Select CSV file to upload:</label> <br>
                <input type="file" name="csv_file" id="csv_file">
                <input type="hidden" name="action" value="upload_csv">
                <br><br>
                <button type="submit"> Submit</button>

            </form>
        </div>
        <div class="status">
            <h1 id="Notify">
           
           </h1>
            <h1 id="getText">
           
            </h1>
            
        </div>
    </section>
    <script src="../JSFolder/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
 

</body>

</html>



<?php 
require_once(__DIR__ . "/../../Includes/connection.php");
include('../PHP/dStudentCSV.php'); 

?>