<?php
session_start(); //เปิด session
$ses_sesid = "";
$ses_userid = "";
$ses_username = "";
$ses_userstatus ="";
if(isset($_SESSION['ses_sesid']) && isset($_SESSION['ses_userid']) && isset($_SESSION['ses_username']) && isset($_SESSION['ses_status'])){
    $ses_sesid = $_SESSION['ses_sesid'];
    $ses_userid =$_SESSION['ses_userid'];
    $ses_username = $_SESSION['ses_username'];
    $ses_userstatus = $_SESSION['ses_status'];
}

if($ses_sesid <> session_id() or $ses_userstatus !="organizers"){

}
else{

include("../home/php/connect.php"); 


$organizer_id = $ses_userid;

if ($_POST['request'] === 'requesting') {

	$query = "SELECT userevent.user_id, user.user_email, userevent.event_id, event_detail.event_name, userevent.user_status FROM (userevent INNER JOIN event_detail) INNER JOIN user ON event_detail.event_id = userevent.event_id WHERE event_detail.user_id = '$organizer_id' and userevent.user_id = user.user_id ORDER BY event_id ASC, userevent.user_status DESC";
	$result = $conn->query($query);
	if ($result->num_rows > 0) {
        $event_id = "0";
    	while($row = $result->fetch_assoc()) {
            if ($row['event_id'] != $event_id) {
                $count = 1;
                if ($event_id != 0) {
                    echo "  </tbody>
                    </table>
                    <div class='text-right'>
                        <button type='button' style='margin-right: 10px' class='btn btn-success' id='accept-btn-".$event_id."'><h5>Accept</h5></button>
                        <button type='button' class='btn btn-danger' id='decline-btn-".$event_id."'><h5>Decline</h5></button>
                    </div></div>";
                }
                echo "<div style='margin: 20px; padding: 20px;' class='container bg-light border'><a class='text-dark' href='../event/showEvent.html?event=".$row['event_id']."'><h2>".$row['event_name']."</h2>"."</a>
                <table class='table table-hover text-center'>
                    <thead>
                        <tr>
                            <th></th>
                            <th>E-mail</th>
                            <th>Status</th>
                            <th><input type='checkbox' style='width: 20px; height: 20px;' class='select-all' id='select-all-".$row['event_id']."'><label for='select-all-'".$row['event_id'].">Select All</label></th>
                        </tr>
                    </thread>
                    <tbody>";
                $event_id = $row['event_id'];
            }
            $id = $row['event_id'].'-'.$row['user_id'];
            echo "<tr class='select-row' id='select-row-".$id."'>
                    <td><b>".$count."</b></td>
                    <td><a class='text-info' href='../profile/user_profile.php?u=".$row['user_id']."'><b>".$row['user_email']."</b></a></td>
                    <td id='status-".$id."'>";
                    if ($row['user_status'] == 'W') {
                        echo "<b class='text-primary'>WAITING</b>";
                    } else if ($row['user_status'] == 'A') {
                        echo "<b class='text-success'>ACEEPTED</b>";
                    } else if ($row['user_status'] == 'D' ) {
                        echo "<b class='text-danger'>DECLINED</b>";
                    }
                        echo "</td>
                            <td id='checkbox-cell-".$id."'>";
                    if ($row['user_status'] == 'W') {
                        echo "<input style='width: 20px; height: 20px;' type='checkbox' class='select-".$row['event_id']."' name='select-".$row['event_id']."' value='select-".$id."' id='select-".$id."'>";
                    }
                        echo "</td>
                  </tr>";
    	    $count++;
        }
        echo "  </tbody>
            </table>
            <div class='text-right'>
                <button type='button' style='margin-right: 10px' class='btn btn-success' id='accept-btn-".$event_id."'><h5>Accept</h5></button>
                <button type='button' class='btn btn-danger' id='decline-btn-".$event_id."'><h5>Decline</h5></button>
            </div></div>";
	} else {
    	echo "<p class='text-center display-4'>No New Applying Request</p>";
    }


} else {

    foreach ($_POST['selectedId'] as $id) {
        $arr = explode('-', $id);
        $event_id = $arr[0];
        $user_id = $arr[1];

        echo $user_id, $event_id;

        if ($_POST['isAccept'] === 'yes') {
        $query = "UPDATE userevent SET user_status = 'A' WHERE user_id = '$user_id' and event_id = '$event_id'";
        } else {
        $query = "UPDATE userevent SET user_status = 'D' WHERE user_id = '$user_id' and event_id = '$event_id'";
        }
        $conn->query($query);
    }

    // sendMail();

}
$conn->close();
}

function sendMail($src, $src_name, $dest, $dest_name, $subject, $text) {
    date_default_timezone_set('Asia/Bangkok');
    require 'PHPMailer/PHPMailerAutoload.php';

    $mail = new PHPMailer;
    $mail->isSMTP();
    $mail->SMTPDebug = 0;
    $mail->Debugoutput = 'html';
    $mail->Host = "smtp.gmail.com";
    $mail->Port = 587;
    $mail->SMTPSecure = 'tls';
    $mail->SMTPAuth = true;
    $mail->Username = "jutinapas.webmaster@gmail.com";
    $mail->Password = "22440044";
    $mail->setFrom($src, $src_name);
    $mail->addAddress($dest, $dest_name);
    $mail->Subject = $subject;
    $mail->msgHTML($text);
    if (!$mail->send()) {
        echo '<script>alert("Mailer Error: "'.'$mail->ErrorInfo'.')';
    } else {
        echo '<script>alert("Mail Sended!")';
    }

}
