<?php
session_start();

//connection db
$link = mysqli_connect("localhost", "root", "", "diagnose_cat");
if (!$link) {
    die("Koneksi dengan database gagal : " . mysqli_connect_error() . " - " . mysqli_connect_error());
}

//add new admin
if (isset($_POST['addNewAdmin'])) {
    global $link;
    $nameAdmin = $_POST['nameAdmin'];
    $usernameAdmin = $_POST['usernameAdmin'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    $addToTable = mysqli_query($link, "INSERT INTO users (name, username, email, password, roleId) VALUES ('$nameAdmin','$usernameAdmin','$email','$password','4001')");
    if ($addToTable) {
        echo "
        <script>
        window.location = 'admin/page-admin.php';
        </script>
        ";
    } else {
        echo 'gagal';
        echo "
        <script>
            window.location = 'admin/page-admin.php';
        </script>
        ";
    }
}

//Update info admin
if (isset($_POST['updateAdmin'])) {
    global $link;

    $userId = $_POST['userId'];
    $nameAdmin = $_POST['nameAdmin'];
    $usernameAdmin = $_POST['usernameAdmin'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    $update = mysqli_query($link, "UPDATE users SET name = '$nameAdmin', username = '$usernameAdmin', email= '$email' , password = '$password' WHERE userId = '$userId'");
    if ($update) {
        header('location:admin/page-admin.php');
    } else {
        echo 'gagal';
        header('location:admin/page-admin.php');
    }
}

//delete admin
if (isset($_POST['deleteAdmin'])) {
    global $link;

    $userId = $_POST['userId'];
    $delete = mysqli_query($link, "DELETE FROM users WHERE userId = '$userId'");
    if ($delete) {
        header('location:admin/page-admin.php');
    } else {
        echo 'gagal';
        header('location:admin/page-admin.php');
    }
}

//add new Doctors
if (isset($_POST['addNewDoctor'])) {
    global $link;
    $nameDoctor = $_POST['nameDoctor'];
    $usernameDoctor = $_POST['usernameDoctor'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    $addToTable = mysqli_query($link, "INSERT INTO users (name, username, email, password, roleId) VALUES ('$nameDoctor','$usernameDoctor','$email','$password','4002')");
    if ($addToTable) {
        echo "
        <script>
        window.location = 'admin/page-doctor.php';
        </script>
        ";
    } else {
        echo 'gagal';
        echo "
        <script>
            window.location = 'admin/page-doctor.php';
        </script>
        ";
    }
}

//Update info doctor
if (isset($_POST['updateDoctor'])) {
    global $link;

    $userId = $_POST['userId'];
    $nameDoctor = $_POST['nameDoctor'];
    $usernameDoctor = $_POST['usernameDoctor'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    $update = mysqli_query($link, "UPDATE users SET name = '$nameDoctor', username = '$usernameDoctor', email= '$email' , password = '$password' WHERE userId = '$userId'");
    if ($update) {
        header('location:admin/page-users.php');
    } else {
        echo 'gagal';
        header('location:admin/page-users.php');
    }
}

//delete doctor
if (isset($_POST['deleteDoctor'])) {
    global $link;

    $userId = $_POST['userId'];
    $delete = mysqli_query($link, "DELETE FROM users WHERE userId = '$userId'");
    if ($delete) {
        header('location:admin/page-doctor.php');
    } else {
        echo 'gagal';
        header('location:admin/page-doctor.php');
    }
}

//Update info user
if (isset($_POST['updateUser'])) {
    global $link;

    $userId = $_POST['userId'];
    $nameDoctor = $_POST['nameDoctor'];
    $usernameDoctor = $_POST['usernameDoctor'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    $update = mysqli_query($link, "UPDATE users SET name = '$nameDoctor', username = '$usernameDoctor', email= '$email' , password = '$password' WHERE userId = '$userId'");
    if ($update) {
        header('location:admin/page-users.php');
    } else {
        echo 'gagal';
        header('location:admin/page-users.php');
    }
}

//delete users
if (isset($_POST['deleteUser'])) {
    global $link;

    $userId = $_POST['userId'];
    $delete = mysqli_query($link, "DELETE FROM users WHERE userId = '$userId'");
    if ($delete) {
        header('location:admin/page-doctor.php');
    } else {
        echo 'gagal';
        header('location:admin/page-doctor.php');
    }
}

//add new symptom
if (isset($_POST['addNewSymptom'])) {
    global $link;
    $symptomsCode = $_POST['symptomsCode'];
    $symptomsDesc = $_POST['symptomsDesc'];

    $addToTable = mysqli_query($link, "INSERT INTO symptoms (codeOfSymptom, descOfSymptom) VALUES ('$symptomsCode','$symptomsDesc')");
    if ($addToTable) {
        echo "
        <script>
        window.location = 'doctor/page-symptoms.php';
        </script>
        ";
    } else {
        echo 'gagal';
        echo "
        <script>
            window.location = 'doctor/page-symptoms.php';
        </script>
        ";
    }
}

//Update info symptom
if (isset($_POST['updateSymptom'])) {
    global $link;

    $symptomsId = $_POST['symptomsId'];
    $symptomsCode = $_POST['symptomsCode'];
    $symptomsDesc = $_POST['symptomsDesc'];

    $update = mysqli_query($link, "UPDATE symptoms SET codeOfSymptom = '$symptomsCode', descOfSymptom = '$symptomsDesc' WHERE idSymptom = '$symptomsId'");
    if ($update) {
        header('location:doctor/page-symptoms.php');
    } else {
        echo 'gagal';
        header('location:doctor/page-symptoms.php');
    }
}

//delete doctor
if (isset($_POST['deleteSymptom'])) {
    global $link;

    $symptomsId = $_POST['symptomsId'];
    $delete = mysqli_query($link, "DELETE FROM symptoms WHERE idSymptom = '$symptomsId'");
    if ($delete) {
        header('location:doctor/page-symptoms.php');
    } else {
        echo 'gagal';
        header('location:doctor/page-symptoms.php');
    }
}