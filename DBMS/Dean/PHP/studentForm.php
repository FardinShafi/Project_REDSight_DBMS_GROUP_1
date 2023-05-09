<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $backlogID = NULL;
    $year = $_POST['year'];
    $semester = $_POST['semester'];
    $stdID = $_POST['studentID'];
    $course = $_POST['course'];
    $secNo = $_POST['section'];
    $time = date("Y-m-d H:i:s");
    $emp = "emp1001";
    $mark = $_POST['marks'];;
    
    $abc = "INSERT INTO backlog (`BacklogID`,`StudentIdentification`, `Semester`, `Year`, `Course`, `SectionNumber`, `ObtainedMarks`, `Timestamp`, `EmployeeID`)VALUES ('$backlogID', '$stdID', '$semester', '$year', '$course', '$secNo', '$mark','$time','$emp')";
    // $conn->query($abc);
    if ($conn->query($abc)) {
                $edit="Student id: $stdID, Record Inserted To Backlog data .";
                echo '<script>var myText = "'.$edit.'"; document.getElementById("Notify").innerHTML = myText;</script>';
                
        } else {
            $edit="Student id: $stdID, Error in inserting record: To Backlog data .";
                echo '<script>var myText = "'.$edit.'"; document.getElementById("Notify").innerHTML = myText;</script>';
        }
 /// Check Student Record To Student Table 
    $CheckStd = "SELECT * FROM `student` WHERE `StudentID`='$stdID'";
    $stdResult=$conn->query($CheckStd);
    if ($stdResult->num_rows > 0) {
        $checkSection= "SELECT * FROM `section` WHERE `CourseID`='$course' AND `SectionNumber` ='$secNo' AND `Year`='$year' AND `Semester`='$semester'";
        $checkSectionResult=$conn->query($checkSection);
        $SecID =NULL;
        if ($checkSectionResult->num_rows > 0) {
                $row = $checkSectionResult->fetch_assoc();
                $SecID= $row['SectionID'];

                $checkReg= "SELECT * FROM `registration` WHERE `StudentID`='$stdID'AND Year='$year' AND `Semester`='$semester'";
                $checkRegResult=$conn->query($checkReg);
                    if ($checkRegResult->num_rows > 0) {
                        // to do if Student Have Already registered in that semester
                            $row5 = $checkRegResult->fetch_assoc();
                            $StdRegID= $row5['RegistrationID'];
                            $SecReg =NULL;
                            
                            if(!empty($registrationID) || !empty($SecID)){
                                // to do if Student Have Already  in that Enrollment Table

                                $CheckEnollment = "SELECT * FROM `enrollment` WHERE RegistrationID = '$StdRegID'";
                                $CheckEnollmenResult = $conn->query($CheckEnollment);
                                if ($CheckEnollmenResult->num_rows > 0) {
                                    $fetchEn = $CheckEnollmenResult->fetch_assoc();
                                    $SectionRegID= $fetchEn['SecRegID'];
                                    $UpEnrollmentTable = "UPDATE `enrollment` SET `GradeMarks`='$mark', WHERE `SecRegID`='$SectionRegID'";

                                    if($conn->query($UpEnrollmentTable)){
                                    // if ($fUpEnrollResult->num_rows > 0) {
                                        $NewTxt="Updated Value $SectionRegID - GradeMarks= $mark - RegistrationID = $StdRegID - SectionID = $SecID";
                                        echo '<script>var myText = "'.$NewTxt.'"; document.getElementById("addedInfo").innerHTML = myText;</script>';
                                    }else{
                                        $updatedText=" Unable To Update  $SectionRegID on line No 56";
                                    echo '<script>var myText = "'.$updatedText.'"; document.getElementById("getText").innerHTML = myText;</script>';
                                    }
                                }else{
                                    $addEnrollment = "INSERT INTO `enrollment`(`SecRegID`, `GradeMarks`, `RegistrationID`, `SectionID`) VALUES ('$SecReg','$mark','$StdRegID','$SecID')";
                                   
                                    $SecRegIDget=NULL;
                                    if ($conn->query($addEnrollment)) {
                                    // fetching Inserted Enrollment Data
                                        $NewEnrollmentdata= "SELECT * FROM `enrollment` WHERE `RegistrationID`='$StdRegID' AND `SectionID`='$SecID' ";
                                        $fetchEnrollment= $conn->query($NewEnrollmentdata);
                                        $row3 = $fetchEnrollment->fetch_assoc();
                                        $SecRegIDget = $row3['SecRegID'];
                                        $addedMark=$row3['GradeMarks'];
                                        $addedRegID=$row3['RegistrationID'];
                                        $addedSection=$row3['SectionID'];
                                        $NewTxt="Added Value $SecRegIDget - $addedMark - $addedRegID - $addedSection";
                                        echo '<script>var myText = "'.$NewTxt.'"; document.getElementById("addedInfo").innerHTML = myText;</script>';
                                    } else{
                                        $updatedText="  Unable to Add in enrollment table On Line 77";
                                        echo '<script>var myText = "'.$updatedText.'"; document.getElementById("getText").innerHTML = myText;</script>';
                                        exit();
                                    }
                                }                             
                            }else {
                                $updatedText="  Registration or SectionID is Null On Line 83";
                                echo '<script>var myText = "'.$updatedText.'"; document.getElementById("getText").innerHTML = myText;</script>';
                                exit();
                            }
                    }else{
                        // to do if Student haven't registered in that semester
                        $regID= NULL;
                        $addReg = "INSERT INTO `registration`(`RegistrationID`, `Date`, `Semester`, `Year`, `StudentID`) VALUES ('$regID','1-Oct','$semester','$year','$stdID')";
                        $registrationID =NULL;
                        // $checkaddReg=$conn->query($addReg);
                        if ($conn->query($addReg)) {

                        // fetching Inserted REGISTRATION Data
                            $findRegID= "SELECT * FROM `registration` WHERE `Semester`= '$semester' AND `Year`= '$year'  AND `StudentID`= '$stdID'";
                            $checkaddReg=$conn->query($findRegID);
                            $row2 = $checkaddReg->fetch_assoc();
                            $registrationID = $row2['RegistrationID'];
                            $SecReg =NULL;
                            if(!empty($registrationID) || !empty($SecID)){

                                // checking If there any existing enrollment for this  Registration ID 
                                $CheckEnollment = "SELECT * FROM `enrollment` WHERE RegistrationID = '$registrationID'";
                                $CheckEnollmenResultT = $conn->query($CheckEnollment);
                                if ($CheckEnollmenResultT->num_rows > 0) {
                                    $secConf = $checkaddReg->fetch_assoc();
                                    $StdRegID = $secConf['SecRegID'];
                                    
                                    // updating the enrollment table 
                                    $UpEnrollment = "UPDATE `enrollment` SET `GradeMarks`='$mark' WHERE `SecRegID`='$StdRegID',";
                                    // $fUpEnrollResult = $conn->query($UpEnrollment);
                                    // if ($fUpEnrollResult->num_rows > 0) {
                                    if($conn->query($UpEnrollment)){    
                                        $NewTxt="Updated Value $StdRegID - GradeMarks= $mark - RegistrationID = $registrationID - SectionID = $SecID";
                                        echo '<script>var myText = "'.$NewTxt.'"; document.getElementById("addedInfo").innerHTML = myText;</script>';
                                    }else{
                                        $updatedText=" Unable To Update  $StdRegID on line No 101";
                                    echo '<script>var myText = "'.$updatedText.'"; document.getElementById("getText").innerHTML = myText;</script>';
                                    }
                                }else{
                                    $addEnrollment = "INSERT INTO `enrollment`(`SecRegID`, `GradeMarks`, `RegistrationID`, `SectionID`) VALUES ('$SecReg','$mark','$registrationID','$SecID')";
                                    // $addEnrollmentResult=$conn->query($addEnrollment);
                                    $SecRegIDget=NULL;
                                    if ($conn->query($addEnrollment)) {
                                        $NewTxt="Added Value $SecReg - $mark - $registrationID - $SecID";
                                        echo '<script>var myText = "'.$NewTxt.'"; document.getElementById("addedInfo").innerHTML = myText;</script>';
                                    } else{
                                        $updatedText="  Unable to Add in enrollment table On Line 117";
                                        echo '<script>var myText = "'.$updatedText.'"; document.getElementById("getText").innerHTML = myText;</script>';
                                        exit();
                                    }
                                } 
                                                            
                            }else {
                                $updatedText="  Registration or SectionID is Null on Line 127";
                                echo '<script>var myText = "'.$updatedText.'"; document.getElementById("getText").innerHTML = myText;</script>';
                                exit();
                            }
                                      
                        }else{
                            $updatedText=" Unable to Insert in  Registration table .";
                                    echo '<script>var myText = "'.$updatedText.'"; document.getElementById("getText").innerHTML = myText;</script>';
                                    exit();
                        }
        }
        
          }else{
            $updatedText=" Section Doest Not Exist  .";
            echo '<script>var myText = "'.$updatedText.'"; document.getElementById("getText").innerHTML = myText;</script>';
            exit();
          }
      }else{
        $updatedText=" Student Doest Not Exist  .";
            echo '<script>var myText = "'.$updatedText.'"; document.getElementById("getText").innerHTML = myText;</script>';
            exit();
      }
    // Run the SQL query to generate the table
