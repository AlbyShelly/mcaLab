 <?php
$servername = "localhost";
$username = "root";
$password = "";
$db = "AKASHDB";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
$result = $conn->query("select * from users");
while($row = $result->fetch_assoc()){
  echo"Name:".$row["name"]."<br>";
  }
  $conn->close();
?> 
