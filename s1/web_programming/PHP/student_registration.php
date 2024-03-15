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

if($_POST){
	$name=$_POST["name"];
	$email=$_POST["email"];
	$mobile=$_POST["mobile"];
	$place=$_POST["place"];
	$rollno=$_POST["rollno"];
	$dept=$_POST["dept"];
	
	$sql = "INSERT INTO student (name,email,mobile,place,rollno,dept) VALUES ('$name', '$email', '$mobile','$place','$rollno','$dept')";

if (mysqli_query($conn, $sql)) {
	?>
  <script>
  	alert("Data Inserted");
  </script>
  	<?php
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
}
?>
<html>
	<head>
		<title>Registration</title>
	</head>
	<body>
		<form method="post">
			<label for="name">Name:</label>
			<input type="text" id="name" name="name"><br>
			<label for="name">Email:</label>
			<input type="email" id="email" name="email"><br>
			<label for="mobile">Mobile:</label>
			<input type="number" id="mobile" name="mobile"><br>
			<label for="place">Place:</label>
			<input type="text" id="place" name="place"><br>
			<label for="name">Roll No:</label>
			<input type="number" id="rollno" name="rollno"><br>
			<label for="dept">Department:</label>
			<select name="dept" id="dept">
				<option>---Select---</option>
				<option value="mca">MCA</option>
				<option value="cse">BTech CSE</option>
				<option value="mech">BTech MECH</option>
				<option value="civil">BTech CIVIL</option>
				<option value="eee">BTech EEE</option>
				<option value="ece">BTech ECE</option>
			</select><br>
			<input type="submit" name="submit" value="submit"><br>
		</form>
		<table border="1">
			<tr>
				<th>Roll No</th>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Place</th>
				<th>Department</th>
			</tr>
			<?php
				$selectqry="select * from student";
				  $row=$conn->query($selectqry);
				  while($data=$row->fetch_assoc())
				  {
			?>
			<tr>
				<td><?php echo $data["rollno"]; ?></td>
				<td><?php echo $data["name"]; ?></td>
				<td><?php echo $data["email"]; ?></td>
				<td><?php echo $data["mobile"]; ?></td>
				<td><?php echo $data["place"]; ?></td>
				<td><?php echo $data["dept"]; ?></td>
			</tr>
			<?php
			}
			?>
		</table
	</body>
</html>
