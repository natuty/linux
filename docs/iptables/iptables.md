# iptables NAT规则

**nat表需要的三个链：**

  1.PREROUTING:可以在这里定义进行目的NAT的规则，因为路由器进行路由时只检查数据包的目的ip地址，所以为了使数据包得以正确路由，我们必须在路由之前就进行目的NAT;
  2.POSTROUTING:可以在这里定义进行源NAT的规则，系统在决定了数据包的路由以后在执行该链中的规则。
  3.OUTPUT:定义对本地产生的数据包的目的NAT规则。

**需要用到的几个动作选项**：（真实环境中用大写）

| redirect   | 将数据包重定向到另一台主机的某个端口，通常用实现透明代理和对外开放内网某些服务。 |
| ---------- | ---------------------------------------- |
| snat       | 源地址转换，改变数据包的源地址                          |
| dnat       | 目的地址转换，改变数据包的目的地址                        |
| masquerade | IP伪装，只适用于ADSL等动态拨号上网的IP伪装，如果主机IP是静态分配的，就用snat |

PRERROUTING:DNAT 、REDIRECT   （路由之前）只支持-i，不支持-o。在作出路由之前，对目的地址进行修改

 POSTROUTING:SNAT、MASQUERADE （路由之后）只支持-o，不支持-i。在作出路由之后，对源地址进行修改

 OUTPUT:DNAT 、REDIRECT   （本机）DNAT和REDIRECT规则用来处理来自NAT主机本身生成的出站数据包.

一、打开内核的路由功能。

   要实现nat，要将文件/proc/sys/net/ipv4/ip_forward内的值改为1，（默认是0）。

 

二、nat不同动作的配置

 1）MASQUERADE：是动态分配ip时用的IP伪装：在nat表的POSTROUTING链加入一条规则:所有从ppp0口送出的包会被伪装（MASQUERADE）

 [root@localhost]# iptables -t nat -A POSTROUTING -o ppp0 -j MASQUERADE

要想系统启动时自动实现nat，在/etc/rc.d/rc.local文件的末尾添加

   [root@localhost]# echo "1">/proc/sys/net/ipv4/ip_forward

   [root@localhost]# /sbin/iptables -t nat -A POSTROUTING -o ppp0 -j MASQUERADE

 2) SNAT:一般正常共享上网都用的这个。

 所有从eth0（外网卡）出来的数据包的源地址改成61.99.28.1（这里指定了一个网段，一般可以不指定）

 [root@localhost]# iptables -t nat -A POSTROUTING -s 192.168.1.0/24 -o eth0 -j SNAT --to 61.99.28.1

3）DNAT:目的nat 做智能DNS时会用到

 智能DNS：就是客户端在dns项里无论输入任何ip，都会给他定向到服务器指定的一个dnsip上去。

 在路由之前所有从eth0（内网卡）进入的目的端口为53的数据包，都发送到1.2.3.4这台服务器解析。

 [root@localhost]# iptables -t nat -I PREROUTING -i eth0 -p udp --dport 53 -j DNAT --to-destination 1.2.3.4:53

 [root@localhost]# iptables -t nat -I PREROUTING -i eth0 -p tcp --dport 53 -j DNAT --to-destination 1.2.3.4:53

4）REDIRECT：重定向，这个在squid透明代理时肯定要用到它

 所有从eth1进入的请求80和82端口的数据，被转发到80端口，由squid处理。

 [root@localhost]# iptables -t nat -A PREROUTING - -i eth1 -p tcp -m multiport --dports 80,82 -j REDIRECT --to-ports 80



example:

目的IP转换：

​	iptables -t nat -A PREROUTING -d 192.168.56.2 -p tcp  -j DNAT --to 172.17.0.2