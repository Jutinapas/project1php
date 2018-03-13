<?php

session_start();
$ses_sesid = "";
$ses_userid = "";
$ses_username = "";
$ses_userstatus = "";

if (isset($_SESSION['ses_sesid']) && isset($_SESSION['ses_userid']) && isset($_SESSION['ses_username']) && isset($_SESSION['ses_status'])) {
	$ses_sesid = $_SESSION['ses_sesid'];
	$ses_userid = $_SESSION['ses_userid'];
	$ses_username = $_SESSION['ses_username'];
	$ses_userstatus = $_SESSION['ses_status'];
} if ($ses_sesid <> session_id() or $ses_username == "") {
	echo "ERROR";
} else {
	include("../home/php/connect.php");

	$query = "SELECT * FROM userprofile WHERE user_id = '$ses_userid'";
	$result = $conn->query($query);
	if ($result->num_rows > 0) {
		$row = $result->fetch_assoc();

		$arr = array();
		$arr['fname'] = $row['user_firstname'];
		$arr['lname'] = $row['user_lastname'];
		$arr['tel'] = $row['phonenumber'];
		$arr['cc-num'] = $row['cardnumber'];
		if ($row['month'] == '' || $row['year'] == '') {
			$arr['cc-exp-date'] = '';
		} else {
			$arr['cc-exp-date'] = $row['month']."/".$row['year'];
		}
		$arr['cc-ccv'] = $row['cvv'];
			
		$query = "SELECT user_email FROM user WHERE user_id = '$ses_userid'";
		$result = $conn->query($query);
		$row = $result->fetch_assoc();

		$arr['email'] = $row['user_email'];
		
		echo json_encode($arr);
	}

	$conn->close();
}