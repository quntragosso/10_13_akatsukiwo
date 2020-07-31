<?php
//共通処理
session_start();
include("functions.php");
check_session_id();

$username = $_SESSION["username"];
$visible_id = $_SESSION["visible_id"];

$json_username = json_encode($username, JSON_HEX_TAG | JSON_HEX_AMP | JSON_HEX_APOS | JSON_HEX_QUOT);
$json_visible_id = json_encode($visible_id, JSON_HEX_TAG | JSON_HEX_AMP | JSON_HEX_APOS | JSON_HEX_QUOT);

?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>あかつきを</title>
    <link href="https://fonts.googleapis.com/earlyaccess/hannari.css" rel="stylesheet">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/gamestyle.css">
</head>

<body>
    <div class="wrapper">
        <!-- <button id="check">動作検証ボタン</button> -->
        <p id="wait_message">対戦相手を待っています。</p>
        <div id="wait_leave" class="leave_btns btns">退出する</div>
        <div id="enemy_hands"></div>
        <div id="firld_box">
            <div id="your_drop">ここに<br>ドロップ</div>
            <div id="info_box">
                <div id="enemy_info"></div>
                <div id="asayoru_info"></div>
                <div id="your_info"></div>
            </div>
            <div id="enemy_drop"></div>
        </div>
        <div id="your_hands"></div>
        <div id="message_box">
            <div id="message_text"></div>
            <div id="message_close" class="btns">とじる</div>
            <div id="message_leave" class="leave_btns btns">退出する</div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
    <!-- The core Firebase JS SDK is always required and must be listed first -->
    <script src="https://www.gstatic.com/firebasejs/7.17.1/firebase.js"></script>

    <!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->

    <script>
        // Your web app's Firebase configuration
        var firebaseConfig = {
            apiKey: "AIzaSyBXIDnuY_XLzyM2j3BPVOPdW9nIVopT9JQ",
            authDomain: "akatsuki-2cc46.firebaseapp.com",
            databaseURL: "https://akatsuki-2cc46.firebaseio.com",
            projectId: "akatsuki-2cc46",
            storageBucket: "akatsuki-2cc46.appspot.com",
            messagingSenderId: "80730511398",
            appId: "1:80730511398:web:ba52cac736b8e56f75eee7"
        };
        // Initialize Firebase
        firebase.initializeApp(firebaseConfig);
        let gameServer = firebase.firestore().collection("gameServer");
    </script>
    <script>
        const username = JSON.parse('<?php echo $json_username; ?>');
        const visibleID = JSON.parse('<?php echo $json_visible_id; ?>');
    </script>
    <script type="text/javascript" src="js/gamesystem.js"></script>
</body>

</html>