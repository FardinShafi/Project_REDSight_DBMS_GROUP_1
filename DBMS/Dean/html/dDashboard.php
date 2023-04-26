<?php
   require_once(__DIR__ . "/../../Includes/connection.php");
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
  <link rel="stylesheet" href="../CSSFolder/dDashboard.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>
  <?php include('../html/dSidebarhtml.php') ?>
  <section class="LogoSPRM">
    <div class="sprm">SPRM</div>
    <div class="show-text-center">School of Engineering, Technology & Sciences</div> <br>
  </section>
  <section class="mainHome">
    <div class="row">
      <div class="col-md-3 mb-3">
        <div class="card bg-primary text-white h-100">
          <div class="card-body py-2">Number Of Departments:</div>
          <div class="card-body ">3</div>

        </div>
      </div>
      <div class="col-md-3 mb-3">
        <div class="card bg-warning text-dark h-100">
          <div class="card-body py-2">Total Number Of Students:</div>
          <div class="card-body ">250</div>
          <div class="card-body py-2">Students Enrolled In this Semester: </div>
          <div class="card-body ">70</div>
        </div>
      </div>
      <div class="col-md-3 mb-3">
        <div class="card bg-success text-white h-100">
          <div class="card-body py-2">Number Of courses offered in this Semester: </div>
          <div class="card-body ">95</div>

        </div>
      </div>
      <div class="col-md-3 mb-3">
        <div class="card bg-danger text-white h-100">
          <div class="card-body py-2">Number Of faculties: </div>
          <div class="card-body ">29</div>

        </div>
      </div>
    </div>
    <h1 class="show-text-center">Course Offered In this Semester</h1>
    <div class="table-container">

      <table>
        <thead>
          <tr>
            <th>Course</th>
            <th>Section</th>
            <th>Year</th>
            <th>Semester</th>
            <th>Capacity</th>
            <th>Enrolled</th>
            <th>Faculty</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>CSCI101</td>
            <td>001</td>
            <td>2022</td>
            <td>Fall</td>
            <td>40</td>
            <td>35</td>
            <td>Md.Fahad Monir</td>

          </tr>
          <tr>
            <td>CSCI102</td>
            <td>002</td>
            <td>2023</td>
            <td>Spring</td>
            <td>40</td>
            <td>35</td>
            <td>ABU Sayed</td>
          </tr>
          <tr>
            <td>CSCI201</td>
            <td>003</td>
            <td>2023</td>
            <td>Fall</td>
            <td>40</td>
            <td>35</td>
            <td>Sadita Ahmed</td>
          </tr>
          <tr>
            <td>CSCI202</td>
            <td>004</td>
            <td>2024</td>
            <td>Spring</td>
            <td>40</td>
            <td>35</td>
            <td>Noor Nobi</td>
          </tr>
          <tr>
            <td>CSCI101</td>
            <td>001</td>
            <td>2022</td>
            <td>Fall</td>
            <td>40</td>
            <td>35</td>
            <td>Md.Fahad Monir</td>

          </tr>
          <tr>
            <td>CSCI102</td>
            <td>002</td>
            <td>2023</td>
            <td>Spring</td>
            <td>40</td>
            <td>35</td>
            <td>ABU Sayed</td>
          </tr>
          <tr>
            <td>CSCI201</td>
            <td>003</td>
            <td>2023</td>
            <td>Fall</td>
            <td>40</td>
            <td>35</td>
            <td>Sadita Ahmed</td>
          </tr>
          <tr>
            <td>CSCI202</td>
            <td>004</td>
            <td>2024</td>
            <td>Spring</td>
            <td>40</td>
            <td>35</td>
            <td>Noor Nobi</td>
          </tr>
          <tr>
            <td>CSCI101</td>
            <td>001</td>
            <td>2022</td>
            <td>Fall</td>
            <td>40</td>
            <td>35</td>
            <td>Md.Fahad Monir</td>

          </tr>
          <tr>
            <td>CSCI102</td>
            <td>002</td>
            <td>2023</td>
            <td>Spring</td>
            <td>40</td>
            <td>35</td>
            <td>ABU Sayed</td>
          </tr>
          <tr>
            <td>CSCI201</td>
            <td>003</td>
            <td>2023</td>
            <td>Fall</td>
            <td>40</td>
            <td>35</td>
            <td>Sadita Ahmed</td>
          </tr>
          <tr>
            <td>CSCI202</td>
            <td>004</td>
            <td>2024</td>
            <td>Spring</td>
            <td>40</td>
            <td>35</td>
            <td>Noor Nobi</td>
          </tr>
          <tr>
            <td>CSCI101</td>
            <td>001</td>
            <td>2022</td>
            <td>Fall</td>
            <td>40</td>
            <td>35</td>
            <td>Md.Fahad Monir</td>

          </tr>
          <tr>
            <td>CSCI102</td>
            <td>002</td>
            <td>2023</td>
            <td>Spring</td>
            <td>40</td>
            <td>35</td>
            <td>ABU Sayed</td>
          </tr>
          <tr>
            <td>CSCI201</td>
            <td>003</td>
            <td>2023</td>
            <td>Fall</td>
            <td>40</td>
            <td>35</td>
            <td>Sadita Ahmed</td>
          </tr>
          <tr>
            <td>CSCI202</td>
            <td>004</td>
            <td>2024</td>
            <td>Spring</td>
            <td>40</td>
            <td>35</td>
            <td>Noor Nobi</td>
          </tr>
        </tbody>
      </table>
    </div>
  </section>




  <script src="../JSFolder/script.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>

</html>