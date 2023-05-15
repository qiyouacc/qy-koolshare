#!/bin/sh

source /koolshare/scripts/base.sh

get_file="/tmp/qyplug.get"
ret_file="/tmp/qyplug.ret"
pid_file="/tmp/qyplug.pid"
tmp_file="/tmp/qyplug.tmp"

status_qy() {
	status=`cat ${ret_file} 2> /dev/null`
	get=`cat ${get_file} 2> /dev/null`
	pid=`cat ${pid_file} 2> /dev/null`
	acc=`pidof qy_acc 2> /dev/null`

	if [ "${status}" = "succeeded" ]; then
		if [ "${acc}" = "" ]; then
			echo "异常"
		else
			echo "正常"
		fi
		return
	fi
	if [ "${status}" = "notsupport" ]; then
		echo "此型号不支持"
		return
	fi
	if [ "${status}" = "getpkgerr" ]; then
		echo "下载中"
		return
	fi
	if [ "${get}" != "" ] && [ -e "/proc/${get}" ]; then
		echo "安装中"
		return
	fi
	if [ "${pid}" != "" ] && [ -e "/proc/${pid}" ]; then
		echo "安装中"
		return
	fi
	echo "未启动"
}

status=`status_qy`

export QYTOP_DIR=/tmp/qy
export PATH=${QYTOP_DIR}/bin:${PATH}
export LD_LIBRARY_PATH=${QYTOP_DIR}/lib:${LD_LIBRARY_PATH}

if [ "${status}" = "正常" ]; then
	qy_acc mesg pluginfo &> ${tmp_file}

	retinfo=`sed -n 's;^RETURN=;;p' ${tmp_file} 2> /dev/null`
	if [ "${retinfo}" != "succ" ]; then
		status="未启动"
	fi
fi

version=`sed -n 's;^VERSION=;;p' ${tmp_file} 2> /dev/null`
model=`sed -n 's;^MODE=QYPLUG_ASUS_;ASUS-;p' ${tmp_file} 2> /dev/null`
mac=`sed -n 's;^DEV_MAC=;;p' ${tmp_file} 2> /dev/null`
sn=`sed -n 's;^SN=;;p' ${tmp_file} 2> /dev/null`
date=`sed -n 's;^DATE=;;p' ${tmp_file} 2> /dev/null`
name=`sed -n 's;^MODEL=;;p' ${tmp_file} 2> /dev/null`
rm -rf ${tmp_file}

http_response "{\\\"status\\\":\\\"${status}\\\",\\\"version\\\":\\\"${version}\\\",\\\"model\\\":\\\"${model}\\\",\\\"mac\\\":\\\"${mac}\\\",\\\"sn\\\":\\\"${sn}\\\",\\\"name\\\":\\\"${name}\\\",\\\"date\\\":\\\"${date}\\\"}"
