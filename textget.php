<?php

// 共通処理
include("functions.php");

$cardname = $_POST["cardname"];

$sql = "SELECT * from akatsuki_pool_table where card_name = :cardname";

$pdo = connect_to_db();
$stmt = $pdo->prepare($sql);
$stmt->bindValue(":cardname", $cardname, PDO::PARAM_STR);
$status = $stmt->execute();

if ($status == false) {
    $error = $stmt->errorInfo();
    echo json_encode(["error_msg" => "{$error[2]}"]);
    exit();
} else {
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    echo $result["text"];
    exit();
}
