<?php
error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
session_start();

$conn = new mysqli("localhost", "id3724098_maftuh203", "maftuh203", "id3724098_parsial2018");
if ($conn->connect_errno) {
    echo die("Failed to connect to MySQL: " . $conn->connect_error);
}
$my_sql  = $conn->query("SELECT * FROM admin WHERE status=1");
$my_data = $my_sql->fetch_assoc();
?>