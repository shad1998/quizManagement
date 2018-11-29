
<?php
   include("config.php");
   session_start();
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $myusername = mysqli_real_escape_string($db,$_POST['username']);
      $mypassword = mysqli_real_escape_string($db,$_POST['user_pwd']); 
      
      $sql = "SELECT username FROM password WHERE username = '$myusername' and user_pwd = '$mypassword'";
      $result = mysqli_query($db,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      $active = $row['active'];
      
      $count = mysqli_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1) {
         session_register("myusername");
         $_SESSION['login_user'] = $myusername;
         
         header("Location: welcome.php");
      }else {
         $error = "Your Login Name or Password is invalid";
         echo $error;
      }
   }
?>



<!DOCTYPE html>
<html>
<head>
	<title>Homepage </title>
	<link rel="icon" type=image/png href="https://quikchex.in/wp-content/uploads/2017/10/payroll-quiz.jpg">
	<!-- <link rel="stylesheet" type="text/css" href="bootstrap.css"> -->
	<link rel="stylesheet" type="text/css" href="quiz1.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<style type="text/css">
		body{
			background-color:lightsalmon;
		}
		.jumbotron{
			background-color: khaki;

		}
		
	</style>
	<!-- <script src="quiz1.js"></script> -->

</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				 <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand navbar-left" href="Quiz1.php" ><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Homepage</a>
    </div>
      <div class="nav navbar-nav">
    	<li><a href="aboutquiz.html">About</a></li>
    	<li><a href="rules.html">Rules</a></li>
    </div>
      <div class="nav navbar-nav navbar-right">
    	<!-- <li><a href="loginquiz.html">Login</a></li> -->
    	<li><form class="form-inline">
    		<form  method="post" action="">
  <!-- <div class="form-group"> -->
    <!-- <label class="sr-only" for="exampleInputusername">Username</label> -->
    <input type="text" class="form-control" id="exampleInputusername" name="username" placeholder="Username">
  <!-- </div> -->
  <!-- <div class="form-group"> -->
    <!-- <label class="sr-only" for="exampleInputPassword3">Password</label> -->
    <input type="password" class="form-control" id="exampleInputPassword3" name="user_pwd" placeholder="Password required">
  <!-- </div> -->
  <!-- <div class="checkbox">
    <label>
      <input type="checkbox"> Remember me
    </label>
  </div> -->
  <input type = "submit" value = " Submit ">
</form></li>
    	<li><a href="signupquiz.html">Signup</a></li>
    </div>

		</div>
	</nav>

	<div class="container">
		<div class="jumbotron">
			<h1><span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span><center>QUIZ FOR ALL</center></h1>
		</div>
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6"><div class="thumbnail"><img src="https://sabe.io/classes/css/hero.png"></div></div>
			<div class="col-lg-6 col-md-6 col-sm-6"><div class="thumbnail"><img src="http://www.thamizhchelvan.com/wp-content/uploads/2017/02/js-quiz.jpg"></div></div>
		</div>
		<div lcass="row">
			<div class="col-lg-6 col-md-6 col-sm-6"><div class="thumbnail"><img src="https://daveismyname.blog/assets/images/blog/tutorials/html5.png"></div></div>
			<div class="col-lg-6 col-md-6 col-sm-6"><div class="thumbnail"><img src="https://s24255.pcdn.co/wp-content/uploads/2014/05/oracle-java.jpg"></div></div>
		</div>
		</div>	

	














	

	<script src="http://code.jquery.com/jquery-3.3.1.js"></script> 
  	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
	


