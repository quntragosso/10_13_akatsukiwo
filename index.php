<?php
//共通処理
session_start();
include("functions.php");
// check_session_id();

$username = isset($_SESSION["username"]) ? $_SESSION["username"] : "ゲスト";

if ($username != "ゲスト") {
    $pdo = connect_to_db();
    $sql = "SELECT * from akatsuki_user_table where user_username = :username";

    // SQL実行時にエラーがある場合はエラーを表示して終了
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(":username", $username, PDO::PARAM_STR);
    $status = $stmt->execute();

    if ($status == false) {
        $error = $stmt->errorInfo();
        echo json_encode(["error_msg" => "{$error[2]}"]);
        exit();
    } else {
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    };
};


$header_btns = "";
if ($username == "ゲスト") {
    $header_btns .= "<li id='register_btn' class='btns'>アカウントをつくる</li>";
    $header_btns .= "<li id='login_btn' class='btns'>ログイン</li>";
} else {
    $header_btns .= "<li>いまのレート：{$result[0]["user_rating_point"]}</li>";
    $header_btns .= "<li id='logout_btn' class='btns'>ログアウト</li>";
}

$main_box = "";
$main_box .= "<div id='main_box' class='boxes'>";
if ($username == "ゲスト") {
    $main_box .= "<div id='rule_btn' class='btns'>あそびかた</div>";
    $main_box .= "<div id='pool_btn' class='btns'>ふだのやま</div>";
    $main_box .= "<div id='ranking_btn' class='btns'>じゅんい</div>";
} else {
    $main_box .= "<div id='battle_btn' class='btns'>あそぶ</div>";
    $main_box .= "<div id='rule_btn' class='btns'>あそびかた</div>";
    $main_box .= "<div id='pool_btn' class='btns'>ふだのやま</div>";
    $main_box .= "<div id='ranking_btn' class='btns'>じゅんい</div>";
}
$main_box .= "</div>";

$json_username = json_encode($username, JSON_HEX_TAG | JSON_HEX_AMP | JSON_HEX_APOS | JSON_HEX_QUOT);

?>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>あかつきを</title>
    <link href="https://fonts.googleapis.com/earlyaccess/hannari.css" rel="stylesheet">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <div class="wrapper">
        <header>
            <h1>あかつきを</h1>
            <div class="login_status">
                <h3><?= $username ?>としてログインしています。</h3>
                <ul class="header_btns">
                    <?= $header_btns ?>
                </ul>
            </div>
        </header>
        <main>
            <?= $main_box ?>
            <div id="rule_box" class="boxes">
                <ul>
                    <li>じゅうろくのふだやまより、たがいにろくまいくばられん。</li>
                    <li>てばんごとにいちまいのふだをえらぶ。</li><br>
                    <li>おのおの、ふだにかかるるてんすうをえる。</li>
                    <li>ただし、とくしゅなこうかをもつふだありけり。</li>
                    <li>さらに、あさよるのいれかわり、たびたびおこりうるなり。</li><br>
                    <li>これをろくどおこない、よりたかいてんすうをえたものかたん。</li>
                </ul>
                <div class="close btns">とじる</div>
            </div>
            <div id="pool_box" class="boxes">
                <div id="pools"></div>
                <div class="close btns">とじる</div>
            </div>
            <div id="ranking_box" class="boxes">
                <ul id="ranking">
                </ul>
                <div class="close btns">とじる</div>
            </div>
        </main>
    </div>
    <!-- フォーム関連をwrapperとは別divで管理してて気持ち悪い。リダイレクトも気持ち悪い。 -->
    <div id="form_box_wrap">
        <div id="form_box">
            <div><label for="input_username">　なまえ　</label><input type="text" name="input_username" id="input_username" maxlength="12" class="input_form"></div>
            <div><label for="input_password">ぱすわーど</label><input type="text" name="input_password" id="input_password" maxlength="8" class="input_form"></div>
            <div id="registers_submit" class="registers btns">とうろく</div>
            <div id="registers_switch" class="registers btns">ログインにきりかえ</div>
            <div id="logins_submit" class="logins btns">ログイン</div>
            <div id="logins_switch" class="logins btns">とうろくにきりかえ</div>
            <div class="return btns">もどる</div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        const username = JSON.parse('<?php echo $json_username; ?>');
    </script>
    <script type="text/javascript" src="js/system.js"></script>
</body>

</html>