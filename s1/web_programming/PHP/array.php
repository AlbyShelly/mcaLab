<?php
	$students = array(
		"John",
		"Alice",
		"Bob",
		"Charlie",
		"Eve"
	);
	
	echo "Orginal array:\n";
	print_r($students);
	
	asort($students);
	echo "<br>Sorted array in ascending order:<br>";
	print_r($students);
	
	arsort($students);
	echo "<br>Sorted array in descending order:<br>";
	print_r($students);

?>	
