<?php
session_start();

if (empty($_GET['method'])) {
    header('Content-Type: application/json', true, 404);
    echo json_encode(
        array(
            'Status' => 404,
            'Reason' => 'The HTTP 404 Not Found response status code indicates that the server cannot find the requested resource. Links that lead to a 404 page are often called broken or dead links and can be subject to link rot.'
        )
    );
    die(1);
}

define('METHOD', $_GET['method']);

switch (METHOD) {
    case 'diseases':
        $_SESSION['idDisease'] = $_GET['idDisease'];
        header('Location: diseases.php');
        break;
    case 'symptoms':
        $_SESSION['idSymptom'] = $_GET['idSymptom'];
        header('Location: symptoms.php');
        break;
    case 'diagnoses':

        break;
    default:
        # code...
        break;
}

?>
