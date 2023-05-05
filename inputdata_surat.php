<?php

session_start();
if (!isset($_SESSION["surat"])) {
    header("Location: index.php");
    exit;
}
require 'function.php';
$input_data_surat = query("SELECT * FROM input_data_surat");
if (isset($_POST["cari"])) {
    $input_data_surat = cari($_POST["katakunci"]);
}



?>

<!DOCTYPE html>
<html>

<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Input Data Surat | Surat Online RT. 07</title>
    <link rel="stylesheet" href="stylea.css">
    <link rel="shortcut icon" href="favicon.ico">
    <title>
        Input Data Surat
    </title>
</head>

<body>
    <nav class="background">
        <div class="wrapper">
            <div class="logo">
                Surat Online RT. 07</div>
            <div class="menu">
                <ul>
                    <li class="hover"><a href="home.php">Home</a></li>
                    <li class="hover"><a href="aboutus.php">About Us</a></li>
                    <li class="hover"><a href="tatacara.php">Panduan</a></li>
                    <li class="hover"><a href="downloadsurat.php">Download Surat</a></li>
                    <li class="hover"><a href="inputdata_surat.php"> Input Data</a></li>
                    <li class="hover"><a href="contact.php"> Contact</a></li>
                    <li><a href="logout.php" class="btn-pink">Log out</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="inputdatasurat">
        <div class="margin-inputdatasurat">
            <div class="kolom">
                <h1 class="header-inputdatasurat">Daftar Pengisi Surat</h1>
                <br>
                <a class="tambah-data" href="tambah.php"> Tambah Data Pengisi Surat </a>
                <br>
                <br>
                <form method="post" action="">
                    <label> Cari Data</label>
                    <input type="text" class="input" name="katakunci" id="keyword" autocomplete="off" placeholder="  Cari disini...">
                    <button type="submit" name="cari" id="tombolCari" class="button-submit"> Cari </button>
                </form>
                <br>
                <div id="pencarian">
                    <table class="table-inputdata" border="1" width="100%" cellpadding="5" cellspacing="0">
                        <thead class="th-inputdata">
                            <tr class="tr-inputdata">
                                <td class="td-inputdata">No.</td>
                                <td class="td-inputdata">NIK</td>
                                <td class="td-inputdata">Nama</td>
                                <td class="td-inputdata">Jenis Kelamin</td>
                                <td class="td-inputdata">Nomor Rumah</td>
                                <td class="td-inputdata">Jenis Surat</td>
                                <td class="td-inputdata">Nomor Surat</td>
                                <td class="td-inputdata">Mengubah Data</td>
                                <td class="td-inputdata"> Menghapus Data</td>
                            </tr>
                            <?php $no = 1; ?>
                            <?php
                            foreach ($input_data_surat as $row) :
                            ?>
                                <tr class="tr-inputdata">
                                    <td class="td-inputdata"> <?= $no; ?> </td>
                                    <td class="td-inputdata"> <?= $row["nik"]; ?> </td>
                                    <td class="td-inputdata"> <?= $row["nama"]; ?> </td>
                                    <td class="td-inputdata"> <?= $row["jk"]; ?> </td>
                                    <td class="td-inputdata"> <?= $row["no_rumah"]; ?> </td>
                                    <td class="td-inputdata"> <?= $row["jenis_surat"]; ?> </td>
                                    <td class="td-inputdata"> <?= $row["no_surat"]; ?> </td>
                                    <td class="td-inputdata">
                                        <center> <a class=" text-ubahdata" href="ubah.php?id=<?= $row["id"]; ?> "> ubah </a> </center>
                                    <td class="td-inputdata">
                                        <center> <a class="text-hapusdata" href="hapus.php?id=<?= $row["id"]; ?>" onclick="return confirm('Hapus Data ?')"> hapus </a> </center>


                                </tr>
                                <?php $no++; ?>
                            <?php endforeach ?>
                            <?php
                            ?>
                    </table>
                </div>
                <script src="scriptajax.js">
                </script>
</body>

</html>