$sql55 = "SELECT r.RegistrationID, s.SectionID, s.CourseID, c.CODistribution, 
(c.CODistribution * 
  CASE
    WHEN en.GradeMarks = 'A' THEN 0.9
    WHEN en.GradeMarks > 90 THEN .9
    WHEN en.GradeMarks > 85 THEN .85
    WHEN en.GradeMarks > 80 THEN .8
    WHEN en.GradeMarks > 75 THEN .75
    WHEN en.GradeMarks > 70 THEN .7
    WHEN en.GradeMarks > 65 THEN .67
    WHEN en.GradeMarks > 60 THEN .62
    WHEN en.GradeMarks > 55 THEN .58
    WHEN en.GradeMarks > 50 THEN .52
    WHEN en.GradeMarks > 45 THEN .49
    ELSE 0
  END) AS StudentCOAchive,
c.COPLORelationship, 
(c.COPLORelationship * 
  CASE
    WHEN en.GradeMarks = 'A' THEN 0.9
    WHEN en.GradeMarks > 90 THEN .9
    WHEN en.GradeMarks > 85 THEN .85
    WHEN en.GradeMarks > 80 THEN .8
    WHEN en.GradeMarks > 75 THEN .75
    WHEN en.GradeMarks > 70 THEN .7
    WHEN en.GradeMarks > 65 THEN .67
    WHEN en.GradeMarks > 60 THEN .62
    WHEN en.GradeMarks > 55 THEN .58
    WHEN en.GradeMarks > 50 THEN .52
    WHEN en.GradeMarks > 45 THEN .49
    ELSE 0
  END) AS StudentPLOAchive
