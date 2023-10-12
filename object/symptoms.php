<?php
require_once('../function.php');

if (empty($_GET)) {
    $query = mysqli_query($link, "SELECT * FROM symptoms");

    $result = array();
    while ($row = mysqli_fetch_array($query)) {
        array_push($result, array(
            'idSymptom' => $row['idSymptom'],
            'codeOfSymptom' => $row['codeOfSymptom'],
            'descOfSymptom' => $row['descOfSymptom']
        ));
    }

    echo json_encode(
        array('result' => $result)
    );
}else{
    $query = mysqli_query($link, "SELECT * FROM symptoms WHERE idSymptom = ". $_GET ['idSymptom']);

    $result = array();
    while ($row = $query -> fetch_assoc()) {
        $result = array (
            'idSymptom' => $row['idSymptom'],
            'codeOfSymptom' => $row['codeOfSymptom'],
            'descOfSymptom' => $row['descOfSymptom']
        );
    }

    echo json_encode($result);
}
