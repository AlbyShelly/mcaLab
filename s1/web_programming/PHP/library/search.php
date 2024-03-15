<?php
include('connect.php');
?>
<html>
	<head>
		<title>Search</title>
	</head>
	<body>
		<form method="post">
			<label for="search">Search:</label>
			<input type="text" id="search" name="search"><br>
			<input type="submit" name="submit" value="Search"><br>
			
			<?php
				if($_POST){
					$search=$_POST["search"];
	
					$selectqry="select * from book_details where title like '%$search%'";
					
					$row=$conn->query($selectqry);
					while($data=$row->fetch_assoc())
					{
						echo "Accession Number : ".$data["a_num"]."<br>"; 
						echo "Title : ".$data["title"]."<br>"; 
						echo "Author : ".$data["author"]."<br>"; 
						echo "Edition : ".$data["edition"]."<br>";
						echo "Publisher : ".$data["publisher"]."<br><br>";
					}
				}
			?>
		</form>
	</body>
</html>
