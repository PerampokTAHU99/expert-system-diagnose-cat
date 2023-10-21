<?php
require_once('../function.php');

session_start();

if (empty($_SESSION['idSymptom'])) {
    $query = mysqli_query($link, "SELECT * FROM symptoms");

    $result = array();
    while ($row = mysqli_fetch_array($query)) {
        array_push($result, array(
            'idSymptom' => $row['idSymptom'],
            'codeOfSymptom' => $row['codeOfSymptom'],
            'descOfSymptom' => $row['descOfSymptom']
        ));
    }

    header('Content-Type: application/json', true, 200);
    echo json_encode(
        array('result' => $result)
    );
} else {
    $query = mysqli_query(
        $link,
        "SELECT * FROM symptoms WHERE idSymptom = " . $_SESSION['idSymptom']
    );

    $result = array();
    while ($row = $query -> fetch_assoc()) {
        $result = array (
            'idSymptom' => $row['idSymptom'],
            'codeOfSymptom' => $row['codeOfSymptom'],
            'descOfSymptom' => $row['descOfSymptom']
        );
    }

    header('Content-Type: application/json', true, 200);
    echo json_encode($result);
}

?>
