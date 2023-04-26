 <!-- Importing html files From html/dEnrollhtml.php -->
<?php include('../html/dEnrollhtml.php') ?>
<!-- Fetching Data From Database -->
<?php
// include 'PROJECT_REDSIGHT/SPRM/Includes/connection.php';
require_once(__DIR__ . "/../../Includes/connection.php");
// SQL query to get the number of students enrolled in each school
$sql = "SELECT s.schoolID, COUNT(*) AS num_students FROM student st 
    JOIN program p ON st.ProgramID = p.ProgramID 
    JOIN department d ON p.DepartmentID = d.DepartmentID 
    JOIN school s ON d.SchoolID = s.SchoolID 
    GROUP BY s.SchoolID";


$result = mysqli_query($conn, $sql);
$schools = array();
$numStudents = array();

// Loop through the query results and add the data to the arrays
while ($row = mysqli_fetch_assoc($result)) {
    if (!empty($row['schoolID']) && !empty($row['num_students'])) {
        array_push($schools, $row['schoolID']);
        array_push($numStudents, $row['num_students']);
    }
}
// Log the arrays to the console
echo "<script>console.log(" . json_encode($schools) . ");</script>";
echo "<script>console.log(" . json_encode($numStudents) . ");</script>";

// SQL query to get the number of students enrolled in each Department

$sql2 = "SELECT d.DepartmentID , COUNT(*) AS studentNo FROM student st 
JOIN program p ON st.ProgramID = p.ProgramID 
JOIN department d ON p.DepartmentID = d.DepartmentID 
GROUP BY d.DepartmentID  ";


$deptResult = mysqli_query($conn, $sql2);
$department = array();
$deptStd = array();
while ($row2 = mysqli_fetch_assoc($deptResult)) {
    if (!empty($row2['DepartmentID']) && !empty($row2['studentNo'])) {
        array_push($department, $row2['DepartmentID']);
        array_push($deptStd, $row2['studentNo']);
        
    }
}

echo "<script>console.log(" . json_encode($department) . ");</script>";
echo "<script>console.log(" . json_encode($deptStd) . ");</script>";

// SQL query to get the number of students enrolled in each Program
$sql3= "SELECT  p.ProgramID   , COUNT(*) AS totalStudent FROM student st 
JOIN program p ON st.ProgramID = p.ProgramID 
GROUP BY  p.ProgramID ";

$programResult = mysqli_query($conn, $sql3);
// if ($programResult->num_rows > 0) { 
//     echo "It Returns Row";

//     }    
//  else {
    
//     echo "Empty ";
// }
$program = array();
$totalstd = array();

while ($row3 = mysqli_fetch_assoc($programResult)) {
    if (!empty($row3['ProgramID']) && !empty($row3['totalStudent'])) {
        array_push($program, $row3['ProgramID']);
        array_push($totalstd, $row3['totalStudent']);
    }
}
echo "<script>console.log(" . json_encode($program) . ");</script>";
echo "<script>console.log(" . json_encode($totalstd) . ");</script>";
mysqli_close($conn);
// Debug statements to check the contents of the arrays
// var_dump($schools);
// var_dump($numStudents);
// Print the values of the arrays
// echo "<pre>";
// echo "Schools: ";
// print_r($schools);
// echo "Number of Students: ";
// print_r($numStudents);
// echo "</pre>";
echo "<script>

var ctx = document.getElementById('piechart').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'radar',
    data: {
        labels: " . json_encode($schools) . ",
        datasets: [{
            label: 'Number of Students',
            data: " . json_encode($numStudents) . ",
            backgroundColor: 'rgba(255, 0, 0, 0.2)',
            borderColor: 'rgba(0, 255, 0, 1)',
            borderWidth: 2
        }]
    },
    options: {
        responsive: false,
        maintainAspectRatio: false,
        height: 400,
        width: 400,
        scale: {
            angleLines: {
                color: 'rgba(255, 215, 100, 1)'
            },
            gridLines: {
                color: 'rgba(255, 215, 100, 1)'
            },
            ticks: {
                beginAtZero: true
            }
           
        }
    }
});


</script>";
echo "<script>

var dept = document.getElementById('Deptchart').getContext('2d');
var myChart = new Chart(dept, {
    type: 'radar',
    data: {
        labels: " . json_encode($department) . ",
        datasets: [{
            label: 'Total Students',
            data: " . json_encode($deptStd) . ",
            backgroundColor: 'rgba(255, 0, 0, 0.2)',
            borderColor: 'rgba(0, 255, 0, 1)',
            borderWidth: 2
        }]
    },
    options: {
        responsive: false,
        maintainAspectRatio: false,
        height: 400,
        width: 400,
        scale: {
            angleLines: {
                color: 'rgba(255, 215, 100, 1)'
            },
            gridLines: {
                color: 'rgba(255, 215, 100, 1)'
            },
            ticks: {
                beginAtZero: true,
                max: 50
            }
        }
    }
    
});
</script>";

echo "<script>

var dept = document.getElementById('Programchart').getContext('2d');
var myChart = new Chart(dept, {
    type: 'radar',
    data: {
        labels: " . json_encode($program) . ",
        datasets: [{
            label: 'Total Students',
            data: " . json_encode($totalstd) . ",
            backgroundColor: 'rgba(255, 0, 0, 0.2)',
            borderColor: 'rgba(0, 255, 0, 1)',
            borderWidth: 2
        }]
    },
    options: {
        responsive: false,
        maintainAspectRatio: false,
        height: 400,
        width: 400,
        scale: {
            angleLines: {
                color: 'rgba(255, 215, 100, 1)'
            },
            gridLines: {
                color: 'rgba(255, 215, 100, 1)'
            },
            ticks: {
                beginAtZero: true,
                max: 50
            }
        }
    }
    
});
</script>";
?>