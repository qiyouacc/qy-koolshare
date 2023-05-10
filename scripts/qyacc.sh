#!/bin/sh

url="https://static.qiyou.cn/upgrade/ljb/plugin/qyplug.sh"
sh_file="/tmp/qyplug.sh"
ret_file="/tmp/qyplug.ret"
pid_file="/tmp/qyplug.get"
pid=$$

echo ${pid} > ${pid_file}

if [ -e /tmp/qy ]; then
	cd /tmp/qy && ./init.sh stop
	rm -rf /tmp/qy
fi

while true
do
	rm -rf ${sh_file} ${ret_file}
	wget -q -T 30 "${url}" -O ${sh_file} --no-check-certificate
	if [ -e ${sh_file} ]; then
		export QY_NOT_INSTALL=1
		sh ${sh_file} &
		sleep 3
	fi

	sleep 3
	[ ! -e ${ret_file} ] || break
	sleep 30
done

rm -rf ${pid_file}
