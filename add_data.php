<?php
    // Koneksi ke MySQL
    include("dbconnect.php");
    $tem = $_GET["temperature"];
    $lam = $_GET["kelembapan"];
	$SQL = "INSERT INTO datalog (temperature, kelembapan) VALUES ('$tem', '$lam')"; // SQL Query    
    // Eksekusi pernyataan SQL
	mysqli_query($dbh, $SQL);
    // Menuju file review_data.php
    header("Location: data_review.php");
?>