FROM registration r
INNER JOIN enrollment en ON r.RegistrationID = en.RegistrationID
INNER JOIN section s ON en.SectionID = s.SectionID
INNER JOIN course_co_plo c ON s.CourseID = c.CourseID
WHERE r.StudentID = '$stdID'";

// $result = mysqli_query($conn, $sql55);

// Execute the SQL query and store the result in a variable
$result = mysqli_query($conn, $sql55);

// Check if any rows were returned
if (mysqli_num_rows($result) > 0) {
  // Start the table
//   $table = '<table>';
  $table = '<table style="margin: 115vh 5vh 3vh 5vw !important">';


  // Add table headers
  $table .= "<tr><th>Registration ID</th><th>Section ID</th><th>Course ID</th><th>CO Distribution</th><th>Student CO Achieve</th><th>CO-PLO Relationship</th><th>Student PLO Achieve</th></tr>";

  // Loop through the rows of the result and add them to the table
  while ($row = mysqli_fetch_assoc($result)) {
    $table .= "<tr><td>".$row["RegistrationID"]."</td><td>".$row["SectionID"]."</td><td>".$row["CourseID"]."</td><td>".$row["CODistribution"]."</td><td>".$row["StudentCOAchive"]."</td><td>".$row["COPLORelationship"]."</td><td>".$row["StudentPLOAchive"]."</td></tr>";
  }

  // End the table
  $table .= "</table>";

  // Display the table in the div tag with the id of tableLoad
  echo '<div id="tableLoad">'.$table.'</div>';
} else {
  // Display a message if no rows were returned
  echo "No results found.";
}

/// Modify work
mysqli_close($conn);
} 
// Output the HTML table to the div with the id "tableLoad"

?>  
       

      