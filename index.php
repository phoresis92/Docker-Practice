<?php
	$conn = mysqli_connect(
		'52.79.145.202',
		'root',
		'1234',
		'study_anywhere',
		'3306'
	);
	if(mysqli_connect_errno()){
		echo "Failed to connect to MySQL: ".mysqli_connect_error();
	}else{
		echo "good\n";
	}

	$sql = "SELECT VERSION()";
	$result = mysqli_query($conn, $sql);
	$row = mysqli_fetch_array($result);
	print_r($row["VERSION()"]);
	//$row["VERSION()"];
?>
