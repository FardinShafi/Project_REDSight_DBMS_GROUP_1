<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $backlogID = NULL;
    $year = $_POST['year'];
    $semester = $_POST['semester'];
    $stdID = $_POST['studentID'];;
    $course = $_POST['course'];;
    $secNo = $_POST['section'];;
    $time = date("Y-m-d H:i:s");;
    $emp = 4052;
    $mark = $_POST['marks'];;
    
    $sql = "INSERT INTO backlog (`BacklogID`,`StudentIdentification`, `Semester`, `Year`, `Course`, `SectionNumber`, `ObtainedMarks`, `Timestamp`, `EmployeeID`)
    VALUES ('$backlogID', '$stdID', '$semester', '$year', '$course', '$secNo', '$mark','$time','$emp')";;
    $conn->query($sql);
    if($conn->query($sql)){
        $updatedText="$stdID  added to the backlog table  ";
        echo '<script>var myText = "'.$updatedText.'"; document.getElementById("getText").innerHTML = myText;</script>';
    }else{
        $updatedText="Error! $stdID  unable to  add in backlog table  ";
        echo '<script>var myText = "'.$updatedText.'"; document.getElementById("getText").innerHTML = myText;</script>';
    }
}
?>