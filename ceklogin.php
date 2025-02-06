<?php
    session_start();
    include "library/config.php";

    $username = $_POST['username'];
    $password = md5($_POST['password']);

    $query = mysqli_query($con, "SELECT * FROM user WHERE username = '$username' AND password = '$password' ");
    $data = mysqli_fetch_array($query);
    
    $jml = mysqli_num_rows($query);

    if ($jml > 0) {
        $_SESSION['nama'] = $data['nama_lengkap'];
        $_SESSION['username'] = $data['username'];
        $_SESSION['password'] = $data['password'];
        $_SESSION['role'] = $data['role'];

        if($_SESSION['role']=='55'){
            header('location: index.php');
        }elseif($_SESSION['role']=='66'){
            header('location: index2.php');
        }elseif($_SESSION['role']=='88'){
            header('location: index3.php');
        }else{
            header('location: index4.php');
        }
    } else {
        echo "<p align='center'>Login Gagal!</p>";
        echo "<meta http-equiv='refresh' content='2; url=login.php'>";
    }
?>