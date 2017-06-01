<?php 
    // Mulai koneksi MySQL
    include('dbconnect.php');
?>

<html>
<head>
    <!-- Judul -->
    <title>Sistem Pengelolaan Fish Feeder</title>
    <link rel="icon" type="image/png" href="img/logo.png">
    <!-- Include -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link href="css/style.css" rel="stylesheet">
    <link href="css/table.css" rel="stylesheet">
</head>

<body>
    <!-- Header -->
    <div class="header">
        <ul class="nav nav-pills pull-right">
          <li role="presentation" class="active">
            <a href="index.html">Home</a>
          </li>
        </ul>
        <h3 class="text-muted">42K4</h3>
    </div>
    <!-- Container --> 
    <div class="container">
        <div class="jumbotron">
        <h1><p style="font-size:36px">Status Akuarium</p></h1>
<?php
    // Retrieve record terbaru
    $result = mysqli_query($dbh, "SELECT * FROM datalog ORDER BY id DESC LIMIT 1");
    // Proses record dan menampilkannya
    while($row = mysqli_fetch_array($result) )
    {
        echo '<div class="well">';
        echo date("F j, Y g:i a", strtotime($row["datetime"]));
        echo '</div>';
        echo '<div class="panel panel-default">';
        echo '<div class="panel-heading">';
        echo '<h3 class="panel-title">Suhu Akuarium</h3>';
        echo '</div>';
        echo '<div class="panel-body">';
        echo $row["temperature"];
        echo ' C';
        echo '</div>';
        echo '</div>';
        echo '<div class="panel panel-default">';
        echo '<div class="panel-heading">';
        echo '<h3 class="panel-title">Kelembapan Akuarium</h3>';
        echo '</div>';
        echo '<div class="panel-body">';
        echo $row["kelembapan"];
        echo ' %';
        echo '</div>';
        echo '</div>';
        if ($row["kelembapan"] < 20.00) {
            $situasi = 'Sangat Kering.';
        }
        if ($row["kelembapan"] > 20.00 && $row["kelembapan"] <= 40.00) {
            $situasi = 'Kering.';
        }
        if ($row["kelembapan"] > 40.00 && $row["kelembapan"] <= 60.00) {
            $situasi = 'Sejuk.';
        }
        if ($row["kelembapan"] > 60.00 && $row["kelembapan"] <= 80.00) {
            $situasi = 'Lembab.';
        }
        if ($row["kelembapan"] > 80.00) {
            $situasi = 'Sangat Lembab.';
        }
        echo '<div class="panel-footer">';
        echo 'Suasana akuarium saat ini ';
        echo $situasi;
        echo '</div>';
        echo '<br>';
        echo '<div class="btn-group">';
        echo        '<a href="data_review.php"><button class="btn btn-default">Refresh</button></a>';
        echo '</div>';
        echo '</div>';

    }
?>
        </div>
    </div>
    <!-- Footer -->
    <div class="footer">
      <p>&copy; 42K4 2017</p>
    </div>
</body>

</html>