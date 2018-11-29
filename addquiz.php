<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname="quizdb";

$con = new mysqli($servername, $username, $password, $dbname);


if ($con->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

   if(isset($_POST['submit']))
   {
   		if(isset($_POST['new_q'])){ $new_q = mysqli_real_escape_string($con,$_POST['new_q']); }
   		if(isset($_POST['new_a1'])){ $o1 = mysqli_real_escape_string($con,$_POST['new_a1']); }
   		if(isset($_POST['new_a2'])){ $o2 = mysqli_real_escape_string($con,$_POST['new_a2']); }
   		if(isset($_POST['new_a3'])){ $o3 = mysqli_real_escape_string($con,$_POST['new_a3']); }
   		if(isset($_POST['new_a4'])){ $o4 = mysqli_real_escape_string($con,$_POST['new_a4']); }
   		if(isset($_POST['correct'])){ $corr_aid = mysqli_real_escape_string($con,$_POST['correct']); }
   		if(isset($_POST['subject'])){ $subject = mysqli_real_escape_string($con,$_POST['subject']); }
   		
   		{

	   		$query="SELECT * from question where sub_id= '$subject'";
			$query1=mysqli_query($con,$query);
			
			/*if(mysqli_query($con, $query))
			{
				echo "query succesful";
			}*/
			$q = mysqli_num_rows($query1);
			//$q1 = mysqli_fetch_array($query1);

			$aid=0;
			$new_qid=0;
			$new_aid1=0;
			$new_aid2=0;
			$new_aid3=0;
			$new_aid4=0;
			if($subject =='s1'){
				$new_qid=(int)$q + 1 + 100;
				$new_aid1=(int)$q * 4 + 1 + 1000;
				$new_aid2 = (int)$new_aid1 + 1;
				$new_aid3 = (int)$new_aid2 + 1;
				$new_aid4 = (int)$new_aid3 + 1;

				if($corr_aid=='1'){$aid=(int)$new_aid1;}
				if($corr_aid=='2'){$aid=(int)$new_aid2;}
				if($corr_aid=='3'){$aid=(int)$new_aid3;}
				if($corr_aid=='4'){$aid=(int)$new_aid4;}
				
			}
			if($subject =='s2'){
				$new_qid=(int)$q + 1 + 200;
				$new_aid1=(int)$q * 4 + 1 + 2000;
				$new_aid2 = (int)$new_aid1 + 1;
				$new_aid3 = (int)$new_aid2 + 1;
				$new_aid4 = (int)$new_aid3 + 1;

				if($corr_aid=='1'){$aid=(int)$new_aid1;}
				if($corr_aid=='2'){$aid=(int)$new_aid2;}
				if($corr_aid=='3'){$aid=(int)$new_aid3;}
				if($corr_aid=='4'){$aid=(int)$new_aid4;}
			}
			if($subject =='s3'){
				$new_qid=(int)$q + 1 + 300;
				$new_aid1 = (int)$q * 4 + 1 + 3000;
				$new_aid2 = (int)$new_aid1 + 1;
				$new_aid3 = (int)$new_aid2 + 1;
				$new_aid4 = (int)$new_aid3 + 1;

				if($corr_aid=='1'){$aid=(int)$new_aid1;}
				if($corr_aid=='2'){$aid=(int)$new_aid2;}
				if($corr_aid=='3'){$aid=(int)$new_aid3;}
				if($corr_aid=='4'){$aid=(int)$new_aid4;}
			}
			if($subject =='s4'){
				$new_qid=(int)$q + 1 + 400;
				$new_aid1 =(int)$q * 4 + 1 + 4000;
				$new_aid2 = (int)$new_aid1 + 1;
				$new_aid3 = (int)$new_aid2 + 1;
				$new_aid4 = (int)$new_aid3 + 1;

				if($corr_aid=='1'){$aid=(int)$new_aid1;}
				if($corr_aid=='2'){$aid=(int)$new_aid2;}
				if($corr_aid=='3'){$aid=(int)$new_aid3;}
				if($corr_aid=='4'){$aid=(int)$new_aid4;}
			}

			//echo $aid;
		  $insert_query = "INSERT INTO question (`sub_id`,`q_id`, `question`, `ans_id` ) values ('$subject',$new_qid,'$new_q',$aid)";

			$insert_a1= " INSERT INTO answer ( `ans_id`,`aid`,`answer` ) values ($new_qid, $new_aid1, '$o1' )";
			$insert_a2= " INSERT INTO answer ( `ans_id`,`aid`,`answer` ) values ($new_qid, $new_aid2, '$o2' )";
			$insert_a3= " INSERT INTO answer ( `ans_id`,`aid`,`answer` ) values ($new_qid, $new_aid3, '$o3' )";
			$insert_a4= " INSERT INTO answer ( `ans_id`,`aid`,`answer` ) values ($new_qid, $new_aid4, '$o4' )";


			if(mysqli_query($con, $insert_query))
			{
				echo "Question added succesful";
			}
			if(mysqli_query($con, $insert_a1))
			{
				echo "A1 added succesful";
			}
			if(mysqli_query($con, $insert_a2))
			{
				echo "A2 added succesful";
			}
			if(mysqli_query($con, $insert_a3))
			{
				echo "A3 added succesful";
			}
			if(mysqli_query($con, $insert_a4))
			{
				echo "A4 added succesful";
			}
			else
			{
				echo "error";
			}
		}

   }


 ?>

 <!DOCTYPE html>
 <html>
 <head>
 	<title>Add Questions</title>
 	<link rel="stylesheet" href="bootstrap.min.css">
 	<style type="text/css">
 	body{
 		background-image: url("sol.jpg");
 		background-repeat: no-repeat;
 		background-size: cover;
 	}
 	.abc{
 		color:red;
 	}
 </style>
 </head>
 <body>

<div class="container">
	<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-header">
             
      <a class="navbar-brand navbar-left" href="homelog.php" ><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Homepage</a>
    </div>
 </nav>
	<!-- <div class="jumbotron"> -->
 	<form method="post">
 		<br><br><br><br><label for="new_q" class="abc">Enter the question:</label>
		<input name="new_q" id="new_q" type="text" placeholder="New question" size="100"><br><br>

		<label for="new_a1" class="abc">Enter Option 1:</label>
		<input name="new_a1"  id="new_a1" type="text" placeholder="Option 1"><br>

		<label for="new_a2" class="abc">Enter Option 2:</label>
		<input name="new_a2"  id="new_a2" type="text" placeholder="Option 2"><br>

		<label for="new_a3" class="abc">Enter Option 3:</label>
		<input name="new_a3" c id="new_a3" type="text" placeholder="Option 3"><br>

		<label for="new_a4" class="abc">Enter Option 4:</label>
		<input name="new_a4"   id="new_a4" type="text" placeholder="Option 4"><br><br>

		<label for="correct" class="abc">Correct answer:</label>
		<select name="correct" id="correct" >

			<option value= "1">option 1</option>
			<option value= "2">option 2</option>
			<option value= "3">option 3</option>
			<option value= "4">option 4</option>
		</select>
			<br>

		<p class="abc"> Select the subject for inserting 
		<select name="subject">

        <option value="s1">CSS</option>
        <option value="s3">HTML</option>
        <option value="s2">JavaScript</option>
        <option value="s4">JQuery</option>
		</select></p><br>

		<input name="submit" value="submit" type="submit" class="btn btn-success m-auto d-block">

 	</form>
 <!-- </div> -->
</div>


 
 </body>
 </html>