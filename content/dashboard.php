<?php
    if(!defined('INDEX')) die("");
    switch ($_SESSION['role']) {
        case '55':
            $role = "Administrator";
            break;
        case '66':
            $role = "Operator";
            break;
        case '77':
            $role = "Owner";
            break;
        default:
            $role = "User";
            break;
    }
?>

<h1>Selamat Datang di Aplikasi Manajemen Pegawai</h1>
<h3>Hai <?=$_SESSION['nama']?></h3>
<h3>Anda login sebagai <?= $role ?></h3>