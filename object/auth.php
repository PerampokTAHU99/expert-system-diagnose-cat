<?php
require_once __DIR__ . '/../vendor/autoload.php';

use Firebase\JWT\JWT;
use Firebase\JWT\Key;
use Dotenv\Dotenv;

$dotenv = Dotenv::createImmutable(__DIR__ . "/..");
$dotenv->load();

function auth() {
    if (empty($_SERVER["HTTP_TOKEN"])) {
        header('Content-Type: application/json', true, 400);
        echo json_encode(
            array(
                'Status' => 400,
                'Reason' => 'Tidak ada token yang dikirim, harap masukan token.'
            )
        );
        die(1);
    }

    $jwt = $_SERVER['HTTP_TOKEN'];

    try {
        $decoded = JWT::decode($jwt, new Key($_ENV['SECRET_KEY'], 'HS256'));
        $decoded_array = (array) $decoded;
    
        session_start();
        $_SESSION['userId'] = $decoded_array['userId'];
        $_SESSION['roleId'] = $decoded_array['roleId'];
        $_SESSION['isLoggedIn'] = true;
    } catch (Exception $e) {
        header('Content-Type: application/json', true, 401);
        echo json_encode(
            array(
                'Status' => 401,
                'Reason' => 'Token tidak valid. Harap login ulang.'
            )
        );

        session_abort();
        die(1);
    }
}

?>
