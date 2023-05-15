#!/bin/sh

source /koolshare/scripts/base.sh
get_file="/tmp/qyplug.get"
ret_file="/tmp/qyplug.ret"
pid_file="/tmp/qyplug.pid"

stop_qy(){
	pid=`cat ${get_file} 2> /dev/null`
	echo_date "qyacc config stop: ${pid}"
	[ "${pid}" = "" ] || kill -9 ${pid}
	rm -rf ${get_file}

	sleep 3

	if [ -e /tmp/qyplug.sh ]; then
		sh /tmp/qyplug.sh stop
		rm -rf /tmp/qyplug.sh
	fi

	if [ -e /tmp/qy ]; then
		cd /tmp/qy && ./init.sh stop
		rm -rf /tmp/qy
	fi
}

start_qy(){
	stop_qy

	/koolshare/scripts/qyacc.sh &
	sleep 1
	pid=`cat ${get_file} 2> /dev/null`
	echo_date "qyacc config start: ${pid}"
}

#=========================================================
logger "[软件中心]: ${ACTION} QYACC插件！"

case $ACTION in
stop)
	stop_qy
	;;
start)
	start_qy
	;;
*)
	echo_date "not support"
	;;
esac

