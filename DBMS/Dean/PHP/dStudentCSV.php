
<?php 
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["action"]) && $_POST["action"] == "upload_csv") {
    
    // Check if the uploaded file is a CSV file
  if ($_FILES["csv_file"]["type"] != "text/csv") {
        
         $updatedText="Only CSV files are allowed!...Please Download The Sample Format!!";
        echo '<script>var myText = "'.$updatedText.'"; document.getElementById("Notify").innerHTML = myText;</script>';
        exit();
  }

  $file = $_FILES["csv_file"]["tmp_name"];
  $handle = fopen($file, "r");
  $row_count = -1;
  $emp ="emp1001";
  // Loop through the CSV data and insert into the database
  while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
    if(count($data) != 6) {
        $updatedText="Invalid CSV format. Each row must have six columns.";
        echo '<script>var myText = "'.$updatedText.'"; document.getElementById("Notify").innerHTML = myText;</script>';
        exit();
    }
    $backlogID = NULL; // since it's auto-increment
    $studentID = mysqli_real_escape_string($conn, $data[0]);
    $year = mysqli_real_escape_string($conn, $data[1]);
    $semester = mysqli_real_escape_string($conn, $data[2]);
    $course = mysqli_real_escape_string($conn, $data[3]);
    $section = mysqli_real_escape_string($conn, $data[4]);
    $grade = mysqli_real_escape_string($conn, $data[5]);
    $timestamp = date("Y-m-d H:i:s");
    $Text;
    if($row_count != -1){
        $sql2 = "INSERT INTO `backlog`(`BacklogID`, `StudentIdentification`, `Semester`, `Year`, `Course`, `SectionNumber`, `ObtainedMarks`, `Timestamp`, `EmployeeID`)
        VALUES ('$backlogID', '$studentID', '$semester', '$year', '$course', '$section', '$grade','$timestamp','$emp')";    
        if (!$conn->query($sql2)) {
          $updatedText = "Error: " . $sql2 . "<br>" . $conn->error;
          echo '<script>var myText = "'.$updatedText.'"; document.getElementById("Notify").innerHTML = myText;</script>';
          exit();
      }else{
        $updatedText = "Succesfully";
          echo '<script>var myText = "'.$updatedText.'"; document.getElementById("Notify").innerHTML = myText;</script>';
      }
      
        }
        // echo '<script>var myText = "'.$Text.'"; document.getElementById("Notify").innerHTML = myText;</script>';
        $row_count=$row_count+1;
  }
  
  fclose($handle);
  $conn->close();
  $updatedText="CSV data successfully imported into the database! Number of imported row: $row_count ";
  echo '<script>var myText = "'.$updatedText.'"; document.getElementById("getText").innerHTML = myText;</script>';

}
?>


