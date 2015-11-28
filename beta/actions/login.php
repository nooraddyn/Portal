<?php
require("config.php");

$username= $_POST['username'];
$password= $_POST['password'];

 

  // MNU STUDENT CHECK
  $query="SELECT * FROM srs_student WHERE (username ='$username') LIMIT 1";
  $result_set=mysqli_query($con,$query);
  $check=mysqli_num_rows($result_set);
  if ($check!= 1){ 

    $message= "Not a valid SRS Student Username";
    echo $message;
     header('Refresh:1;URL=../login.php');



  }else{

     //ATTEMPTS CHECK
    $row = mysqli_fetch_assoc($result_set);
    $login_attempts=$row['login_attempts'];

    $query="SELECT * FROM srs_student WHERE (password ='$password') LIMIT 1";
    $result_set=mysqli_query($con,$query);
    $password_check=mysqli_num_rows($result_set);

    if($login_attempts==3){
      $message=" Your account has been locked";
      echo $message;

    }else if($password_check!= 1){ 

        $message= "You have entered a wrong password,".$login_attempts." times. Redirecting to Log In...";
        echo $message;
        header('Refresh:1;URL=../login.php');


          $query="UPDATE srs_student SET login_attempts = login_attempts + 1 WHERE username = '$username'";
          $result_set=mysqli_query($con,$query);


      }else{
        $message="You have successfully logged in";
        echo $message;
        $query="SELECT student_id FROM srs_student WHERE (username ='$username') LIMIT 1";
        $result_set=mysqli_query($con,$query);
        $row = mysqli_fetch_assoc($result_set);
        $student_id=$row['student_id'];

        session_start();
        $_SESSION['username']=$username;
        $_SESSION['student_id']=$student_id;

        header('Refresh:0;URL=../index.php');

      }





  }
  




?>