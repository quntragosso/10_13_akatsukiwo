$(function () {
    // アカウントを作るボタン
    $("#register_btn").on("click", function () {
        $(".wrapper").fadeOut(500);
        setTimeout(function () {
            $("#form_box_wrap").fadeIn(500);
            $(".registers").css("display", "flex");
        }, 1000)
    });

    // ログインボタン
    $("#login_btn").on("click", function () {
        $(".wrapper").fadeOut(500);
        setTimeout(function () {
            $("#form_box_wrap").fadeIn(500);
            $(".logins").css("display", "flex");
        }, 1000);
    });

    // 登録とログインの切り替え
    $("#registers_switch").on("click", function () {
        $(".registers").css("display", "none");
        $(".logins").css("display", "flex");
    });

    $("#logins_switch").on("click", function () {
        $(".logins").css("display", "none");
        $(".registers").css("display", "flex");
    });

    // 戻るボタン
    $(".return").on("click", function () {
        $("#form_box_wrap").fadeOut(500);
        $("#input_username").val("");
        $("#input_password").val("");
        setTimeout(function () {
            $(".wrapper").fadeIn(500);
            $(".registers").css("display", "none");
            $(".logins").css("display", "none");
        }, 1000);
    });

    // とじるボタン。動的生成要素の削除
    $(".close").on("click", function () {
        $(".boxes").css("display", "none");
        $("#main_box").css("display", "flex");
        $("#ranking").empty();
        $("#pool").empty();
    });

    // 登録処理。微妙にアニメが入ってからリロード。ダサい。
    $("#registers_submit").on("click", function () {
        $.ajax({
            type: "POST",
            url: "register_act.php",
            data: {
                "username": $("#input_username").val(),
                "password": $("#input_password").val(),
            }
        }).done(function (result) {
            if (result == "inputerror") {
                alert("入力情報に誤りがあるか、このなまえは使用できません。");
                $("#input_username").val("");
                $("#input_password").val("");
            } else {
                window.location.href = "index.php";
            }
        }).fail(function () {
            // 通信失敗時の処理を記述
            console.log("error")
        });
    });

    // ログイン処理。微妙にアニメが…
    $("#logins_submit").on("click", function () {
        $.ajax({
            type: "POST",
            url: "login_act.php",
            data: {
                "username": $("#input_username").val(),
                "password": $("#input_password").val(),
            }
        }).done(function (result) {
            if (result == "inputerror") {
                alert("入力情報に誤りがあるか、このなまえは使用できません。");
                $("#input_username").val("");
                $("#input_password").val("");
            } else {
                $("#form_box_wrap").fadeOut(500);
                setTimeout(function () {
                    window.location.href = "index.php";
                }, 1000)
            }
        }).fail(function () {
            // 通信失敗時の処理を記述
            console.log("error")
        });
    });

    // あそびかたボタン
    $("#rule_btn").on("click", function () {
        $(".boxes").css("display", "none");
        $("#rule_box").css("display", "flex");
    });

    // ふだのやまボタン。カードプールの取得と生成。
    $("#pool_btn").on("click", function () {
        $(".boxes").css("display", "none");
        $("#pool_box").css("display", "flex");
        $.ajax({
            url: "pool_get.php",
        }).done(function (result) {
            const parseResult = JSON.parse(result);

            for (let i = 0; i < parseResult.length; i += 0) {
                let num = i;
                $("#pools").append(`<div id="table${num}" class="pools_div"></div>`);
                for (let j = 0; j < 4; j++) {
                    $(`#table${num}`).append(`<div class="cards">${parseResult[i]}</div>`);
                    i++
                };
            };

        }).fail(function () {
            // 通信失敗時の処理を記述
            console.log("error")
        });
    });

    // カードをhoverするとカードテキストを出す。
    $(document).on({
        "mouseenter": function () {
            $("#pools").append('<div id="text_window"></div>')
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
    }, ".cards");

    // じゅんいボタン。rankingの取得と生成。
    $("#ranking_btn").on("click", function () {
        $(".boxes").css("display", "none");
        $("#ranking_box").css("display", "flex");
        $.ajax({
            url: "ranking_get.php",
        }).done(function (result) {
            const parseResult = JSON.parse(result);
            console.log(parseResult);
            for (let i = 0; i < parseResult.length; i++) {
                $("#ranking").append(`<li>${i + 1}位　${parseResult[i][1]}:${parseResult[i][0]}</li>`);
            };
        }).fail(function () {
            // 通信失敗時の処理を記述
            console.log("error")
        });
    });
});
