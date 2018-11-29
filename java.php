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
	<title>JAVA QUIZ</title>
	<!-- <link rel="stylesheet" href="bootstrap.min.css"> -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<style type="text/css">
	body{
		background-color: white;
	}
</style>
</head>
<body>
<div class="Container">
	<br> <h1 class="text-center text-primary">JAVA QUIZ</h1><br>
	<div class='card'>
		<h3 class="text-center card-header"> <?php echo $login_session;?> ,you have to select only one option out of four</h3><br>
	</div>
	<div class="col-lg-8 m-auto d-block">
	<!-- trying to display question now -->
	<form action="check.php" method="post">
	<?php
		for($i=401;$i<403;$i++){
		$q="select * from question where sub_id='s4' and q_id=$i";
		$query=mysqli_query($con,$q);
		while($rows=mysqli_fetch_array($query)){
			?>
			<div class="card">
				<h4 class="card-header"><?php echo $rows['question'];?> </h4>

				<?php
				$q="select * from answer where ans_id=$i";
				$query=mysqli_query($con,$q);
				while($rows=mysqli_fetch_array($query)){
					?>
					<div class="card-body">
						<input type="radio" name="quizcheck[<?php echo $rows['ans_id'];?>]" value="<?php echo $rows['aid'];?>">	
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