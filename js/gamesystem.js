$(function () {
    // test用
    // const username = "hogehoge";
    // const visibleID = "12345";

    // 山札定義
    let numberArray = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
    let cardArray = [[0, "猪", "inoshishi"], [1, "鹿", "shika"], [2, "蝶", "chou"], [3, "亀", "kame"], [4, "春", "haru"], [5, "夏", "natsu"], [6, "秋", "aki"], [7, "冬", "huyu"], [8, "桜", "sakura"], [9, "雨", "ame"], [10, "月", "tsuki"], [11, "雪", "yuki"], [12, "暁", "akatsuki"], [13, "曙", "akebono"], [14, "紫", "murasaki"], [15, "茜", "akane"]];

    // userに対して必要な変数
    let you; // host or guest
    let yourName = username;
    let yourHand = [];
    let yourPoint = 0;
    let yourStatus;
    let yourPlay;

    // 対戦相手情報に対して必要な変数
    let enemyName;
    let enemyHand = [];
    let enemyPoint = 0;
    let enemyStatus;
    let enemyPlay;

    // 全体共通変数の感じ
    let asaYoru = "";
    let matching = false;
    let serverID = visibleID;
    let turnCounter = 6; // 6から1へ, の6ターン。
    let winOrLose;

    // 朝夜に応じて背景色変更。
    function asayoruSwitch() {
        if (asaYoru == "朝") {
            $("body").css("background-color", "#f19072");
            $("#info_box").css("background-color", "#f19072");
        } else if (asaYoru == "夜") {
            $("body").css("background-color", "#8456a5");
            $("#info_box").css("background-color", "#8456a5");
        }
    }

    // 朝か夜か。
    function asaYoruRNG() {
        const rn = Math.floor(Math.random() * 2);
        if (rn == 0) {
            asaYoru = "朝";
        } else if (rn == 1) {
            asaYoru = "夜";
        }
        asayoruSwitch();
    };

    // 自分の手札を決める。guest時にはguestactionで山札を更新しているのでhostとの重複は起こらない。
    function cardDeal() {
        for (let i = 0; i < 6; i++) {
            const rn = Math.floor(Math.random() * (numberArray.length - 1));
            yourHand.push(numberArray[rn]);
            numberArray.splice(rn, 1);
        }
    };

    // "guest"が"unset"のドキュメントを検索し、あれば"guest"なければ"host"が割り当てられる。
    async function hostOrGuest() {
        let areYouGuest = false;
        await gameServer.where("guestname", "==", "unset").get().then(function (querySnapshot) {
            querySnapshot.forEach(async function (doc) {
                serverID = doc.id;
                numberArray = doc.data().cards;
                areYouGuest = true;
            });
        });
        if (areYouGuest == true) {
            you = "guest";
        } else {
            you = "host";
        };
    };

    // host時の最初動作, hostとしてドキュメントを設置。
    async function hostAction() {
        $("#wait_message").css("display", "block");
        asaYoruRNG();
        await cardDeal();
        let setting;
        function a() {
            setting = {
                hostname: username,
                hosthand: yourHand,
                hostpoint: "unset",
                hostplay: "unset",
                guestname: "unset",
                guesthand: "unset",
                guestpoint: "unset",
                guestplay: "unset",
                cards: numberArray,
                asayoru: asaYoru
            };
        };
        await a();
        gameServer.doc(serverID).set(setting);
    };

    // guest時の最初動作, guestのstatusを更新。
    async function guestAction() {
        await cardDeal();
        gameServer.doc(serverID).update({
            guestname: username,
            guesthand: yourHand,
            guestpoint: 0,
            guestplay: "unset",
            cards: numberArray
        });
    };

    // 勝敗判定
    function judgeManager() {
        if (yourPoint > enemyPoint) {
            winOrLose = "win";
        } else if (yourPoint == enemyPoint) {
            winOrLose = "draw";
        } else if (yourPoint < enemyPoint) {
            winOrLose = "lose"
        };
    };

    // 勝敗判定後の各種処理
    function finishManager() {
        $("#message_box").css("display", "flex");
        if (winOrLose == "win") {
            $("#message_text").text("貴殿の勝ちなり。")
        } else if (winOrLose == "draw") {
            $("#message_text").text("この勝負、引き分けなり。")
        } else if (winOrLose == "lose") {
            $("#message_text").text("貴殿は負けなり。精進いたせ。")
        };
        $.ajax({
            type: "POST",
            url: "rating_update.php",
            data: {
                "yourname": yourName,
                "enemyname": enemyName,
                "win_or_lose": winOrLose
            }
        }).done(function () {
            $("#message_leave").css("display", "flex");
        }).fail(function () {
            // 通信失敗時の処理を記述
            console.log("error")
        });
    };

    // firebaseの監視開始以降に必要な処理。
    function moniterFirebase() {
        gameServer.doc(serverID).onSnapshot(doc => {
            asaYoru = doc.data().asayoru;
            console.log(asaYoru);
            // 最初共通処理
            if (matching == false && doc.data().guestname != "unset") {
                if (you == "host") {
                    enemyName = doc.data().guestname;
                    enemyHand = doc.data().guesthand;
                    matching = true;
                    $("#wait_message").css("display", "none");
                } else if (you == "guest") {
                    enemyName = doc.data().hostname;
                    enemyHand = doc.data().hosthand;
                    asaYoru = doc.data().asayoru;
                    asayoruSwitch();
                    matching = true;
                    $("#wait_message").css("display", "none");
                }
                $("#your_info").text(yourName + ":" + yourPoint);
                $("#asayoru_info").text("今は" + asaYoru + "なり。");
                $("#enemy_info").text(enemyName + ":" + enemyPoint);

                // マッチ処理
                for (let i = 0; i < yourHand.length; i++) {
                    $("#your_hands").append(`<div id="${cardArray[yourHand[i]][0]}" class="your_cards">${cardArray[yourHand[i]][1]}</div>`);
                    $("#enemy_hands").append(`<div id="enemy${i}" class="enemy_cards"></div>`);
                }

                // usedじゃないカードに対してドラッグイベントを付与。
                if ($(".your_cards").hasClass("used")) {

                } else {
                    $(".your_cards").draggable({
                        revert: true,
                        revertDuration: 200
                    });
                }

                // ドラッグイベント
                $(".your_cards").on("mousedown", function () {
                    const selected = $(this).attr("id");
                    const selectedInt = parseInt(selected);
                    $("#your_drop").droppable({
                        accept: ".your_cards",
                        drop: function () {
                            $(`#${selected}`).addClass("used");
                            if (you == "host") {
                                $("#message_box").css("display", "flex");
                                $("#message_text").text("通信待機中");
                                gameServer.doc(serverID).update({
                                    hostplay: selectedInt
                                });
                            } else if (you == "guest") {
                                $("#message_box").css("display", "flex");
                                $("#message_text").text("通信待機中");
                                gameServer.doc(serverID).update({
                                    guestplay: selectedInt
                                });
                            }

                        }
                    });
                });
            };

            // 両者カードドロップ完了時
            // カードの配列番号を取得→class名としてajaxで送る→resultとして現れたpointをFirebase update。
            if (doc.data().hostplay != "unset" && doc.data().guestplay != "unset") {
                function a() {
                    $.ajax({
                        type: "POST",
                        url: "point_caliculate.php",
                        data: {
                            "yourpoint": yourPoint,
                            "yourplay": cardArray[yourPlay][2],
                            "enemyplay": cardArray[enemyPlay][2],
                            "asayoru": asaYoru
                        }
                    }).done(function (result) {
                        if (you == "host") {
                            gameServer.doc(serverID).update({
                                hostpoint: result,
                                hostplay: "unset"
                            });
                        } else if (you == "guest") {
                            gameServer.doc(serverID).update({
                                guestpoint: result,
                                guestplay: "unset"
                            });
                        };
                    }).fail(function () {
                        // 通信失敗時の処理を記述
                        console.log("error")
                    });
                };
                if (you == "host") {
                    yourPlay = doc.data().hostplay;
                    enemyPlay = doc.data().guestplay;
                    a();
                } else if (you == "guest") {
                    yourPlay = doc.data().guestplay;
                    enemyPlay = doc.data().hostplay;
                    a();
                }

            };

            // point表示更新, Firebase更新処理。どっちにifを入れるか逆でもいい(多分いままで逆)。
            // pointを取得→pointの表示を更新→firebaseのpointを"unset"する。
            // turnCounterが0のとき(実際には6番目のとき), 勝敗判定を行う等処理に移る。
            if (you == "host") {
                if (doc.data().hostpoint != "unset" && doc.data().guestpoint != "unset") {
                    yourPoint = doc.data().hostpoint;
                    enemyPoint = doc.data().guestpoint;
                    // host側だけ挙動が重くて処理が間に合わないのか, 微妙にdelayをかけないといけない。
                    setTimeout(function () {
                        $("#your_info").text(yourName + ":" + yourPoint);
                        $("#enemy_info").text(enemyName + ":" + enemyPoint);
                        asaYoruRNG();
                        gameServer.doc(serverID).update({
                            hostpoint: "unset",
                            asayoru: asaYoru
                        });
                        $("#message_close").css("display", "flex");
                    }, 300);
                };
            } else if (you == "guest") {
                if (doc.data().hostpoint != "unset" && doc.data().guestpoint != "unset") {
                    yourPoint = doc.data().guestpoint;
                    enemyPoint = doc.data().hostpoint;
                    setTimeout(function () {
                        $("#your_info").text(yourName + ":" + yourPoint);
                        $("#enemy_info").text(enemyName + ":" + enemyPoint);
                        gameServer.doc(serverID).update({
                            guestpoint: "unset"
                        });
                        $("#message_close").css("display", "flex");
                    }, 300);
                };
            };
        });
    };

    // ブラウザ起動時処理
    $(document).ready(async function () {
        await hostOrGuest();
        function a() {
            if (you == "host") {
                hostAction();
            } else if (you == "guest") {
                guestAction();
            }
        }
        await a();
        moniterFirebase();
    });

    // yourcardの情報表示
    // 動的生成の場合こう書かないとhover event起こせない。
    $(document).on({
        "mouseenter": function () {
            $(".wrapper").append('<div id="text_window"></div>')
            const selected = $(this).text();
            $.ajax({
                type: "POST",
                url: "textget.php",
                data: {
                    "cardname": selected
                }
            }).done(function (result) {
                $("#text_window").text(result);
            }).fail(function () {
                // 通信失敗時の処理を記述
                console.log("error")
            });
        },
        "mouseleave": function () {
            $("#text_window").remove();
        }
    }, ".your_cards");

    // enemycardの情報表示
    $(document).on({
        "mouseenter": function () {
            $(".wrapper").append('<div id="text_window"></div>')
            const selected = $(this).text();
            $.ajax({
                type: "POST",
                url: "textget.php",
                data: {
                    "cardname": selected
                }
            }).done(function (result) {
                $("#text_window").text(result);
            }).fail(function () {
                // 通信失敗時の処理を記述
                console.log("error")
            });
        },
        "mouseleave": function () {
            $("#text_window").remove();
        }
    }, ".enemy_cards" + ".used");

    // とじるボタン
    $("#message_close").on("click", function () {
        turnCounter--;
        if (turnCounter != 0) {
            $("#message_text").text("");
            $("#message_close").css("display", "none");
            $("#message_box").css("display", "none");
            $(`#enemy${turnCounter}`).text(cardArray[enemyPlay][1]);
            $(`#enemy${turnCounter}`).addClass("used");
            asayoruSwitch();
        } else if (turnCounter == 0) {
            $("#message_close").css("display", "none");
            judgeManager();
            finishManager();
        }
    });

    // 退出するボタン
    $("#message_leave").on("click", function () {
        if (you == "host") {
            gameServer.doc(serverID).delete();
            window.location.href = "index.php";
        } else if (you == "guest") {
            window.location.href = "index.php";
        };
    });

});