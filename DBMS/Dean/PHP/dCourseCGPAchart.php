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
  WHERE AdmissionYear = $year AND AdmissionSemester = $semester AND sc.CourseID= $course
  GROUP BY st.StudentID
) AS subq
GROUP BY subq.CGPA";

$result = $conn->query($sql);


$data = array();

if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    $data[] = $row;
  }
}

$conn->close();

$json_data = json_encode($data);
}
?>