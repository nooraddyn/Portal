<?php
require("config.php");

$subject_list= $_POST['subject_list'];
$student_id = $_POST['student_id'];

foreach($subject_list as $subject_id){

      $query = "INSERT INTO enrolment
      (student_id,subject_id) 
      VALUES ('$student_id','$subject_id')";
      $result_set=mysqli_query($con,$query);


}

$message="Enrolled Successfully";
echo $message;
        header('Refresh:0;URL=../index.php');




?>