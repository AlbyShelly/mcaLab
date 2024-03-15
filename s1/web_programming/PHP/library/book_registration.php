<?php
	include('connect.php');
	if($_POST){
		$a_num=$_POST["a_num"];
		$title=$_POST["title"];
		$author=$_POST["author"];
		$edition=$_POST["edition"];
		$publisher=$_POST["publisher"];
		
		$sql = "INSERT INTO book_details (a_num,title,author,edition,publisher) VALUES ('$a_num', '$title', '$author','$edition','$publisher')";
	
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
		<title>Book Registration</title>
	</head>
	<body>
		<form method="post">
			<label for="a_num">Accession Number:</label>
			<input type="number" id="a_num" name="a_num"><br>
			<label for="title">Book Title:</label>
			<input type="text" id="title" name="title"><br>
			<label for="author">Author:</label>
			<input type="text" id="author" name="author"><br>
			<label for="edition">Edition:</label>
			<input type="text" id="edition" name="edition"><br>
			<label for="publisher">Publisher:</label>
			<input type="text" id="publisher" name="publisher"><br>
			<input type="submit" id="submit" name="submit"><br>
		</form>
	</body>
</html>
