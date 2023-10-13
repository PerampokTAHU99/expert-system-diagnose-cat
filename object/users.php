<?php
require_once('../function.php');

if (empty($_GET)) {
    $query = mysqli_query($link, "SELECT * FROM users");

    $result = array();
    while ($row = mysqli_fetch_array($query)) {
        array_push($result, array(
            'userId' => $row['userId'],
            'name' => $row['name'],
            'username ' => $row['username'],
            'email' => $row['email'],
            'password' => $row['password'],
            'roleId ' => $row['roleId']
        ));
    }

    echo json_encode(
        array('result' => $result)
    );
}else{
    $query = mysqli_query($link, "SELECT * FROM users WHERE roleId = ". $_GET ['roleId']);

    $result = array();
    while ($row = $query -> fetch_assoc()) {
        $result = array (
            'userId' => $row['userId'],
            'name' => $row['name'],
            'username ' => $row['username'],
                'email' => $row['email'],
                'password' => $row['password'],
            'roleId ' => $row['roleId']
        );
    }
    echo json_encode($result);
}