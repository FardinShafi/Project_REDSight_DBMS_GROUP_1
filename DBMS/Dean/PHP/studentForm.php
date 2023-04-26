<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $backlogID = NULL;
    $year = $_POST['year'];
    $semester = $_POST['semester'];
    $stdID = $_POST['studentID'];
    $course = $_POST['course'];
    $secNo = $_POST['section'];
    $time = date("Y-m-d H:i:s");
    $emp = 4052;
    $mark = $_POST['marks'];;
    
    $abc = "INSERT INTO backlog (`BacklogID`,`StudentIdentification`, `Semester`, `Year`, `Course`, `SectionNumber`, `ObtainedMarks`, `Timestamp`, `EmployeeID`)
    VALUES ('$backlogID', '$stdID', '$semester', '$year', '$course', '$secNo', '$mark','$time','$emp')";;

    if($conn->query($abc)){
        $updatedText="$stdID  added to the backlog table  ";
        echo '<script>var myText = "'.$updatedText.'"; document.getElementById("getText").innerHTML = myText;</script>';
    }else{
        $updatedText="Error! $stdID  unable to  add in backlog table  ";
        echo '<script>var myText = "'.$updatedText.'"; document.getElementById("getText").innerHTML = myText;</script>';
    }
    

    /// Modify work
    $CheckStd = "SELECT * FROM `student` WHERE `StudentID`='$stdID'"
    $stdResult=$conn->query($CheckStd);
    if ($stdResult->num_rows > 0) {
        $checkSection= "SELECT * FROM `section` WHERE `CourseID`='$course'AND `Year`='$year' AND `Semester`='$semester'"
        $checkSectionResult=$conn->query($checkSection);
        $SecID =NULL;
        if ($checkSectionResult->num_rows > 0) {
                $row = $checkSectionResult->fetch_assoc();
                $SecID= $row['SectionID'];

                $checkReg= "SELECT * FROM `registration` WHERE `StudentID`='$stdID'AND Year='$year' AND `Semester`='$semester'"
                $checkRegResult=$conn->query($checkReg);
                    if ($checkRegResult->num_rows > 0) {
                        // to do
                    }else{
                        $regID= NULL;
                        $addReg = "INSERT INTO `registration`(`RegistrationID`, `Date`, `Semester`, `Year`, `StudentID`) VALUES ('$regID','1-Oct','$semester','$year','$stdID')"
                        $registrationID =NULL;
                        $checkaddReg=$conn->query($addReg);
                        if ($checkaddReg->num_rows > 0) {
                            $row2 = $checkaddReg->fetch_assoc();
                            $registrationID = $row2['RegistrationID'];
                            $SecReg =NULL;
                            if(!empty($registrationID) || !empty($SecID)){
                                $addEnrollment = "INSERT INTO `enrollment`(`SecRegID`, `GradeMarks`, `RegistrationID`, `SectionID`) VALUES ('$SecReg','$mark','$registrationID','$SecID')"
                                $addEnrollmentResult=$conn->query($addEnrollment);
                                $SecRegIDget=NULL;
                                if ($addEnrollmentResult->num_rows > 0) {
                                    $row3 = $checkRegResult->fetch_assoc();
                                    $SecRegIDget = $row3['SecRegID'];
                                    $addedMark=$row3['GradeMarks'];
                                    $addedRegID=$row3['RegistrationID'];
                                    $addedSection=$row3['SectionID'];
                                    $NewTxt="Added Value $SecRegIDget - $addedMark - $addedRegID - $addedSection";
                                    echo '<script>var myText = "'.$NewTxt.'"; document.getElementById("addedInfo").innerHTML = myText;</script>';
                                } else{
                                    $updatedText="  Unable to Add in enrollment table";
                            echo '<script>var myText = "'.$updatedText.'"; document.getElementById("getText").innerHTML = myText;</script>';
                            exit();
                                }
                                                     
                        }else {
                            $updatedText="  Registration or SectionID is Null.";
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
}  

      /// Modify work

?>