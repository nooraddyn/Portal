<?php
// Server Details
$db_hostname='127.0.0.1';
$db_user='root';
$db_pass='';
$db_portal='student_portal';


$con=mysqli_connect("$db_hostname","$db_user","$db_pass","$db_portal");
if (!$con) {
    die("Database connection failed: " . mysql_error());
}


?>