# Symbolic-links

一些敏感文件的符号链接，方便测试文件读取漏洞。

**请直接导入该 git 仓库或压缩包，以免索引到真实的本地文件**。

本地生成的符号链接再打包时注意加参数，比如：

```bash
zip -y .....
```

## Usage
```bash
# 请自行修改 list.txt
./ln.sh
```

## List

前辈们整理的一点敏感文件，欢迎 PR 补充。

```bash
/etc/passwd
/etc/shadow
/etc/group
/etc/hosts
/etc/ssh/ssh_config
/etc/issue # 显示Linux核心的发行版本信息（用于本地登陆用户）
/etc/hosts.deny # 定义禁止访问本机的主机
/etc/mtab     # 包含当前安装的文件系统列表   有时可以读取到当前网站的路径
/etc/protocols # 列举当前可用的协议
/etc/resolv.conf # DNS客户机配置文件，设置DNS服务器的IP地址及DNS域名 
/etc/logrotate.conf # 维护 /var/log 目录中的日志文件
/etc/ld.so.conf # 动态链接程序（Dynamic Linker）的配置

/proc/sched_debug   # 提供cpu上正在运行的进程信息，可以获得进程的pid
/proc/mounts    # 挂载的文件系统列表
/proc/net/arp   # arp表，可以获得内网其他机器的地址
/proc/net/route # 路由表信息
/proc/net/tcp   # 活动连接的信息
/proc/net/udp  # 活动连接的信息
/proc/net/fib_trie # 路由缓存
/proc/version  # 内核版本

/proc/[PID]/cmdline # 可能包含有用的路径信息
/proc/[PID]/environ # 程序运行的环境变量信息
/proc/[PID]/cwd     # 当前进程的工作目录
/proc/[PID]/fd/[#]  # 访问file descriptors，某写情况可以读取到进程正在使用的文件，比如access.log
```
