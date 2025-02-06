<?php
if(!defined('INDEX')) die();
// echo "<pre>";
// var_dump($_POST);
// echo "</pre>";

$id = $_POST['id'];
$namabarang = $_POST['nama-barang'];
$kategori = $_POST['kategori'];



// $foto   = $_FILES['foto']['name'];
// $lokasi = $_FILES['foto']['tmp_name'];
// $tipe   = $_FILES['foto']['type'];
// $ukuran = $_FILES['foto']['size'];

// $id         = $_POST['id'];
// $nama       = $_POST['nama'];
// $jk         = $_POST['jk'];
// $tgl        = $_POST['tanggal'];
// $id_jabatan = $_POST['jabatan'];
// $ket        = $_POST['keterangan'];

// $error = "";


    $query  = "UPDATE barang SET ";
    $query .= "nama = '$namabarang', ";
    $query .= "id_kategori = '$kategori' ";

    $query .= "WHERE id_barang = '$id'";

    $result = mysqli_query($con,$query);
    $hasil = mysqli_affected_rows($con);
    var_dump($hasil);
 
// } else {
//     if($tipe != "image/jpeg" and $tipe != "image/jpg" and $tipe != "image/png"){
//         $error = "Maaf, tipe file tidak didukung!";
//     } elseif($ukuran >= 1000000){
//         echo $ukuran;
//         $error = "Ukuran file terlalu besar (lebih dari 1 MB)!";
//     } else {

//         // Menghapus foto sebelumnya
//         $query = "SELECT * FROM pegawai WHERE id_pegawai ='$id'";
//         $result = mysqli_query($con,$query);
//         $data = mysqli_fetch_assoc($result);
        
//         if(file_exists("images/$data[foto]")){
//             unlink("images/$data[foto]");
//         }

//         move_uploaded_file($lokasi,"images/".$foto);

//         $query  = "UPDATE pegawai SET ";
//         $query .= "foto = '$foto', ";
//         $query .= "nama_pegawai = '$nama', ";
//         $query .= "jenis_kelamin = '$jk', ";
//         $query .= "tgl_lahir = '$tgl', ";
//         $query .= "id_jabatan = '$id_jabatan', ";
//         $query .= "keterangan = '$ket'";
//         $query .= "WHERE id_pegawai = '$id'";
    
//         $result = mysqli_query($con,$query);
//     }
// }
if ($hasil > 0){
    echo "barang berhasil diperbaharui!";
    echo "<meta http-equiv='refresh' content='2; url=?hal=barang'>";
} else{
    echo "Tidak ada data yang diperbaharui <br>";
    echo "<meta http-equiv='refresh' content='2; url=?hal=barang'>";
}

// if ($result) {
//     echo "barang berhasil diperbaharui!";
//     echo "<meta http-equiv='refresh' content='2; url=?hal=barang'>";
// } else {
//     echo "Tidak dapat memperbaharui data!!<br>";
//     echo mysqli_error();
// }

// if($error != ""){
//     echo $error;
//     echo "<meta http-equiv='refresh' content='2; url=?hal=pegawai_edit'>";
// } elseif ($query){
//     echo "Berhasil memperbaharui data pegawai <b>$nama</b>";
//     echo "<meta http-equiv='refresh' content='1; url=?hal=pegawai'>";
// } else {
//     echo "Tidak dapat menyimpan data!<br>";
//     echo mysqli_error();
// }
?>