#!/bin/sh

source /koolshare/scripts/base.sh
DIR=$(cd $(dirname $0); pwd)
module=${DIR##*/}
TITLE="奇游联机宝"
DESCR="主机加速"
PLVER=$(cat ${DIR}/version)

echo_date "安装插件相关文件..."
cd /tmp
cp -rf /tmp/${module}/res/* /koolshare/res/
cp -rf /tmp/${module}/webs/* /koolshare/webs/
cp -rf /tmp/${module}/scripts/* /koolshare/scripts/
cp -rf /tmp/${module}/uninstall.sh /koolshare/scripts/uninstall_${module}.sh

chmod 755 /koolshare/scripts/${module}.sh >/dev/null 2>&1
chmod 755 /koolshare/scripts/${module}_config.sh >/dev/null 2>&1
chmod 755 /koolshare/scripts/uninstall_${module}.sh >/dev/null 2>&1

ln -sf /koolshare/scripts/${module}_config.sh /koolshare/init.d/S99${module}.sh
ln -sf /koolshare/scripts/${module}_config.sh /koolshare/init.d/N99${module}.sh

echo_date "设置插件默认参数..."
dbus set ${module}_version="${PLVER}"
dbus set softcenter_module_${module}_version="${PLVER}"
dbus set softcenter_module_${module}_install="1"
dbus set softcenter_module_${module}_name="${module}"
dbus set softcenter_module_${module}_title="${TITLE}"
dbus set softcenter_module_${module}_description="${DESCR}"

echo_date "${TITLE}插件安装完毕！"
rm -rf /tmp/${module}* >/dev/null 2>&1

echo_date "运行 ${TITLE}插件！"
sh /koolshare/scripts/${module}_config.sh start
