<?php
if(!defined('INDEX')) die();
?>

<h2 class="judul">Data Barang</h2>
<a href="?hal=pegawai_tambah" class="tombol">Tambah</a>

<table class="table">
    <thead>
        <tr>
            <th>No</th>
            <th>Kode Barang</th>
            <th>Nama Barang</th>
            <th>Kategori</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
<?php
$query = "SELECT * FROM barang ";
$query .= "LEFT JOIN kategori ";
$query .= "ON barang.id_kategori = kategori.id_kategori ";
$query .= "ORDER BY barang.id_barang DESC";
$result = mysqli_query($con,$query);
$no = 0;

while($data = mysqli_fetch_assoc($result)){
    $no++;
?>

<tr>
    <td><?=$no;?></td>
    <td><?=$data['kode']?></td>
    <td><?=$data['nama']?></td>
    <td><?=$data['nama_kategori']?></td>
    <td>
        <a href="?hal=barang_edit&id=<?=$data['id_barang']?>"
        class="tombol edit">Edit</a>
        <a href="?hal=pegawai_hapus&id=<?=$data['id_barang']?>"
        class="tombol hapus">Hapus</a>
    </td>
</tr>

<?php
}
?>
    </tbody>
</table>