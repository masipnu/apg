<h1>Cek Data</h1>
<form action="" method="get">
    <input type="hidden" name="hal" value="cek">
    <input type="number" name="id_user" id="id_user" placeholder="NIS">
    <input type="submit" value="Cek">
</form>
<hr>


<h2>Detail</h2>
<form action="prosesdata.php" method="post">
        <?php
        if(isset($_GET['id_user'])){
            $id = $_GET['id_user'];

            $query = "SELECT * FROM user where id_user = '$id'";
            $result = mysqli_query($con,$query);
            $no = 0;
            while($data = mysqli_fetch_assoc($result)){
                $no++;?>

                <input type="number" name="id" id="id" value="<?=$data['id_user']?>" disabled>
                <input type="text" name="nama_lengkap" id="nama_lengkap" value="<?=$data['nama_lengkap']?>" disabled>

                <?php    
        }
        ?>
    <select name="pelanggaran" id="pelanggaran">
        <option value=""> - Pilih Pelanggaran - </option>
        <option value="100"> Merokok </option>
        <option value="101"> Tidak memakai sepatu </option>
        <option value="102"> Tidak memakai songkok </option>
    </select>
    <input type="reset" value="Batal">
    <input type="submit" value="Simpan">
</form>



<?php
        }
        ?>



