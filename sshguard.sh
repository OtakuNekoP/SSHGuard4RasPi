#!/bin/bash
last_ip=""
num="0"
tail -f /var/log/auth.log | while read LINE; do
{
 if [[ "${LINE}" =~ "Failed" ]]; then
ip="$(echo ${LINE} | awk '{print $(NF-3)}')"
 if [[ "$last_ip" == "$ip" ]]; then
#echo "block $ip"
iptables -A INPUT -s "$ip" -j DROP
num=`expr $num + 1`
echo -e "\033[41;37mNo. $num. Block $ip success.\033[0m"
 fi
last_ip=$ip
echo $LINE
 fi
}
done

