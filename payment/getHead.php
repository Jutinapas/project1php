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

    if($ses_sesid <> session_id() or $ses_username ==""){
        echo "<button class='btn btn-success' id='myBtn'>Sign in / Sign up</button>";
        echo "<script>
        var btn = document.getElementById('myBtn');
        var modal = document.getElementById('myModal');
        
        btn.onclick = function() {
            modal.style.display = 'block';
        }</script>";
    }

    else if ($ses_userstatus =="user"){
        echo "
            <div class='dropdown'>
                <button type='button' class='btn btn-primary dropdown-toggle' data-toggle='dropdown'>
                    $ses_username
                </button>
                <div class='dropdown-menu'>
                <a class='dropdown-item' href='../profile/user_profile.php?u=" . $ses_userid ."'>Profile</a>
                <a class='dropdown-item' href='../pro1/user-upcoming-event.html'>Up Coming Event</a>
                <a class='dropdown-item' href='../pro1/user-event.html'>Previous Event</a>
                <a class='dropdown-item' href='../home/php/logout.php'>Log Out</a>
                </div>
            </div>";
    }
    else if ($ses_userstatus =="organizers"){
        echo "
            <div class='dropdown'>
                <button type='button' class='btn btn-primary dropdown-toggle' data-toggle='dropdown'>
                    $ses_username
                </button>
                <div class='dropdown-menu'>
                <a class='dropdown-item' href='../profile/user_profile.php?u=" . $ses_userid ."'>Profile</a>
                <a class='dropdown-item' href='event_confirmation.html'>manage Page</a>
                <a class='dropdown-item' href='../event/createEvent.html'>Create Event</a>
                <a class='dropdown-item' href='../pro1/organizer-upcoming-event.html'>Up Coming Event</a>
                <a class='dropdown-item' href='../pro1/organizer-event.html'>Previous Event</a>
                <a class='dropdown-item' href='../home/php/logout.php'>Log Out</a>
                </div>
            </div>";
    }
    else if ($ses_userstatus =="admin"){
        echo "
            <div class='dropdown'>
                <button type='button' class='btn btn-primary dropdown-toggle' data-toggle='dropdown'>
                    $ses_username
                </button>
                <div class='dropdown-menu'>
                    <a class='dropdown-item' href='../admin/admin-dashboard.html'>manage Page</a>
                    <a class='dropdown-item' href='../home/php/logout.php'>Log Out</a>
                </div>
            </div>";
    }

?>
