<?php
require_once('../function.php');

if (empty($_GET)) {
    $query = mysqli_query($link, "SELECT * FROM diagnoses");

    $result = array();
    while ($row = mysqli_fetch_array($query)) {
        array_push($result, array(
            'idDiagnose' => $row['idDiagnose'],
            'date' => $row['date'],
            'idDisease ' => $row['idDisease'],
            'userId' => $row['userId']
        ));
    }

    echo json_encode(
        array('result' => $result)
    );
}else{
    $query = mysqli_query($link, "SELECT * FROM diagnoses WHERE idDiagnose = ". $_GET ['idDiagnose']);

    $result = array();
    while ($row = $query -> fetch_assoc()) {
        $result = array (
            'idDiagnose' => $row['idDiagnose'],
            'date' => $row['date'],
            'idDisease ' => $row['idDisease'],
            'userId' => $row['userId']
        );
    }

    echo json_encode($result);
}
