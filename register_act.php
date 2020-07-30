<?php

// 共通処理
session_start();
include("functions.php");

if (
    !isset($_POST["username"]) || $_POST["username"] == "" || $_POST["username"] == "ゲスト" || $_POST["username"] == "unset" ||
    !isset($_POST["password"]) || $_POST["password"] == ""
) {
    echo "inputerror";
    exit();
}

$username = $_POST["username"];
$password = $_POST["password"];

// 同名ユーザー検索
$pdo = connect_to_db();

// ユーザ存在有無確認
$sql_search = "SELECT COUNT(*) FROM akatsuki_user_table WHERE user_username=:username";

$stmt_search = $pdo->prepare($sql_search);
$stmt_search->bindValue(":username", $username, PDO::PARAM_STR);
$status_search = $stmt_search->execute();

if ($status_search == false) {
    // SQL実行に失敗した場合はここでエラーを出力し，以降の処理を中止する
    $error = $stmt_search->errorInfo();
    echo json_encode(["error_msg" => "{$error[2]}"]);
    exit();
} else {
}

if ($stmt_search->fetchColumn() > 0) {
    // user_nameが1件以上該当した場合はエラーを表示して元のページに戻る
    echo "inpuerror";
    exit();
} else {
}

// 登録処理
$visible_id = "";
$a = rand(0, 9);
$b = rand(0, 9);
$c = rand(0, 9);
$d = rand(0, 9);
$e = rand(0, 9);
$f = rand(0, 9);
$g = rand(0, 9);
$h = rand(0, 9);
$newArray = [$a, $b, $c, $d, $e, $f, $g, $h];
for ($num = 0; $num < count($newArray); $num++) {
    $visible_id .= (string) $newArray[$num];
};

$sql_create = "INSERT INTO akatsuki_user_table(user_id, user_username, user_password, user_visible_id, user_rating_point) VALUE(NULL, :username, :password, :visible_id, 1500)";
$stmt_create = $pdo->prepare($sql_create);
$stmt_create->bindValue(":username", $username, PDO::PARAM_STR);
$stmt_create->bindValue(":password", $password, PDO::PARAM_STR);
$stmt_create->bindValue(":visible_id", $visible_id, PDO::PARAM_STR);
$status_search = $stmt_create->execute();

if ($status_search == false) {
    $error = $stmt_create->errorInfo();
    echo json_encode(["error_msg" => "{$error[2]}"]);
    exit();
} else {
    $_SESSION = array();
    $_SESSION["session_id"] = session_id();
    $_SESSION["visible_id"] = $visible_id;
    $_SESSION["username"] = $username;
    exit();
}
