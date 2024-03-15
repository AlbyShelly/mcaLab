<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
	$db="AKASHDB";

	// Create connection
	$conn = new mysqli($servername, $username, $password,$db);

	// Check connection
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}
	//echo "Connected successfully";
?>
<html>
	<head>
		<title>Book Registration</title>
	</head>
	<body>
		<form method="post">
			<label for="name">Name:</label>
			<input type="text" id="name" name="name"><br>
			<label for="Date">Date:</label>
			<input type="date" id="date" name="date"><br>
			<label for="from">From:</label>
			<input type="text" id="from" name="from"><br>
			<label for="to">To:</label>
			<input type="text" id="to" name="to"><br>
			<input type="submit" id="submit" name="submit"><br>
		</form>
		<?php
	if($_POST){
		$name=$_POST["name"];
		$date=$_POST["date"];
		$to=$_POST["to"];
		$from=$_POST["from"];
		
		$sql = "INSERT INTO airline (name,airline_date,airline_to,airline_from) VALUES ('$name', '$date', '$to','$from')";
	
	if (mysqli_query($conn, $sql)) {
  	echo "Airline reserved<br>";
  		echo "Name : ".$name."<br>" ;
		echo "Date : ".$date."<br>";
		echo "From : ".$from."<br>";
		echo "To : ".$to."<br>";
	} else {
	  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
	
}
?>
	</body>
</html>

