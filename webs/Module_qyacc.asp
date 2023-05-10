<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta HTTP-EQUIV="Pragma" CONTENT="no-cache" />
    <meta HTTP-EQUIV="Expires" CONTENT="-1" />
    <link rel="shortcut icon" href="images/favicon.png" />
    <link rel="icon" href="images/favicon.png" />
    <title>软件中心 - 奇游联机宝</title>
    <link rel="stylesheet" type="text/css" href="index_style.css" />
    <link rel="stylesheet" type="text/css" href="form_style.css" />
    <link rel="stylesheet" type="text/css" href="usp_style.css" />
    <link rel="stylesheet" type="text/css" href="ParentalControl.css">
    <link rel="stylesheet" type="text/css" href="css/element.css">
    <link rel="stylesheet" type="text/css" href="res/softcenter.css">
    <script language="JavaScript" type="text/javascript" src="/state.js"></script>
    <script language="JavaScript" type="text/javascript" src="/popup.js"></script>
    <script language="JavaScript" type="text/javascript" src="/validator.js"></script>
    <script language="JavaScript" type="text/javascript" src="/help.js"></script>
    <script language="JavaScript" type="text/javascript" src="/general.js"></script>
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/disk_functions.js"></script>
    <script language="JavaScript" type="text/javascript" src="/client_function.js"></script>
    <script type="text/javascript" src="/switcherplugin/jquery.iphone-switch.js"></script>
    <script type="text/javascript" src="/res/softcenter.js"></script>
    <style>
        .mask_bg {
            position: absolute;
            margin: auto;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 100;
            /*background-color: #FFF;*/
            background: url(images/popup_bg2.gif);
            background-repeat: repeat;
            filter: progid:DXImageTransform.Microsoft.Alpha(opacity=60);
            -moz-opacity: 0.6;
            display: none;
            /*visibility:hidden;*/
            overflow: hidden;
        }

        .mask_floder_bg {
            position: absolute;
            margin: auto;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 300;
            /*background-color: #FFF;*/
            background: url(images/popup_bg2.gif);
            background-repeat: repeat;
            filter: progid:DXImageTransform.Microsoft.Alpha(opacity=60);
            -moz-opacity: 0.6;
            display: none;
            /*visibility:hidden;*/
            overflow: hidden;
        }

        body {
            background: #000;
            color: #fff;
            display: block !important
        }

        .main {
            background: #1a1d1f;
            border-radius: 8px;
            box-sizing: border-box;
            padding: 25px 25px 36px;
            width: 760px
        }

        .main .header {
            align-items: center;
            display: flex;
            justify-content: space-between
        }

        .main .header .title {
            color: #fcfcfc;
            font-size: 20px;
            line-height: 32px;
            padding-left: 32px;
            position: relative
        }

        .main .header .title:before {
            background: linear-gradient(78deg, #0089ff, #00dbff);
            border-radius: 4px;
            content: " ";
            height: 32px;
            left: 0;
            position: absolute;
            top: 0;
            width: 16px
        }

        .main .header .back {
            align-items: center;
            background: #1a1d1f;
            border: 2px solid #272b30;
            border-radius: 12px;
            color: #fcfcfc;
            cursor: pointer;
            display: flex;
            font-size: 14px;
            height: 40px;
            justify-content: center;
            width: 95px
        }

        .main .header .back i {
            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAQFJREFUWEftlrFqAzEMhv/f7kNmyFJClw6lkCFDoJCDDIXSoUspXRLIy+UdJDtc4MCQ3tXc2dFyXo39fciSJcYYPQwXZ4E5AmMjEEJ4A3B2zv1MyeFRSSgiO5LbFuy9f7irgIjsSW5aKMnGOdfcTSCE8B5jXJeCX+/JzQER+ST5UhKeLaCqXwCeS8OzBFT1G8BTDfi/Aqr6C+CxFnxQQFUPAJY14b0CqnoCsKgN/1NARD5Ivk6p7YGzR+/9Kt2/KUNzgdbO9Am68JgmYSJhV4aJhN1HlEjYfcWdhGkz6iRM23ESCbuBJJGwG8mS57AbSkv2ieyRrCR0sBnVAvXdO0fgAns50iGpFhHBAAAAAElFTkSuQmCC);
            background-repeat: no-repeat;
            background-size: 100% 100%;
            display: block;
            height: 15px;
            margin-right: 8px;
            width: 18px
        }

        .main .support {
            color: hsla(0, 0%, 94%, .7);
            font-size: 15px;
            line-height: 24px;
            margin-top: 18px
        }

        .main .tables {
            margin-top: 34px;
            width: 100%
        }

        .main .tables .header {
            background: #242731;
            border-bottom: 1px solid hsla(0, 0%, 89%, .1);
            border-radius: 12px 12px 0 0;
            box-sizing: border-box;
            color: #fff;
            font-size: 14px;
            font-weight: 500;
            height: 56px;
            line-height: 56px;
            line-height: 24px;
            padding-left: 15px;
            width: 100%
        }

        .main .tables .body {
            background: #4fbf67;
            border-radius: 12px;
            height: 57px;
            width: 100%;
            align-items: flex-start!important;
            display: flex;
            justify-content: center;
            flex-direction: column;
            padding-left: 30px;
            box-sizing: border-box;
        }

        .main .tables .body,
        .other {
            align-items: center;
            display: flex
        }

        .other {
            justify-content: space-between;
            margin-top: 20px;
            width: 760px
        }

        .other .rules {
            background: #1a1d1f;
            box-sizing: border-box;
            padding: 30px;
            width: 580px
        }

        .other .rules .title {
            color: #fcfcfc;
            font-size: 20px;
            font-weight: 600;
            line-height: 32px;
            margin-bottom: 8px
        }

        .other .rules p {
            color: hsla(0, 0%, 100%, .8);
            font-size: 12px;
            line-height: 24px;
            margin: 0 0 14px
        }

        .other .rules p span {
            color: #4fbf67
        }

        .other .rules p a {
            color: #0089ff;
            text-decoration: underline
        }

        .other .qr-wrapper {
            align-items: center;
            background: #1a1d1f;
            box-sizing: border-box;
            display: flex;
            flex-direction: column;
            height: 352px;
            padding-top: 48px;
            width: 165px
        }

        .other .qr-wrapper img {
            height: 110px;
            width: 110px
        }

        .other .qr-wrapper p {
            color: #fff;
            font-size: 12px;
            line-height: 17px;
            margin: 17px 0 0;
            text-align: center
        }

        .btn-set {
            align-items: center;
            background: #0089ff;
            border-radius: 24px;
            color: #fff;
            display: flex;
            font-size: 14px;
            font-weight: 600;
            height: 48px;
            justify-content: center;
            margin: 25px auto 0;
            width: 120px
        }
        .btn-set input {
            width: 100%;
            height: 100%;
            background: transparent!important;
            border: none;
            color: #fff;
            cursor: pointer;
        }
        .btn-set input:hover {
            background: transparent!important;
        }
    </style>
    <script>
