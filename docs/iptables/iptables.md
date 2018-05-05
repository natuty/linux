## iptables配置——NAT地址转换



 

example:

目的IP转换：

​	iptables -t nat -A PREROUTING -d 192.168.56.2 -p tcp  -j DNAT --to 172.17.0.2