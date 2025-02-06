<?php
if(!defined('INDEX')) die();

$id = $_GET['id'];
$query = "SELECT * FROM barang WHERE id_barang = '$id'";
$result = mysqli_query($con,$query);
$data = mysqli_fetch_assoc($result);
?>

<h2 class="judul">Edit Pegawai</h2>
<form action="?hal=barang_update" method="post" ">

    <!-- Input ID -->
    <input type="hidden" name="id" value="<?=$data['id_barang']?>">

    <!-- Input Nama Barang -->
    <div class="form-group">
        <label for="nama">Nama barang</label>
        <div class="input">
            <input type="text" name="nama-barang" id="nama-barang" value="<?=$data['nama']?>">
        </div>
    </div>
    
    <!-- Input kode barang -->
    <div class="form-group">
        <label for="nama">kode Barang</label>
        <div class="input">
            <input type="text" name="kode-barang" id="kode-barang" value="<?=$data['kode']?>" disabled>
        </div>
    </div>


    <!-- Input Jabatan -->
    <div class="form-group">
        <label for="jabatan">Kategori</label>
        <div class="input">
            <select name="kategori" id="kategori">
                <option value=""> - Pilih kategori - </option>
<?php
$queryj = "SELECT * FROM kategori";
$resultj = mysqli_query($con,$queryj);
while($j = mysqli_fetch_assoc($resultj)){
    echo "<option value='$j[id_kategori]'";
    if($j['id_kategori'] == $data['id_kategori']) echo " selected";
    echo "> $j[nama_kategori] </option>";
}
?>
            </select>
        </div>
    </div>


    <div class="form-group">
        <input type="submit" value="Simpan" class="tombol simpan">
        <input type="reset" value="Batal" class="tombol reset">
    </div>
</form>