<?php
require_once '../function.php';
require_once __DIR__ . '/../vendor/autoload.php';

use Firebase\JWT\JWT;
use Dotenv\Dotenv;

$dotenv = Dotenv::createImmutable(__DIR__ . "/..");
$dotenv->load();

session_start();

if ($_SESSION['username'] == null || $_SESSION['password'] == null) {
    header('Content-Type: application/json', true, 400);
    echo json_encode(
        array(
            'Status' => 400,
            'Reason' => 'Username dan Password tidak boleh kosong.'
        )
    );

    die();
}

$username = $_SESSION['username'];
$password = $_SESSION['password'];

$sql = "SELECT userId, name, username, email, password, roleId
        FROM users WHERE username = '$username' AND password = '$password'";
$query = mysqli_query($link, $sql);
$data = mysqli_fetch_assoc($query);

if (empty($data)) {
    header('Content-Type: application/json', true, 401);

    echo json_encode(
        array(
            'Status' => 401,
            'Reason' => 'Username atau Password salah.',
        )
    );

    die();
}

$payload = [
    'userId' => $data['userId'],
    'name' => $data['name'],
    'username' => $data['username'],
    'email' => $data['email'],
    'roleId' => $data['roleId'],
    'exp' => time() + 7200,
];

$jwt = JWT::encode($payload, $_ENV['SECRET_KEY'], 'HS256');

header('Content-Type: application/json', true, 200);
echo json_encode(
    array(
        'Status' => 200,
        'Reason' => 'Login Berhasil.',
        'Token' => $jwt
    )
);

?>
