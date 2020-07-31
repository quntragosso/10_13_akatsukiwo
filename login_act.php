<?php

// 共通処理
session_start();
include("functions.php");

if (
    !isset($_POST["username"]) || $_POST["username"] == "" ||
    !isset($_POST["password"]) || $_POST["password"] == ""
) {
    echo "inputerror";
    exit();
}

$username = $_POST["username"];
$password = $_POST["password"];

$pdo = connect_to_db();

$sql = "SELECT * from akatsuki_user_table where user_username = :username AND user_password = :password";

$stmt = $pdo->prepare($sql);
$stmt->bindValue(":username", $username, PDO::PARAM_STR);
$stmt->bindValue(":password", $password, PDO::PARAM_STR);
$status = $stmt->execute();

if ($status == false) {
    $error = $stmt->errorInfo();
    echo json_encode(["error_msg" => "{$error[2]}"]);
    exit();
} else {
    $val = $stmt->fetch(PDO::FETCH_ASSOC);
}

// ユーザ情報が取得できない場合はメッセージを表示
if (!$val) {
    echo "inputerror";
    exit();
} else {
    $_SESSION = array();
    $_SESSION["session_id"] = session_id();
    $_SESSION["visible_id"] = $val["user_visible_id"];
    $_SESSION["username"] = $val["user_username"];
    exit();
}
