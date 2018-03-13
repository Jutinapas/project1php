<?php

session_start();
$ses_sesid = "";
$ses_userid = "";
$ses_username = "";
$ses_userstatus = "";
$event_id = $_GET['event'];

if (isset($_SESSION['ses_sesid']) && isset($_SESSION['ses_userid']) && isset($_SESSION['ses_username']) && isset($_SESSION['ses_status'])) {
	$ses_sesid = $_SESSION['ses_sesid'];
	$ses_userid = $_SESSION['ses_userid'];
	$ses_username = $_SESSION['ses_username'];
	$ses_userstatus = $_SESSION['ses_status'];
} if ($ses_sesid <> session_id() or $ses_username == "") {
	echo "ERROR";
} else {

	include("../home/php/connect.php");

	// $fname = $_POST['fname'];
	// $lnaem = $_POST['lname'];
	// $email = $_POST['email'];
	// $tel = $_POST['tel'];
	// $cc_num = $_POST['cc-num'];
	// $cc_name = $_POST['cc-name'];
	// $cc_exp_date = $_POST['cc-exp-date'];
	// $cc_ccv = $_POST['cc-ccv'];

	$query = "UPDATE userevent SET user_payment = 'T' WHERE user_id = '$ses_userid' AND event_id = '$event_id'";
	$conn->query($query);

	echo "<script>alert('Payment Successful')</script>";
	echo "<meta http-equiv='refresh' content='1;URL=../pro1/user-upcoming-event.html'>";

	$conn->close();
}
?>