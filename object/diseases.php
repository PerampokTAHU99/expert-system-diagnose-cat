<?php
require_once('../config/connDatabase.php');

if (empty($_GET)) {
    $query = mysqli_query($conn, "SELECT * FROM diseases");

    $result = array();
    while ($row = mysqli_fetch_array($query)) {
        array_push($result, array(
            'id_disease' => $row['id_disease'],
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
    $query = mysqli_query($conn, "SELECT * FROM diseases WHERE id_disease = ". $_GET ['id_disease']);

    $result = array();
    while ($row = $query -> fetch_assoc()) {
        $result = array (
            'id_disease' => $row['id_disease'],
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
