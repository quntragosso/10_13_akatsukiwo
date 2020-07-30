<?php

// 共通処理
include("functions.php");

$your_point = $_POST["yourpoint"];
$your_play = $_POST["yourplay"];
$enemy_play = $_POST["enemyplay"];
$asayoru = $_POST["asayoru"];

// test用
// $your_point = 2;
// $your_play = "haru";
// $enemy_play = "chou";
// $asayoru = "夜";

$sql = "SELECT * from akatsuki_pool_table where card_class = :your_play";

$pdo = connect_to_db();
$stmt = $pdo->prepare($sql);
$stmt->bindValue(":your_play", $your_play, PDO::PARAM_STR);
$status = $stmt->execute();

if ($status == false) {
    $error = $stmt->errorInfo();
    echo json_encode(["error_msg" => "{$error[2]}"]);
    exit();
} else {
    $your_result = $stmt->fetch(PDO::FETCH_ASSOC);
};

$sql = "SELECT * from akatsuki_pool_table where card_class = :enemy_play";

$stmt = $pdo->prepare($sql);
$stmt->bindValue(":enemy_play", $enemy_play, PDO::PARAM_STR);
$status = $stmt->execute();

if ($status == false) {
    $error = $stmt->errorInfo();
    echo json_encode(["error_msg" => "{$error[2]}"]);
    exit();
} else {
    $enemy_result = $stmt->fetch(PDO::FETCH_ASSOC);
};


if ($asayoru == "朝") {
    echo $your_point + $your_result["asa"];
    exit();
} else if ($asayoru == "夜") {
    echo $your_point + $your_result["yoru"];
    exit();
}
