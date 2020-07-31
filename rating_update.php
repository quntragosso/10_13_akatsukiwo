<?php

// 共通処理
include("functions.php");

$your_name = $_POST["yourname"];
$enemy_name = $_POST["enemyname"];
$win_or_lose = $_POST["win_or_lose"];

// test用
// $your_name = "hogehoge";
// $enemy_name = "QunQuuun";
// $win_or_lose = "win";

$sql = "SELECT * from akatsuki_user_table where user_username = :your_name";

$pdo = connect_to_db();
$stmt = $pdo->prepare($sql);
$stmt->bindValue(":your_name", $your_name, PDO::PARAM_STR);
$status = $stmt->execute();

if ($status == false) {
    $error = $stmt->errorInfo();
    echo json_encode(["error_msg" => "{$error[2]}"]);
    exit();
} else {
    $your_result = $stmt->fetch(PDO::FETCH_ASSOC);
};

$sql = "SELECT * from akatsuki_user_table where user_username = :enemy_name";

$stmt = $pdo->prepare($sql);
$stmt->bindValue(":enemy_name", $enemy_name, PDO::PARAM_STR);
$status = $stmt->execute();

if ($status == false) {
    $error = $stmt->errorInfo();
    echo json_encode(["error_msg" => "{$error[2]}"]);
    exit();
} else {
    $enemy_result = $stmt->fetch(PDO::FETCH_ASSOC);
};

// まずはレート差をチェック
$rating_variable = $enemy_result["user_rating_point"] - $your_result["user_rating_point"];
// レート差を加工。なんとなく20刻み。根拠はない。
$rating_variable = floor($rating_variable / 20);
// 標準変動レート値に加減して最終的な変動値を算出。
$rating_variable = 16 + $rating_variable;

if ($rating_variable >= 30) {
    $rating_variable = 30;
} else if ($rating_variable <= 1) {
    $rating_variable = 1;
}

if ($win_or_lose == "win") {
    $new_rating = $your_result["user_rating_point"] + $rating_variable;
} else if ($win_or_lose == "draw") {
    $new_rating = $your_result["user_rating_point"];
} else if ($win_or_lose == "lose") {
    $new_rating = $your_result["user_rating_point"] - $rating_variable;
};

$sql = "UPDATE akatsuki_user_table SET user_rating_point = :new_rating where user_username = :your_name";

$stmt = $pdo->prepare($sql);
$stmt->bindValue(":new_rating", $new_rating, PDO::PARAM_INT);
$stmt->bindValue(":your_name", $your_name, PDO::PARAM_STR);
$status = $stmt->execute();

if ($status == false) {
    $error = $stmt->errorInfo();
    echo json_encode(["error_msg" => "{$error[2]}"]);
    exit();
} else {
    exit();
};
