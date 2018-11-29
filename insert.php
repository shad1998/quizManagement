<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname="quizdb";

$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$name=mysqli_real_escape_string($conn, $_POST['name']);
$username=mysqli_real_escape_string($conn, $_POST['username']);
$user_pwd=mysqli_real_escape_string($conn, $_POST['user_pwd']);
$user_email=mysqli_real_escape_string($conn, $_POST['user_email']);


$sql1="insert into user values('$username', '$user_email' ,'$name','$user_pwd')";
// $sql2="insert into password values('$username', '$user_pwd')";

if($conn->query($sql1)===TRUE){
	//echo "record successfully added";
	header("Location:login.php");
}
else{
	echo"error";
}
$conn->close();
?>