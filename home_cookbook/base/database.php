<?php
$hostName = "localhost"; // adres IP bazy danych MySQL
$userName = "root"; // użytkownik bazy danych MySQL
$password = ""; // hasło do użytkownika bazy danych MySQL
$databaseName = "home_cookbook"; // nazwa bazy danych MySQL
  $conn = new mysqli($hostName, $userName, $password, $databaseName);

  // Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>