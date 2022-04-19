<?php
error_reporting(E_ALL);

$title = 'Data Barang';
include_once 'koneksi1.php';

if (isset($_POST['submit'])) 
{
    $nama = $_POST['nama'];
    $kategori = $_POST['kategori'];
    $harga_jual = $_POST['harga_jual'];
    $harga_beli = $_POST['harga_beli'];
    $stok = $_POST['stok'];
    $file_gambar = $_FILES['file_gambar'];
    $gambar = null;

        if ($file_gambar['error'] == 0) 
        {
        $filename = str_replace(' ', '_', $file_gambar['name']);
        $destination = dirname(__FILE__) . '/gambar/' . $file_name;

        if (move_uploaded_file($file_gambar['tmp_name'], $destination)) {
            $gambar = 'gambar/' . $filename;
        }
    }
    $sql = 'INSERT INTO data_barang (nama, kategori, harga_jual, harga_beli, stok, gambar)';
    $sql .= "VALUE ('{$nama}', '{$kategori}', '{$harga_jual}', '{$harga_beli}', '{$stok}', '{$gambar}')";
    $result = mysqli_query($conn, $sql);

    header("location: index.php");
}
include_once('header.php'); ?>


<h2>Tambah Barang</h2>

<form action="tambah_barang.php" method="post" enctype="multipart/form-data">
    <div class="input">
        <label for="">Nama Barang</label>
        <input type="text" name="nama">
    </div>
    <div class="input">
        <label for="">Kategori</label>
        <select name="kategori">
            <option value="Komputer">Komputer</option>
            <option value="Elektronik">Elektronik</option>
            <option value="Hand phone">Handphone</option>
        </select>
    </div>
    <div class="input">
        <label for="">Harga Jual</label>
        <input type="text" name="harga_jual">
    </div>
    <div class="input">
        <label for="">Harga Beli</label>
        <input type="text" name="harga_beli">
    </div>
    <div class="input">
        <label for="">Stok</label>
        <input type="text" name="stok">
    </div>
    <div class="input">
        <label for="">File gambar</label>
        <input type="file" name="file_gambar">
    </div>
    <div class="submit">
        <input type="submit" value="simpan" name="submit">
    </div>
</form>

<?php include_once('footer.php'); ?>