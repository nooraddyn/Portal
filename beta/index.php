<!DOCYTPE html>
<html>
<head>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>

   $(document).ready(function(e) {   

        var limit = 4;
$('input.subject_checkbox').change(function() {
  

    if($(this).siblings(':checked').length >= limit) {

       this.checked = false;


   }


});











 });




  </script>

	<link type="text/css" rel="stylesheet" href="login.css"/>






  <?php

  require("actions/config.php");
      session_start();

       if(!isset($_SESSION['username'])){ 
header('Refresh: 0; URL=login.php');
exit();}


    $username=$_SESSION['username'];
    $student_id=$_SESSION['student_id'];



    ?>

</head>
<body>
<div class="container">

<!-- EDIT PROFILE -->

<div class="placeholder">

<p>EDIT PROFILE </p>

<?php 
  echo "You have been logged in as " .$username;

?>

 <form class="form" action="login.php" method="POST">
    Change Password
    <input type="password" placeholder="Password">
    <input type="password" placeholder="Confirm Password">
    <button type="submit" id="login-button">Save</button>  
  </form>

</div>

<!--END EDIT PROFILE-->





<!-- ENROLL DIV -->

<div class="placeholder">

<?php

 $query="SELECT * FROM enrolment INNER JOIN subjects ON enrolment.subject_id=subjects.subject_id WHERE (student_id ='$student_id')";
  $result_set=mysqli_query($con,$query);
  $check=mysqli_num_rows($result_set);
  if ($check>= 1){ 
    printf("You are already Enrolled to the following subjects<br>");
    while($row = mysqli_fetch_array($result_set, MYSQLI_ASSOC)){
      $enrolled_subjects[] = $row;
    }
    foreach($enrolled_subjects as $b){
      printf ("<br>"."%s",$b["name"]);

    }
    printf('<form class="cancel" action="actions/cancel.php" method="POST">');
    printf('<input type="hidden" name="student_id" value="'.$student_id.'">');
    printf(' <input type="submit" id="cancel_button" name="cancel_button" value="Cancel & Reneroll to Other Subjects"></form>');


  }else{


  printf("<p>ENROLL </p>");
  printf('You are eligible for 4 of the following subjects.');
  printf(' <form class="form1" action="actions/enroll.php" method="POST">');
  printf('<input type="hidden" name="student_id" value="'.$student_id.'">');


 $query="SELECT subjects.subject_id, subjects.name FROM subjects
INNER JOIN subjects_studied ON subjects_studied.subject_id = subjects.prerequisite
UNION
SELECT subjects.subject_id, subjects.name FROM subjects 
    LEFT JOIN subjects_studied ON subjects.subject_id=subjects_studied.subject_id
    LEFT JOIN srs_student ON subjects_studied.student_id=srs_student.student_id
  WHERE srs_student.username != '$username' OR srs_student.username IS NULL  
  AND subjects.prerequisite='0' ";
    $result = mysqli_query($con, $query);
    while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
      $eligible_subjects[] = $row;
    }
      foreach($eligible_subjects as $b){

                printf ( "<input type=".'"checkbox"'.'class="'.'subject_checkbox"'.'name="'.'subject_list[]"'.'value="'.'%s"'."/>"."%s".'<br>' , $b["subject_id"], $b["name"]);

    }
      printf('<input type="submit" id="enroll_button" name="enroll_button" value="ENROLL"></form>');


  }






        
      ?>
      





<p> History </p>
 <?php

    $query="SELECT * FROM subjects_studied 
    INNER JOIN subjects ON subjects_studied.subject_id=subjects.subject_id
    INNER JOIN srs_student ON subjects_studied.student_id=srs_student.student_id
    WHERE (srs_student.username='$username')
    ";
    $result = mysqli_query($con, $query);
    while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
      $student_have_subjects[] = $row;
    }
      foreach($student_have_subjects as $b){

                printf ( '"%s"'."<br>", $b["name"]);
    }




 ?>

 <a href="actions/logout.php">
Log out</a>


</div>

<!--END  ENROLL-->





</div>




</body>
</html>