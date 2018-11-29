<?php
$con=mysqli_connect('localhost','root');
mysqli_select_db($con,'quizdb');
?>
<?php
   include('session.php');
?>










<!DOCTYPE html>
<html>
<head>
	<title>CSS QUIZ</title>
	<!-- <link rel="stylesheet" href="bootstrap.min.css"> -->
	<link rel="stylesheet" href="bootstrap.css">
	<style type="text/css">
	body{
		/*background-color: yellowgreen;*/
		background-image: url("c.jpeg");
	}
	/*.card-body{
		background-color:moccasin;
	}*/
	.navbar{
		background-color: #5f4c4c;
		background-repeat: no-repeat;
	}
	.card-body:hover{
		color:red;
	}
</style>
</head>
<body>
	
<div class="Container">
	<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-header">
      	 <a class="navbar-brand navbar-left" href="welcome.php" ><span class="glyphicon glyphicon-flash" aria-hidden="true"></span> Go To Welcome Page</a>
    </div>
 </nav>

	<br> <h1 class="text-center text-primary">CSS QUIZ</h1><br>
	<div class='card'>
		<h3 class="text-center card-header "> <?php echo $login_session;?> ,you have to select only one option out of four</h3><br>
	</div>
	<div class="col-lg-8 m-auto d-block">
	<!-- trying to display question now -->
	<form action="check.php" method="post">
	<?php
		$q2="SELECT * from question where sub_id='s1'";
		$query2=mysqli_query($con,$q2);
		$total=mysqli_num_rows($query2);
		$total=$total+100;
		for($i=101;$i<=$total;$i++){
		$q="select * from question where  q_id=$i";
		$query=mysqli_query($con,$q);
		while($rows=mysqli_fetch_array($query)){
			?>
			<div class="card">
				<h4 class="card-header bg-primary text-white"><?php echo ($i%100).". " ?><?php echo  $rows['question'];?> </h4>

				<?php
				$q="select * from answer where ans_id=$i";
				$query=mysqli_query($con,$q);
				while($rows=mysqli_fetch_array($query)){
					?>
					<div class="card-body">
						<input type="radio"  name="quizcheck[<?php echo $rows['ans_id'];?>]" value="<?php echo $rows['aid'];?>">	
						<?php echo $rows['answer'];?>

					</div>	

				


			
				

		<?php	
	}
}
		}

	?>

	<br><input type="submit" name="submit" value="Submit" class="btn btn-success m-auto d-block">
</form>
</div>
</div>
</div>
</body>
</html>