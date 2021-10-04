<?php
	$conn = new mysqli('localhost', 'root', 'abc@123', 'apsystem');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>