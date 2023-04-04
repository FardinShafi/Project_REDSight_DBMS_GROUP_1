<?php
include '../connection/server.php'; // conecting to the database "sprm" 
session_start(); // start the session
if (!isset($_SESSION['StudentID'])) { // check if the StudentID is set in the session
    header('Location: ../Login/index.php'); // if not, redirect to the login page
    exit(); 
}
$StudentID = $_SESSION['StudentID']; 
?>
<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">

<head>
  <meta charset="UTF-8">
  <!--<title> Responsive Sidebar Menu  | CodingLab </title>-->
  <link rel="stylesheet" href="mycourses.css">
  <!-- Boxicons CDN Link -->
  <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous"> -->
  <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.anychart.com/releases/8.7.1/js/anychart-core.min.js"></script>
  <script src="https://cdn.anychart.com/releases/8.7.1/js/anychart-radar.min.js"></script>
  <link rel="stylesheet" href="data.css">
</head>

<body>

  <div class="sidebar">
    <div class="logo-details">
      <i class='bx bxl-c-plus-plus icon'></i>
      <div class="logo_name">SPRM</div>
      <i class='bx bx-menu' id="btn"></i>
    </div>
    <ul class="nav-list">
      <li>
        <a href="student.php">
          <i class='bx bx-grid-alt'></i>
          <span class="links_name">Dashboard</span>
        </a>
        <span class="tooltip">Dashboard</span>
      </li>
      <li>
        <a href="courses.php">
          <i class='bx bx-user'></i>
          <span class="links_name">My Courses</span>
        </a>
        <span class="tooltip">My Courses</span>
      </li>
      <li>
        <a href="plo.html">
          <i class='bx bx-chat'></i>
          <span class="links_name">PLO</span>
        </a>
        <span class="tooltip">PLO</span>
      </li>
      <li>
        <a href="co.html">
          <i class='bx bx-pie-chart-alt-2'></i>
          <span class="links_name">CO</span>
        </a>
        <span class="tooltip">CO</span>
      </li>
      <li>
        <a href="#">
          <i class='bx bx-folder'></i>
          <span class="links_name">Faculty Evaluation</span>
        </a>
        <span class="tooltip">Faculty Evaluation</span>
      </li>

      <li class="profile">
        <div class="profile-details">
          <!--<img src="profile.jpg" alt="profileImg">-->
          <div class="name_job">
            <div class="name">Mahady Hasan</div>
            <div class="job">Dean</div>
          </div>
        </div>
        <i class='bx bx-log-out' id="log_out"></i>
      </li>
    </ul>
  </div>

  <!-- sprm header code -->
  <div class="SPRM">
    <div class="container">
      <div class="Title">
        <h1>SPRM
          <div class="Title__highlight"></div>
        </h1>
        <div class="Title__underline"></div>
        <div aria-hidden class="Title__filled">SPRM</div>
      </div>
    </div>
  </div>

  <!-- course table -->
  <section class="master-table" style="margin-top: 50px;">
    <section class="table">
      <section class="table_header">
        <h1 style="text-align: center; padding-right:80px ;">Courses</h1>
      </section>
      <section class="table_body">
        <table>
          <thead>
            <tr>
              <th>Serial</th>
              <th>Course Code</th>
              <th>Description</th>
              <th>Grade</th>
              <th>Outline</th>

            </tr>
          </thead>
          <tbody>
            <tr>
              <td class="number" data-label='ID'><h4 class="serial">1</h4></td>
              <td class="coursetitle" data-label='CourseTitle'>CSE101</td>
              <td class="cdescription" data-label='Description'>Lorem, ipsum dolor sit amet consectetur adipisicing
                elit. Eligendi
                consectetur et qui adipisci maiores facere?</td>
              <td class="cgrade" data-label='Grade'>A</td>
              <td class="coutline" data-label='Outline'> <button class="viewButton">View</button> </td>

            </tr>
            <tr>
              <td class="number" data-label='ID'><h4 class="serial">1</h4></td>
              <td class="coursetitle" data-label='CourseTitle'>CSE101</td>
              <td class="cdescription" data-label='Description'>Lorem, ipsum dolor sit amet consectetur adipisicing
                elit. Eligendi
                consectetur et qui adipisci maiores facere?</td>
              <td class="cgrade" data-label='Grade'>A</td>
              <td class="coutline" data-label='Outline'> <button class="viewButton">View</button> </td>

            </tr>
            <tr>
              <td class="number" data-label='ID'><h4 class="serial">1</h4></td>
              <td class="coursetitle" data-label='CourseTitle'>CSE101</td>
              <td class="cdescription" data-label='Description'>Lorem, ipsum dolor sit amet consectetur adipisicing
                elit. Eligendi
                consectetur et qui adipisci maiores facere?</td>
              <td class="cgrade" data-label='Grade'>A</td>
              <td class="coutline" data-label='Outline'> <button class="viewButton">View</button> </td>

            </tr>
            <tr>
              <td class="number" data-label='ID'><h4 class="serial">1</h4></td>
              <td class="coursetitle" data-label='CourseTitle'>CSE101</td>
              <td class="cdescription" data-label='Description'>Lorem, ipsum dolor sit amet consectetur adipisicing
                elit. Eligendi
                consectetur et qui adipisci maiores facere?</td>
              <td class="cgrade" data-label='Grade'>A</td>
              <td class="coutline" data-label='Outline'> <button class="viewButton">View</button> </td>

            </tr>
            <tr>
              <td class="number" data-label='ID'><h4 class="serial">1</h4></td>
              <td class="coursetitle" data-label='CourseTitle'>CSE101</td>
              <td class="cdescription" data-label='Description'>Lorem, ipsum dolor sit amet consectetur adipisicing
                elit. Eligendi
                consectetur et qui adipisci maiores facere?</td>
              <td class="cgrade" data-label='Grade'>A</td>
              <td class="coutline" data-label='Outline'> <button class="viewButton">View</button> </td>

            </tr>
            <tr>
              <td class="number" data-label='ID'><h4 class="serial">1</h4></td>
              <td class="coursetitle" data-label='CourseTitle'>CSE101</td>
              <td class="cdescription" data-label='Description'>Lorem, ipsum dolor sit amet consectetur adipisicing
                elit. Eligendi
                consectetur et qui adipisci maiores facere?</td>
              <td class="cgrade" data-label='Grade'>A</td>
              <td class="coutline" data-label='Outline'> <button class="viewButton">View</button> </td>

            </tr>
            <tr>
              <td class="number" data-label='ID'><h4 class="serial">1</h4></td>
              <td class="coursetitle" data-label='CourseTitle'>CSE101</td>
              <td class="cdescription" data-label='Description'>Lorem, ipsum dolor sit amet consectetur adipisicing
                elit. Eligendi
                consectetur et qui adipisci maiores facere?</td>
              <td class="cgrade" data-label='Grade'>A</td>
              <td class="coutline" data-label='Outline'> <button class="viewButton">View</button> </td>

            </tr>
            <tr>
              <td class="number" data-label='ID'><h4 class="serial">1</h4></td>
              <td class="coursetitle" data-label='CourseTitle'>CSE101</td>
              <td class="cdescription" data-label='Description'>Lorem, ipsum dolor sit amet consectetur adipisicing
                elit. Eligendi
                consectetur et qui adipisci maiores facere?</td>
              <td class="cgrade" data-label='Grade'>A</td>
              <td class="coutline" data-label='Outline'> <button class="viewButton">View</button> </td>

            </tr>
            <tr>
              <td class="number" data-label='ID'><h4 class="serial">1</h4></td>
              <td class="coursetitle" data-label='CourseTitle'>CSE101</td>
              <td class="cdescription" data-label='Description'>Lorem, ipsum dolor sit amet consectetur adipisicing
                elit. Eligendi
                consectetur et qui adipisci maiores facere?</td>
              <td class="cgrade" data-label='Grade'>A</td>
              <td class="coutline" data-label='Outline'> <button class="viewButton">View</button> </td>

            </tr>
            <tr>
              <td class="number" data-label='ID'><h4 class="serial">1</h4></td>
              <td class="coursetitle" data-label='CourseTitle'>CSE101</td>
              <td class="cdescription" data-label='Description'>Lorem, ipsum dolor sit amet consectetur adipisicing
                elit. Eligendi
                consectetur et qui adipisci maiores facere?</td>
              <td class="cgrade" data-label='Grade'>A</td>
              <td class="coutline" data-label='Outline'> <button class="viewButton">View</button> </td>

            </tr>
            <tr>
              <td class="number" data-label='ID'><h4 class="serial">1</h4></td>
              <td class="coursetitle" data-label='CourseTitle'>CSE101</td>
              <td class="cdescription" data-label='Description'>Lorem, ipsum dolor sit amet consectetur adipisicing
                elit. Eligendi
                consectetur et qui adipisci maiores facere?</td>
              <td class="cgrade" data-label='Grade'>A</td>
              <td class="coutline" data-label='Outline'> <button class="viewButton">View</button> </td>

            </tr>
            <tr>
              <td class="number" data-label='ID'><h4 class="serial">1</h4></td>
              <td class="coursetitle" data-label='CourseTitle'>CSE101</td>
              <td class="cdescription" data-label='Description'>Lorem, ipsum dolor sit amet consectetur adipisicing
                elit. Eligendi
                consectetur et qui adipisci maiores facere?</td>
              <td class="cgrade" data-label='Grade'>A</td>
              <td class="coutline" data-label='Outline'> <button class="viewButton">View</button> </td>

            </tr>
            <tr>
              <td class="number" data-label='ID'><h4 class="serial">1</h4></td>
              <td class="coursetitle" data-label='CourseTitle'>CSE101</td>
              <td class="cdescription" data-label='Description'>Lorem, ipsum dolor sit amet consectetur adipisicing
                elit. Eligendi
                consectetur et qui adipisci maiores facere?</td>
              <td class="cgrade" data-label='Grade'>A</td>
              <td class="coutline" data-label='Outline'> <button class="viewButton">View</button> </td>

            </tr>

          </tbody>
        </table>
      </section>
    </section>
  </section>

  </script>

  <script>
    let sidebar = document.querySelector(".sidebar");
    let closeBtn = document.querySelector("#btn");
    let searchBtn = document.querySelector(".bx-search");

    closeBtn.addEventListener("click", () => {
      sidebar.classList.toggle("open");
      menuBtnChange();//calling the function(optional)
    });

    searchBtn.addEventListener("click", () => { // Sidebar open when you click on the search iocn
      sidebar.classList.toggle("open");
      menuBtnChange(); //calling the function(optional)
    });

    // following are the code to change sidebar button(optional)
    function menuBtnChange() {
      if (sidebar.classList.contains("open")) {
        closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
      } else {
        closeBtn.classList.replace("bx-menu-alt-right", "bx-menu");//replacing the iocns class
      }
    }

  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
    crossorigin="anonymous"></script>
</body>

</html>