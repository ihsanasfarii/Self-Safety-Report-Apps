<?php

	include 'conn.php';

	$response = array();

	$sql = mysqli_query($con, "SELECT * FROM user");
	while ($a = mysqli_fetch_array($sql)) {
		
		$key['Nama'] = $a['Nama'];
		$key['Email'] = $a['Email'];
		$key['lokasi'] = $a['lokasi'];
		array_push($response, $key);

	}

	echo json_encode($response);
?>