<?php
   require_once(__DIR__ . "/../../Includes/connection.php");
?>
<?php

require_once(__DIR__ . "/../../Includes/connection.php");
// Your SQL query
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
  WHERE AdmissionYear = '2020' AND AdmissionSemester = 'Spring' AND sc.CourseID= 'CSE104'
  GROUP BY st.StudentID
) AS subq
GROUP BY subq.CGPA";

// Execute the query
$result = $conn->query($sql);

// Create an empty array to store the data
$data = array();

// Loop through the query results and add them to the data array
if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    $data[] = $row;
  }
}

// Close the database connection
$conn->close();

// Convert the data array to JSON format
$json_data = json_encode($data);

?>

<!DOCTYPE html>
<html>
<head>
  <title>CGPA vs Number of Students</title>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
  <canvas id="myChart"></canvas>
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


