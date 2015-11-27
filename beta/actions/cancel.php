<?php
require("config.php");

$student_id = $_POST['student_id'];


      $query = "DELETE FROM enrolment WHERE student_id='$student_id'";
      $result_set=mysqli_query($con,$query);

      $message="Enrollments Cancelled Succcessfully";
      echo $message;
              header('Refresh:0;URL=../index.php');






?>