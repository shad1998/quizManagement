<?php
   include('session.php');
?>

<?php
$con=mysqli_connect('localhost','root');
mysqli_select_db($con,'quizdb');

if(isset($_POST['submit'])){
	if(!empty($_POST['quizcheck'])){
		$count=count($_POST['quizcheck']);
		//echo "Out of 20, you have attempted ".$count." questions";
		$result=0;
		$i=301;
		$selected=$_POST['quizcheck'];
		 //print_r($selected);
		 

		$q="select * from question where sub_id='s3'";
		$query=mysqli_query($con,$q);
		$total=mysqli_num_rows($query);
		$total=$total+300;

		while($rows=mysqli_fetch_array($query) and $i<=$total){
			@$checked=$rows['ans_id']==$selected[$i];

			if($checked){
				$result++;
			}
			$i++;
		}
		//echo "<br>your score is ".$result;
	}
}


$name=$login_session;
$total1=$total-300;
$final="insert into result(username,total,correct,sub_id) values('$name','$total1','$result','s3')";
$queryresult=mysqli_query($con,$final);

?>
<html>
<head>
	<title>YOUR RESULT !!</title>
	<link rel="stylesheet" href="bootstrap.min.css">
	<style type="text/css">
	body{
		background-color: beige;
	}
	.jumbotron{
		background-color:orange;
	}
	.blinking{
    animation:blinkingText 0.8s infinite;
}
@keyframes blinkingText{
    0%{     color: #000;    }
    49%{    color: transparent; }
    50%{    color: transparent; }
    99%{    color:transparent;  }
    100%{   color: #000;    }
</style>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-header">
      	 <a class="navbar-brand navbar-left" href="welcome.php" ><span class="glyphicon glyphicon-flash" aria-hidden="true"></span> Go To Welcome Page</a>
    </div>
 </nav>
	<div class="container">
		<div class="jumbotron">
			<h1><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span><center>
				<h3> <?php echo "Out of ".$total1.", you have attempted ".$count." questions";?></h3>
				<h3> <?php echo "YOUR SCORE IS ".$result;?></h3>	
			</center></h1>
		
	</div>
	<h2 class="blinking"><center>ANSWER KEY</center></h2>

<?php
		$q="select * from question where sub_id='s3'";
		$query=mysqli_query($con,$q);
		$total=mysqli_num_rows($query);
		$total=$total+300;
		for($i=301;$i<=$total;$i++){
		$q="select * from question where  q_id=$i";
		$query=mysqli_query($con,$q);
		while($rows=mysqli_fetch_array($query)){
			?>
			<div class="card">
				<h4 class="card-header bg-info text-white"><?php echo ($i%300).". " ?><?php echo  $rows['question'];?> </h4>

				<?php
				$q="select * from answer where aid=$rows[ans_id]";

				$query=mysqli_query($con,$q);

				
				
				

				while($rows=mysqli_fetch_array($query)){
					?>
					<div class="card-body">
						<?php 
							@$q2="select * from answer where aid=$selected[$i]";


								$query2=mysqli_query($con,$q2);
						while(@$rows2=mysqli_fetch_array($query2)){
							?>
							<?php

								if(strcmp($rows2['answer'],$rows['answer'])==0)
									echo "<font color='#556B2F'>\nYOU ARE CORRECT</font>";
								else
									echo "<font color='red'>\nWRONG ANSWER</font>";
							echo"<br>";
							 echo"You have selected: ".$rows2['answer'];


							?><br>
							<?php 
						}

						?>
						<?php echo"Correct Answer is: " .$rows['answer'];?>

					

					</div>	

				


			
				

		<?php	
	}


}
		}

	?>





</div>
</div>

</body>
</html>
