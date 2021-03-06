---
layout: page
title: linux sysctl命令详解
tags:
  - linux
---
sysctl命令用于linux运行时配置内核参数，这些参数位于/proc/sys目录下。sysctl配置与显示/proc/sys目录下的内核参数。sysctl命令可以在系统运行时设置这些参数，但是重启系统之后这些参数都会失效，如果想配置的参数永久有效，可将参数配置在/etc/sysctl.conf文件中。 
#### sysctl命令格式：
**sysctl [options] [variable[=value] ...]**  
**Options**:  
**-a, -all 列举所有的变量** 
**-A -a的别名用法，功能同-a**  
**-X -a的别名用法，功能同-a**  
**-a --deprecated 列举出所有的变量，包括重复值**
**-b, --binary 不换行输出所有变量值**  
**-e, --ignore 忽略错误的变量信息**  
**-N, --names  只列举变量名，不展示变量值**  
**-n, --values 只列举变量值，不展示变量名**  
**-p, --load[=\<file\>] 载入配置文件，如/etc/sysctl.conf**  
**-f -p的别名用法，功能同-p**  
**-f --system 从所有的系统文件中读取值**  
**-r, --pattern \<expression\> 根据正则表达式查找设置**  
**-q, --quiet 不展示变量的设置**  
**-w, --write 给变量设置值**  
**-o 什么也不做**  
**-x 什么也不做**  
**-d -h的别名用法**  
**-h, --help 展示帮助**  
**-V, --version 输出版本信息**  
  
- - - -

#### 常用参数设置
**fs.file-max = 99999**  
**net.ipv4.tcp_tw_reuse = 1**  
**net.ipv4.tcp_keepalive_time = 600**  
**net.ipv4.tcp_fin_timeout = 30**  
**net.ipv4.tcp_max_tw_buckets = 5000**  
**net.ipv4.tcp_max_syn_backlog = 1024**  
**net.ipv4.ip_local_port_range = 1024  61000**  
**net.ipv4.tcp_rmem = 4096 32768 262142**  
**net.ipv4.tcp_wmem = 4096 32768 262142**  
**net.core.netdev_max_backlog = 8096**  
**net.core.rmem_default = 262144**  
**net.core.wmem_default = 262144**  
**net.core.rmem_max = 2097152**  
**net.core.wmem_max = 2097152**  

- - - -

#### 参数解释
**file-max：表示进程可以同时打开的最大句柄数，这个参数直接限制最大并发连接数。**  
**tcp_tw_reuse：设置为1,表示允许将TIME-WAIT状态的socket重新用于新的TCP链接。这个对服务器来说很有意义，因为服务器上总会有大量TIME-WAIT状态的连接。**  
**tcp_keepalive_time：表示当keepalive启用时，TCP发送keepalive消息的频度。默认是7200 seconds，意思是如果某个TCP连接在idle 2小时后，内核才发起probe。若将其设置得小一点，可以更快地清理无效的连接。**  
**tcp_fin_timeout：表示当服务器主动关闭连接时，socket保持在FIN—WAIT-2状态的最大时间。**  
**tcp_max_buckets：表示操作系统允许TIME_WAIT套接字数量的最大值，如果超过这个数字，TIME_WAIT套接字将立刻被清除并打印告警信息。默认是180000，过多TIME_WAIT套接字会使web服务器变慢。**  
**tcp_max_syn_backlog：表示TCP三次握手建立阶段接受SYN请求队列的最大长度，默认是1024，将其设置大一些可以在nginx繁忙来不及accept新连接时，linux不至于丢失客户端发起的连接请求。**  
**ip_local_port_range：定义在UDP和TCP连接中本地端口的取值范围。**  
**tcp_rmem：定义TCP接受缓存的最小值，默认值，最大值。**  
**tcp_wmem：定义了TCP发送缓存的最小值，默认值，最大值。**  
**netdev_max_backlog：当网卡接收数据包的速度大于内核处理速度时，会有一个队列保存这些数据包。这个参数表示该队列的最大值。**  
**rmem_default：表示内核套接字接收缓存区默认大小。**  
**wmem_default：表示内核套接字发送缓存区默认大小。**  
**rmem_max：表示内核套接字接收缓存区的最大值。**  
**wmem_max：表示内核套接字发送缓存区的最大值。**   
