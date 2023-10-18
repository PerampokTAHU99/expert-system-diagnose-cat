<?php
require_once('../function.php');

session_start();

if (empty($_SESSION['idDisease'])) {
    $query = mysqli_query($link, "SELECT * FROM diseases");

    $result = array();
    while ($row = mysqli_fetch_array($query)) {
        array_push($result, array(
            'idDisease' => $row['idDisease'],
            'codeOfDisease' => $row['codeOfDisease'],
            'nameOfDisease' => $row['nameOfDisease'],
            'latinNameOfDisease' => $row['latinNameOfDisease'],
            'picture' => $row['picture'],
            'description' => $row['description'],
            'precaution' => $row['precaution'],
            'solution' => $row['solution'],
        ));
    }

    header('Content-Type: application/json', true, 200);
    echo json_encode(
        array('result' => $result)
    );
} else {
    $query = mysqli_query(
        $link,
        "SELECT * FROM diseases WHERE idDisease = " . $_SESSION['idDisease']
    );

    $result = array();
    while ($row = $query->fetch_assoc()) {
        $result = array(
            'idDisease' => $row['idDisease'],
            'codeOfDisease' => $row['codeOfDisease'],
            'nameOfDisease' => $row['nameOfDisease'],
            'latinNameOfDisease' => $row['latinNameOfDisease'],
            'picture' => $row['picture'],
            'description' => $row['description'],
            'precaution' => $row['precaution'],
            'solution' => $row['solution'],
        );
    }

    header('Content-Type: application/json', true, 200);
    echo json_encode($result);
}

?>
