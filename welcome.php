<?php
   include('session.php');
?>
<!DOCTYPE html>
<html>
   
   <head>
      <title>Welcome </title>
      <link rel="stylesheet" href="bootstrap.min.css">
      <style type="text/css">
      	body{
      		margin: 0;
         	padding: 0;
      		/*background: url("https://wallpapertag.com/wallpaper/full/0/2/0/316813-most-popular-website-backgrounds-1920x1080-for-ipad.jpg");*/
      		background-size: cover;
        	background-position: center;
        	font-family: sans-serif;
        	background-repeat: no-repeat;
        	height: 100%;
      	}
      	.jumbotron{
      		background-color: darkolivegreen;
      	}
      	.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
      </style>

   </head>
   
   <body>
   	<div class="jumbotron">
      <center><h1>Welcome <?php echo $login_session; ?></h1></center> 
      <p><h2><a class="btn btn-danger" href = "logout.php">Sign Out</a></h2></p>
    </div>
    <h2><center>Get ready to check your knowledge</center></h2>
    <center>
    <div class="dropdown">
  <button class="dropbtn">Subjects</button>
  <div class="dropdown-content">
    <a href="css.php">CSS</a>
    <a href="js.php">Javascript</a>
    <a href="html.php">HTML</a>
    <a href="jq.php">Jquery</a>
  </div>
</div>
</center>

      
   </body>
   
</html>