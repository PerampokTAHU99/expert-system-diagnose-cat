<?php
require_once('../config/connDatabase.php');

if (empty($_GET)) {
    $query = mysqli_query($conn, "SELECT * FROM symptoms");

    $result = array();
    while ($row = mysqli_fetch_array($query)) {
        array_push($result, array(
            'id_Symptom' => $row['id_symptom'],
            'codeOfSymptom' => $row['codeOfSymptom'],
            'typeOfSymptom' => $row['typeOfSymptom']
        ));
    }

    echo json_encode(
        array('result' => $result)
    );
}else{
    $query = mysqli_query($conn, "SELECT * FROM symptoms WHERE id_symptom = ". $_GET ['id_symptom']);

    $result = array();
    while ($row = $query -> fetch_assoc()) {
        $result = array (
            'id_Symptom' => $row['id_symptom'],
            'codeOfSymptom' => $row['codeOfSymptom'],
            'typeOfSymptom' => $row['typeOfSymptom']
        );
    }

    echo json_encode(
        array($result)
    );
}