<% get_AiDisk_status(); %>
<% disk_pool_mapping_info(); %>
var PROTOCOL = "cifs";
var pluginUrl = '';
var globalStatus = ''

        function init() {
            show_menu(menu_hook);
            get_status();
        }

        function get_status() {
            var id = parseInt(Math.random() * 100000000);
            var postData = { "id": id, "method": "qyacc_status.sh", "params": [1], "fields": "" };
            $.ajax({
                type: "POST",
                cache: false,
                url: "/_api/",
                data: JSON.stringify(postData),
                dataType: "json",
                success: function (response) {
                    var res = JSON.parse(response.result)
                    E("status").innerHTML = res.status;
                    globalStatus = res.status;
                    E("version").innerHTML = res.version;
                    var mac = res.mac
                    var sn = res.sn
                    var model = res.model
                    pluginUrl = `https://www.qiyou.cn/specials/qyacc?sn=${sn}&mac=${mac}&ts=${new Date().getTime()}&model=${model}`
                    setTimeout("get_status();", 10000);
                },
                error: function () {
                    setTimeout("get_status();", 5000);
                }
            });
        }

        function menu_hook(title, tab) {
            tabtitle[tabtitle.length - 1] = new Array("", "奇游联机宝插件");
            tablink[tablink.length - 1] = new Array("", "Module_qyacc.asp");
        }

        function jump_h5() {
            if (globalStatus === '正常') {
                window.open(pluginUrl)
            } else {
                alert(`当前状态：${globalStatus}`)
            }
        }
    </script>
</head>

<body onload="init();">
    <div id="TopBanner"></div>
    <div id="DM_mask" class="mask_bg"></div>
    <div id="DM_mask_floder" class="mask_floder_bg"></div>
    <div id="Loading" class="popup_bg"></div>
    <table class="content" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td width="17">&nbsp;</td>
            <td valign="top" width="202">
                <div id="mainMenu"></div>
                <div id="subMenu"></div>
            </td>
            <td valign="top">
                <div id="tabMenu" class="submenuBlock"></div>
                <div class="main">
                    <div class="header">
                      <div class="title">奇游联机宝插件</div>
                      <div class="back" id="return_btn" onclick="reload_Soft_Center();" title="返回软件中心"><i></i>返回</div>
                    </div>
                    <div class="support">支持PS、Switch、Xbox等主机加速</div>
                    <div class="tables">
                      <div class="body">
                        <p>
                          <span>运行状态 ：</span>
                          <span id="status">"获取中"</span>
                        </p>
                        <p>
                          <span>插件版本 ：</span>
                          <span id="version">"获取中"</span>
                        </p>
                      </div>
                    </div>
                  </div>
                  <div class="other">
                    <div class="rules">
                      <div class="title">加速须知</div>
                      <p>1.插件安装成功后，运行状态显示为：<span class="status">正常</span></p>
                      <p>2.在正常状态下，请点击下方「前往设置」按钮进行加速设置（也可打开联机宝app进行设置）</p>
                      <p>3.若运行状态显示为：不支持当前路由器，则表示您当前使用的路由器型号暂不支持加速，<a href="https://www.qiyou.cn/games/3610.html" target="_blank">点击查看可用型号</a></p>
                      <p>4.若状态显示为：未启动，请确保在【系统管理-操作模式】中已选中无线路由模式</p>
                      <p>5.如需其他帮助，点击前往设置，联系客服</p>
                      <p><span style=color:red>注:</span> 仅支持路由器在 <span class="status">无线路由器模式</span> | <span class="status">路由器模式</span> 下加速</p>
                    </div>
                    <div class="qr-wrapper">
                      <img src="/res/qrcode-qyacc.png" alt="" class="slogan">
                      <p>
                        扫码下载<br>
                        奇游联机宝app
                      </p>
                    </div>
                  </div>
                  <div class="btn-set">
                    <input class="button_gen" id="cmdBtn" onClick="jump_h5()" type="button"
                    value="前往设置" />
                    </div>
            </td>
            <td width="10" align="center" valign="top"></td>
        </tr>
    </table>
    <div id="footer"></div>
    <div id="OverlayMask" class="popup_bg">
        <div align="center">
            <iframe src="" frameborder="0" scrolling="no" id="popupframe" width="400" height="400"
                allowtransparency="true" style="margin-top:150px;"></iframe>
        </div>
    </div>
</body>

</html>
