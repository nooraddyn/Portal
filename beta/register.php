<?php
require("config.php");

$username= $_POST['username'];
$password= $_POST['password'];
$student_id= $_POST['student_id'];


  // MNU STUDENT CHECK
  $query="SELECT * FROM mnu_student WHERE (student_id ='$student_id') LIMIT 1";
  $result_set=mysqli_query($con,$query);
  $check=mysqli_num_rows($result_set);
  if ($check!= 1){ 

    $error= "Not a valid Student ID";
    echo $error;




  }else{

    // FACULTY SCIENCE CHECK
    $query="SELECT * FROM mnu_student WHERE (student_id ='$student_id') AND (faculty ='FS') LIMIT 1";
    $result_set=mysqli_query($con,$query);
    $facultycheck=mysqli_num_rows($result_set);
    if($facultycheck!= 1){

      $error="Not a Faculty Science Student";
      echo $error;

    }else{

          //INSERT STATEMENTS GOES HERE



    }




  }
  




?>