<?php 
        require_once(__DIR__ . "/../../Includes/connection.php");
        include('../PHP/studentForm.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../CSSFolder/dSidebar.css">
    <link rel="stylesheet" href="../CSSFolder/mainHome.css">
    <link rel="stylesheet" href="../CSSFolder/stdForm.css">

</head>

<body>
<?php include('dSidebarhtml.php') ?>
    <section class="LogoSPRM">
        <div class="sprm">SPRM</div>

    </section>
    <section class="mainHome">

        <div class="csvForm">
            <form method="POST" >
                <label class="header">Student Data Form</label> <br> <br>
                <input type="text" name="studentID" placeholder="Student ID" require>
                <input type="text" name="year" placeholder="Educational year" require>
                <input type="text" name="semester" placeholder="Educational semester" require>
                <input type="text" name="course" placeholder="Course" require>
                <input type="text" name="section" placeholder="Section No" require>
                <input type="text" name="marks" placeholder="Obtain Marks" require>
                <button type="submit"> Submit</button>

            </form>
        </div>
        <div class="status">
            <h1 id="Notify">
           </h1>
            <h1 id="getText"></h1>
            <h1 id="addedInfo"></h1>
        </div>
    </section>
    <script src="../JSFolder/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>


</body>

</html>
