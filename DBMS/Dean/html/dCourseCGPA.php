<?php 
  require_once(__DIR__ . "/../../Includes/connection.php");
//   include('../PHP/dCourseCGPAchart.php'); 

?>
<?php
require_once(__DIR__ . "/../../Includes/connection.php");
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $year = $_POST['year'];
    $semester = $_POST['semester'];
    $course = $_POST['course'];

$sql = "SELECT 
subq.CGPA,
COUNT(subq.StudentID) AS num_students
FROM (
SELECT 
  st.StudentID,
  ROUND(
    SUM(
      CASE 
        WHEN en.GradeMarks > 90 THEN 4.0
        WHEN en.GradeMarks > 85 THEN 3.7
        WHEN en.GradeMarks > 80 THEN 3.3
        WHEN en.GradeMarks > 75 THEN 3.0
        WHEN en.GradeMarks > 70 THEN 2.7
        WHEN en.GradeMarks > 65 THEN 2.3
        WHEN en.GradeMarks > 60 THEN 2.0
        WHEN en.GradeMarks > 55 THEN 1.7
        WHEN en.GradeMarks > 50 THEN 1.3
        WHEN en.GradeMarks > 45 THEN 1.0
        ELSE 0
      END
    ) / COUNT(*) 
    , 2
  ) AS CGPA
FROM student st 
JOIN registration r ON r.StudentID = st.StudentID 
JOIN enrollment en ON en.RegistrationID = r.RegistrationID
JOIN section sc ON sc.SectionID = en.SectionID
WHERE AdmissionYear = 'year' AND AdmissionSemester = 'semester' AND sc.CourseID= 'course'
GROUP BY st.StudentID
) AS subq
GROUP BY subq.CGPA";



$data = array();
$result = $conn->query($sql);
if (!$result) {
    die('Query failed: ' . $conn->error);
}
else if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    $data[] = $row;
  }
}

$conn->close();

$json_data = json_encode($data);
}

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
    <link rel="stylesheet" href="../CSSFolder/courseTrend.css">
    <link rel="stylesheet" href="../CSSFolder/searchbarFrom.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <!-- <link rel="stylesheet" href="../CSSFolder/dEnrollment.css"> -->
</head>

<body>
    <?php include('dSidebarhtml.php') ?>
    <section class="LogoSPRM">
        <div class="sprm">SPRM</div>
        <div class="searchDiv">
            <div class="searchDiv">
                <form method="POST">
                    <p>Course ID:</p>
                    <input type="text" name="course" placeholder="Ex: CSC101">
                    <p>Year:</p>
                    <select name="year">
                        <option value="2020" selected>2020</option>
                        <!-- <option value="2021">2021</option> -->
                    </select>
                    <p>Semester:</p>
                    <select name="semester">
                        <option value="Spring" selected>Spring</option>
                        <option value="Summer">Summer</option>
                        <option value="Autumn">Autumn</option>

                    </select>
                    <button type="submit"><img src="../img/search.png" alt="S"></button>
                </form>
            </div>
    </section>
    <section class="mainHome">
        <h2 class="show-text-center"> Course trend</h2>
        <canvas id="linechart" class="pieChart" width="400" height="400"
            style="margin-left:33vw; background-color:#E4E9F7!important;"></canvas>
    </section>
    <script src="../JSFolder/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <script>
      // Parse the JSON data
      var data = <?php echo $json_data; ?>;
      // Get the canvas element
      var canvas = document.getElementById("myChart");
      // Create a new chart
      var chart = new Chart(canvas, {
        type: "line",
        data: {
          labels: data.map(obj => obj.CGPA),
          datasets: [{
            data: data.map(obj => obj.num_students),
            label: "Number of Students",
            backgroundColor: "rgba(54, 162, 235, 0.2)",
            borderColor: "rgba(54, 162, 235, 1)",
            borderWidth: 1
          }]
        },
        options: {
          scales: {
            xAxes: [{
              scaleLabel: {
                display: true,
                labelString: "CGPA"
              }
            }],
            yAxes: [{
              ticks: {
                beginAtZero: true,
                precision: 0
              },
              scaleLabel: {
                display: true,
                labelString: "Number of Students"
              }
            }]
          }
        }
      });
    </script>
</body>


</html>
