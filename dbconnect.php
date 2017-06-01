<?php
$MyUsername = "root";  // Username MySQL
$MyPassword = "";  // Password MySQL 
$MyHostname = "localhost";	// Host
$Database = "fishfeeder";    // Nama basis data
$dbh = mysqli_connect($MyHostname,$MyUsername,$MyPassword,$Database); // Lakukan koneksi ke MySQL
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>