<?php
require_once('../function.php');

session_start();

if (empty($_SESSION['idDiagnose'])) {
    $query = mysqli_query(
        $link,
        "SELECT * FROM diagnoses WHERE userid = {$_SESSION['userId']}"
    );

    $result = array();
    while ($row = mysqli_fetch_array($query)) {
        array_push($result, array(
            'idDiagnose' => $row['idDiagnose'],
            'date' => $row['date'],
            'idDisease ' => $row['idDisease'],
            'userId' => $row['userId']
        ));
    }

    header('Content-Type: application/json', true, 200);
    echo json_encode(
        array('result' => $result)
    );
} else {
    $query = mysqli_query(
        $link,
        "SELECT * FROM diagnoses WHERE idDiagnose = " . $_SESSION['idDiagnose']
    );

    $result = array();
    while ($row = $query -> fetch_assoc()) {
        $result = array (
            'idDiagnose' => $row['idDiagnose'],
            'date' => $row['date'],
            'idDisease ' => $row['idDisease'],
            'userId' => $row['userId']
        );
    }

    header('Content-Type: application/json', true, 200);
    echo json_encode($result);
}

?>
