<?php
    require './dbConnect.php';
//    $ses_userid = $_SESSION['ses_userid'];

    $id = $_GET['u'];
    if (isset($_POST['submit'])){
    $user_firstname = $_POST['firstName'];
    $user_lastname = $_POST['lastName'];
    $phonenumber = $_POST['phonenumber'];
    $address = $_POST['Address'];
    $email = $_POST['emailAddress'];
    $password = $_POST['NewPassword'];
    $repassword = $_POST['Re-typeNewPassword'];
    $hash = password_hash( $password, PASSWORD_DEFAULT);
    $filetemp = $_FILES['fileToUpload']['tmp_name'];
    $filename = $_FILES['fileToUpload']['name'];
    $filetype = $_FILES['fileToUpload']['type'];
    $filepath = "./images/".uniqid().".".$filename;
    $moved= move_uploaded_file($filetemp,$filepath);
    if ($password!=$repassword){
      echo "<script type='text/javascript'>alert('Password not match');</script>";
      echo "<script>window.location = 'user_profile.php#popup'</script>";
    }elseif ($user_firstname==" " || $user_firstname=="") {
      echo "<script type='text/javascript'>alert('Please fill in Firstname.');</script>";
      echo "<script>window.location = 'user_profile.php#popup'</script>";
    }elseif ($user_lastname==" " || $user_lastname=="") {
      echo "<script type='text/javascript'>alert('Please fill in Lastname. ');</script>";
      echo "<script>window.location = 'user_profile.php#popup'</script>";
    }elseif ($address==" " || $address=="") {
      echo "<script type='text/javascript'>alert('Please fill in Address. ');</script>";
      echo "<script>window.location = 'user_profile.php#popup'</script>";
    }elseif ($email==" " || $email=="") {
      echo "<script type='text/javascript'>alert('Please fill in Email');</script>";
      echo "<script>window.location = 'user_profile.php#popup'</script>";
    }elseif ($phonenumber==" " || $phonenumber=="") {
      echo "<script type='text/javascript'>alert('Please fill in Phone number');</script>";
      echo "<script>window.location = 'user_profile.php#popup'</script>";
    }elseif ($repassword==" " || $repassword=="" || $password==" " || $password==""){
      $phonenumber = "0"+$phonenumber;
      if($moved)
      {
          $filename = "images/".$filename;
          $sql = "update userprofile set user_firstname='$user_firstname' ,
          address='$address',user_lastname='$user_lastname',user_image='$filename',phonenumber=$phonenumber where user_id='$id';";
      }
      else
      {
          $sql = "update userprofile set user_firstname='$user_firstname' ,
          address='$address',user_lastname='$user_lastname',phonenumber=$phonenumber where user_id='$id';";
      }
      $result= mysqli_query($connect,$sql);
      $sql = "update user set user_email='$email' where user_id='$id';";
      $result= mysqli_query($connect,$sql);
      if ($result){
        echo "<script>window.location = 'user_profile.php?u=".$id."'</script>";
      }
      else{
        echo "asdasdsa".mysqli_error($connect);
        }

    }
  }
    else{
      $phonenumber = "0"+$phonenumber;
      if($moved)
      {
          $filename = "images/".$filename;
          $sql = "update userprofile set user_firstname='$user_firstname' ,
          address='$address',user_lastname='$user_lastname',user_image='$filename',phonenumber=$phonenumber where user_id='$id';";
      }
      else
      {
          $sql = "update userprofile set user_firstname='$user_firstname' ,
          address='$address',user_lastname='$user_lastname',phonenumber=$phonenumber where user_id='$id';";
      }
      $result= mysqli_query($connect,$sql);
      $sql = "update user set user_email='$email',user_password='$hash'where user_id='$id';";
      $result= mysqli_query($connect,$sql);
      if ($result){
        echo "<script>window.location = 'user_profile.php?u=".$id."'</script>";
      }
      else{
        echo "asdasdsa".mysqli_error($connect);
        }

    }


    if (isset($_POST['submit-frm2'])){
      $cardHolder = $_POST['cardHolder'];
      $cardNumber = $_POST['cardNumber'];
      $month_exp = $_POST['month_exp'];
      $year_exp = $_POST['year_exp'];
      $cvv = $_POST['Cardcvv'];
      if ($cardHolder=="" || $cardNumber=="" || $month_exp==""|| $year_exp==""|| $cvv==""){
        echo "<script type='text/javascript'>alert('Please fill up this form.');</script>";
        echo "<script>window.location = 'user_profile.php#frm2'</script>";
      }

      else{
      $sql1 = "update userprofile set holdername='$cardHolder',cardnumber='$cardNumber',month='$month_exp', year=$year_exp ,cvv='$cvv' where user_id = $id" ;
      $result= mysqli_query($connect,$sql1);
      if ($result){
        echo "<script>window.location = 'user_profile.php?u=".$id."'</script>";
      }
      else{
        echo "asdasdsa".mysqli_error($connect);
        }
      }
      }


?>
