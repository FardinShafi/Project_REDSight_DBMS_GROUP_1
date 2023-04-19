<?php
include '../connection/server.php';
$query = "SELECT p.ProgramID, COUNT(s.StudentID) AS NumStudents
          FROM program p
          LEFT JOIN student s ON p.ProgramID = s.ProgramID
          GROUP BY p.ProgramID";

// execute query
$result = mysqli_query($con, $query);
// $result = $mysqli->query($query);

// check if query was successful
if (!$result) {
    echo "Failed to execute query: " . $mysqli->error;
    exit();
}

// create array to hold data
$data1 = array();
while ($row = $result->fetch_assoc()) {
    $data1[] = array("x" => $row["ProgramID"], "value" => $row["NumStudents"]);
}

$data1_json = json_encode($data1);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="chart.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.anychart.com/releases/8.7.1/js/anychart-core.min.js"></script>
    <script src="https://cdn.anychart.com/releases/8.7.1/js/anychart-radar.min.js"></script>
    <link rel="stylesheet" href="data.css">
   
</head>
<body>

    <form method="post">
        <section class="choice-container">
            <h1 style="text-align: center; color:rgb(221, 88, 88); font-size: 35px; padding-top:20px;">Semester Wise Result</h1>
            <select name="year" id="year-select">
                <option value="" disabled selected>Year</option>
                <option value="2020">2020</option>
            </select>
            <select name="semester" id="semester-select">
                <option value="" disabled selected>Semester</option>
                <option value="Spring">Spring</option>
                <option value="Summer">Summer</option>
                <option value="Autumn">Autumn</option>
            </select>
            <button id="load-btn" name="Load-Result" type="submit">Load</button>
        </section>
    </form>
    <div id="container" ></div>

<script>
  anychart.onDocumentReady(function () {

   var data1 = [
    var data3 = <?php echo $data3_json; ?>;
     {x: "SETS", value: 100},
     {x: "SBE", value: 100},
    //  {x: "SETS", value: 100},
    //  {x: "SLASS", value: 100},
    //  {x: "SPPH", value: 100},
   ];

//    var data2 = [
//       {x: "BCB", value: 95},
//      {x: "CMN", value: 49},
//      {x: "CSE", value: 53},
//      {x: "EEE", value: 60},
//      {x: "ENG", value: 60},
//      {x: "ENV", value: 92},
//      {x: "MIS", value: 33},
//      {x: "MKT", value: 76},
//      {x: "PHA", value: 59},
//      {x: "PS", value: 88},
//    ];  

//    var data3 = [
//       {x: "BBCB", value: 65},

//    ];  

   // create radar chart
   var chart = anychart.radar();

   // set chart yScale settings
   chart.yScale()
     .minimum(0)
     .maximum(180)
     .ticks({'interval':15});

    // color alternating cells
    chart.yGrid().palette(["gray 0.1", "gray 0.2"]);

    // create first series
    chart.area(data1).name('PLO').markers(true).fill("#E55934", 0.3).stroke("#E55934")
    // create second series
    chart.area(data2).name('Achived').markers(true).fill("#9BC53D", 0.3).stroke("#9BC53D")
    // create third series
    chart.area(data3).name('ToBE').markers(true).fill("#5BC0EB", 0.3).stroke("#5BC0EB")

    // set chart title
    chart.title("Program PLO")
      // set legend
      .legend(true);

    // set container id for the chart
    chart.container('container');
    // initiate chart drawing
    chart.draw();

  });

  </script>
</body>
</html>
<!-- <script>
    var data3 = <?php echo $data3_json; ?>;
</script> -->