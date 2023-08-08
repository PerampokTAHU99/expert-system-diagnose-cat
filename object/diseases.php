<?php
require_once('../config/connDatabase.php');

if (empty($_GET)) {
    $query = mysqli_query($conn, "SELECT * FROM diseases");

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

    echo json_encode(
        array('result' => $result)
    );
}else{
    $query = mysqli_query($conn, "SELECT * FROM diseases WHERE idDisease = ". $_GET ['idDisease']);

    $result = array();
    while ($row = $query -> fetch_assoc()) {
        $result = array (
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

    echo json_encode(
        array($result)
    );
}
