<?php

// 共通処理
include("functions.php");

$your_point = $_POST["yourpoint"];
$your_play = $_POST["yourplay"];
$your_beforeplay = $_POST["yourbeforeplay"];
$enemy_play = $_POST["enemyplay"];
$enemy_beforeplay = $_POST["enemybeforeplay"];
$asayoru = $_POST["asayoru"];

// test用
// $your_point = 1;
// $your_play = "akatsuki";
// $your_beforeplay = "kame";
// $enemy_play = "sakura";
// $enemy_beforeplay = "aki";
// $asayoru = "朝";

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


// 相手色札条件チェック。とりあえず-6点をもらってから下で色札の点数を奪う処理も行ってからechoする。
if ($enemy_result["effect3"] != NULL && $your_result["card_category"] == $enemy_result["effect3"]) {
    $your_point -= 6;
};
// 相手大札条件チェック。該当の場合, 今回加算は0で即座にechoする。
if ($enemy_result["effect2"] != NULL && $enemy_result["effect2"] == $asayoru) {
    echo $your_point;
    exit();
};
// 自分大札条件チェック。
if ($your_result["effect2"] != NULL && $your_result["effect2"] == $asayoru) {
    // 相手が季節呼応の場合。
    if ($enemy_result["effect1"] != NULL && $enemy_result["effect1"] == $enemy_beforeplay) {
        echo $your_point + 6;
        exit();
    } else {
        // 通常時。朝か夜分の点数を獲得。
        if ($asayoru == "朝") {
            echo $your_point + $enemy_result["asa"];
            exit();
        } else if ($asayoru == "夜") {
            echo $your_point + $enemy_result["yoru"];
            exit();
        }
    }
};

// 季節→呼応ボーナス。
if ($your_result["effect1"] != NULL && $your_result["effect1"] == $your_beforeplay) {
    echo $your_point + 6;
    exit();
} else {
    // 該当なし通常加算。
    if ($asayoru == "朝") {
        echo $your_point + $your_result["asa"];
        exit();
    } else if ($asayoru == "夜") {
        echo $your_point + $your_result["yoru"];
        exit();
    }
};
