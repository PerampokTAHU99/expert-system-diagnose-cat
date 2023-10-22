<?php
require_once("auth.php");

session_start();

$request = $_SERVER['REQUEST_METHOD'];

if (empty($_GET['method'])) {
    header('Content-Type: application/json', true, 404);
    echo json_encode(
        array(
            'Status' => 404,
            'Reason' => 'Alamat yang anda kunjungi tidak valid.
            Untuk akses API harap masukan \'method\' sebagai parameter query.'
        )
    );
    die(1);
}

define('METHOD', $_GET['method']);

switch (METHOD) {
    case 'login':
        $_SESSION['username'] = $_POST['username'];
        $_SESSION['password'] = $_POST['password'];

        header('Location: login.php');
        break;
    case 'logout':
        session_destroy();
        break;
    case 'diseases':
        $_SESSION['idDisease'] = $_GET['idDisease'];

        header('Location: diseases.php');
        break;
    case 'symptoms':
        $_SESSION['idSymptom'] = $_GET['idSymptom'];

        header('Location: symptoms.php');
        break;
    case 'diagnoses':
        auth();

        if (empty($_SESSION['isLoggedIn']) || $_SESSION['isLoggedIn'] == false) {
            header('Content-Type: application/json', true, 401);
            echo json_encode(
                array(
                    'Status' => 401,
                    'Reason' => 'Anda harus Login terlebih dahulu.'
                )
            );
        } else {
            $_SESSION['idDiagnose'] = $_GET['idDiagnose'];
            header('Location: diagnoses.php');
        }
        break;
    default:
        header('Content-Type: application/json', true, 404);
        echo json_encode(
            array(
                'Status' => 404,
                'Reason' => 'Endpoint API tidak ditemukan. Harap periksa method.'
            )
        );
    break;
}

die(0);

?>
