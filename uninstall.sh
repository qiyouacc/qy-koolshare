#!/bin/sh

source /koolshare/scripts/base.sh
TITLE="奇游联机宝"

echo_date "停止 ${TITLE}插件！"
sh /koolshare/scripts/qyacc_config.sh stop

rm -rf /koolshare/res/icon-qyacc.png
rm -rf /koolshare/res/qrcode-qyacc.png
rm -rf /koolshare/webs/Module_qyacc.asp
rm -rf /koolshare/scripts/qyacc.sh
rm -rf /koolshare/scripts/qyacc_config.sh
rm -rf /koolshare/scripts/qyacc_status.sh
rm -rf /koolshare/scripts/uninstall_qyacc.sh

rm -rf /koolshare/init.d/S99qyacc.sh
rm -rf /koolshare/init.d/N99qyacc.sh
