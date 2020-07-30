<?php
// 共通処理
include("functions.php");

$pdo = connect_to_db();

$sql = "SELECT * from akatsuki_pool_table order by card_id asc";

// SQL実行時にエラーがある場合はエラーを表示して終了
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

if ($status == false) {
    $error = $stmt->errorInfo();
    echo json_encode(["error_msg" => "{$error[2]}"]);
    exit();
} else {
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    $newArray = [];
    foreach ($result as $record) {
        array_push($newArray, $record["card_name"]);
    };
    echo json_encode($newArray, JSON_HEX_TAG | JSON_HEX_AMP | JSON_HEX_APOS | JSON_HEX_QUOT);
};
