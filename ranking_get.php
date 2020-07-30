<?php
// 共通処理
include("functions.php");

$pdo = connect_to_db();

$sql = "SELECT * from akatsuki_user_table order by user_rating_point desc limit 10";

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
        array_push($newArray, [$record["user_username"], $record["user_rating_point"]]);
    };
    echo json_encode($newArray, JSON_HEX_TAG | JSON_HEX_AMP | JSON_HEX_APOS | JSON_HEX_QUOT);
};
