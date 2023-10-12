<?php

// echo $_GET['method'];
if (empty($_GET['method'])) {
    echo json_encode(array('Status' => 404, 'Reason' => 'The HTTP 404 Not Found response status code indicates that the server cannot find the requested resource. Links that lead to a 404 page are often called broken or dead links and can be subject to link rot.'));
    die();
}
if ($_GET['method'] == 'diseases') {
    header("location:diseases.php");
}