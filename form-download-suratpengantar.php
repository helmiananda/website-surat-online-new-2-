<?php


session_start();
if (!isset($_SESSION["surat"])) {
    header("Location: index.php");
    exit;
}
require 'function.php';
//membuat penomoran otomatis
$auto = mysqli_query($conn, "select max(surat_pengantar) as max_code from form_surat_pengantar");
$no_surat = mysqli_fetch_array($auto);
$code = $no_surat['max_code'];
$urutan = (int) substr($code, 11, 3);
$urutan++;
$huruf = "K-HQ-11829-";
$no_surat_ket = $huruf . sprintf("%03s", $urutan);
// mengecek tombol submit apakah sudah di pencet apa belom

if (isset($_POST["submit"])) {

    // mengecek apakah data berhasil ditambahkan atau tidak

    if (tambah_surat_pengantar($_POST) > 0) {

        echo "<script> alert ('Data berhasil ditambahkan!');
    document.location.href = 'form_surat_pengantar.php'; </script>";
    } else {

        echo "<script> alert ('Data gagal ditambahkan!');
        document.location.href = 'form_surat_pengantar.php'; </script>";
    }
}

?>
<html>

<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Data | Surat Online RT. 07</title>
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
    <div class="wrapper">
        <div class="margin">
            <div class="kolom-tambahdata">

                </head>

                <body>

                    <h1> Isi Form Surat Pengantar</h1>
                    <br>

                </body>

</html>