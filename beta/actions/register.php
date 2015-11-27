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

    $message= "Not a valid Student ID";
    echo $message;




  }else{

    // FACULTY SCIENCE CHECK
    $query="SELECT * FROM mnu_student WHERE (student_id ='$student_id') AND (faculty ='FS') LIMIT 1";
    $result_set=mysqli_query($con,$query);
    $facultycheck=mysqli_num_rows($result_set);
    if($facultycheck!= 1){

      $message="Not a Faculty Science Student";
      echo $message;

    }else{

          //INSERT STATEMENTS GOES HERE
      $query = "INSERT INTO srs_student
      (student_id,username,password) 
      VALUES ('$student_id','$username','$password')";
      $result_set=mysqli_query($con,$query);

      $message="SRS Student Created";
      echo $message;

      header('Refresh: 0; URL=l../index.php');

  

    }




  }
  




?>