<!DOCYTPE html>
<html>
<head>
	<link type="text/css" rel="stylesheet" href="login.css"/>
  <script src="http://code.jquery.com/jquery-latest.js"></script>
  <script>


  </script>


</head>
<body>
<div class="container">

<!-- LOGIN DIV -->
<div class="placeholder">
<p> LOGIN </p>

  <form class="form" action="login.php" method="POST">
    <input type="text" placeholder="Username">
    <input type="password" placeholder="Password">
    <button type="submit" id="login-button">Login</button>  
  </form>

<p>Error Placeholder</p>

</div>
<!--END LOGIN DIV-->
<!--REGISTRATION-->
<div class="placeholder">

<p>REGISTRATION</p>

 <form class="form" action="actions/register.php" method="POST">
    Student ID:
    <input type="text" placeholder="Student ID" name="student_id" required>
    Username:
    <input type="text" placeholder="Username" name="username" required>
    Password:
    <input type="password" placeholder="Password" name="password" required>
    <button type="submit" id="login-button">Register</button>  
  </form>

</div>

<!--END REGISTRATION-->


<!-- EDIT PROFILE -->

<div class="placeholder">

<p>EDIT PROFILE </p>

<p> Firstname: Banana </p>
<p> Lastname: Bunch </p>


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

<p>ENROLL </p>

You are eligible for the following subjects. 

 <form class="form1" action="login.php" method="POST">
                        <input type="checkbox" name="c" value="C" />C <br />
                        <input type="checkbox" name="java" value="Java" />Java<br />
                        <input type="checkbox" name="Swift" value="Swift" />Swift<br />
                  
  </form>


<p> EXISTING ENROLLMENTS </p>
<p> Photoshop  <a href="baba">Cancel</a> <br>
 Illustrator  <a href="baba">Cancel</a></p>

</div>

<!--END  ENROLL-->





</div>



</body>
</html>