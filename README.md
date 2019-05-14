Linux Commands Summary
===

* [基本命令](#基本命令)
  * [输出重定向](#输出重定向)
  * [ls: 查看当前目录下存在的文件和文件夹](#ls-查看当前目录下存在的文件和文件夹)
  * [mkdir: 创建文件夹](#mkdir-创建文件夹)
  * [rmdir: 删除文件夹(rmdir 命令的作用十分有限，因为只能刪除空目录，所以一旦目录中有内容，就会报错)](#rmdir-删除文件夹rmdir-命令的作用十分有限因为只能刪除空目录所以一旦目录中有内容就会报错)
  * [rm: 删除文件/目录](#rm-删除文件目录)
  * [cp: 复制文件/目录](#cp-复制文件目录)
  * [mv: 移动文件或改名](#mv-移动文件或改名)
  * [touch: 触摸一个文件](#touch-触摸一个文件)
  * [stat: 获取一个文件/文件夹的状态](#stat-获取一个文件文件夹的状态)
  * [cat:  用于查看一个文件的内容(内容较少)](#cat--用于查看一个文件的内容内容较少)
  * [more: 分屏显示文件内容](#more-分屏显示文件内容)
  * [head: 从文件开头显示信息](#head-从文件开头显示信息)
  * [tail: 显示文件尾部的内容](#tail-显示文件尾部的内容)
  * [ln: 在文件或者文件夹之间建立链接](#ln-在文件或者文件夹之间建立链接)
  * [help: 显示命令的帮助信息](#help-显示命令的帮助信息)
  * [man: 显示联机帮助手册](#man-显示联机帮助手册)
  * [info:  info格式的命令帮助指令](#info--info格式的命令帮助指令)
  * [sync: 将内存中数据强制写入磁盘中](#sync-将内存中数据强制写入磁盘中)
  * [shutdown: 关机/重启](#shutdown-关机重启)
  * [write: 向其它远程终端发送信息(比如我要关机,请及时备份)](#write-向其它远程终端发送信息比如我要关机请及时备份)
  * [reboot: 重启](#reboot-重启)
  * [half / poweroff: 关机](#half--poweroff-关机)
  * [init 1: 关机, init 6: 重启](#init-1-关机-init-6-重启)
  * [wc 文件名: 查看文本文件有多少行](#wc-文件名-查看文本文件有多少行)
  * [echo](#echo)
  * [alias: 命令别名](#alias-命令别名)
* [文件查找](#文件查找)
  * [whereis: 査找二进制命令、源文件和帮助文档的所在路径](#whereis-査找二进制命令源文件和帮助文档的所在路径)
  * [which:  查找命令的所在路径, 同时找到别名命令](#which--查找命令的所在路径-同时找到别名命令)
  * [locate(模糊匹配): 通过文件名在locate数据库文件中查找文件的路径](#locate模糊匹配-通过文件名在locate数据库文件中查找文件的路径)
  * [find: 通过文件信息和路径查找文件](#find-通过文件信息和路径查找文件)
  * [find中运用逻辑运算符:](#find中运用逻辑运算符)
  * [find中exec选项:](#find中exec选项)
* [软件安装](#软件安装)
  * [RPM包管理](#rpm包管理)
      * [包的安装/升级/卸载](#包的安装升级卸载)
      * [包的查询](#包的查询)
      * [包的校验](#包的校验)
      * [提取包的文件](#提取包的文件)
  * [Yum包管理](#yum包管理)
      * [包的安装/更新/删除](#包的安装更新删除)
      * [包的查询](#包的查询-1)
  * [Yum软件组管理](#yum软件组管理)
  * [源码包](#源码包)
      * [安装(以apache服务器为例)](#安装以apache服务器为例)
      * [更新(打补丁)](#更新打补丁)
* [软件的上传和下载](#软件的上传和下载)
  * [Windows与Linux之间的上传和下载](#windows与linux之间的上传和下载)
  * [Linux 与 Linux之间的上传和下载](#linux-与-linux之间的上传和下载)
* [用户/组管理](#用户组管理)
  * [/etc/passwd:  用户信息](#etcpasswd--用户信息)
  * [/etc/shadow: 用户密码信息](#etcshadow-用户密码信息)
  * [/etc/group: 组信息](#etcgroup-组信息)
  * [/etc/gshadow: 组密码信息](#etcgshadow-组密码信息)
  * [whoami: 查看当前用户](#whoami-查看当前用户)
  * [id: 查看当前用户的UID和GID](#id-查看当前用户的uid和gid)
  * [su 用户名: 切换用户](#su-用户名-切换用户)
  * [groups: 查看用户当前属于哪些组(初始组和附加组)](#groups-查看用户当前属于哪些组初始组和附加组)
  * [useradd: 添加新的系统用户](#useradd-添加新的系统用户)
  * [passwd: 设置/修改用户的密码信息](#passwd-设置修改用户的密码信息)
  * [chage: 设置/修改用户的密码信息(同passwd功能类似)](#chage-设置修改用户的密码信息同passwd功能类似)
  * [usermod: 修改用户的信息](#usermod-修改用户的信息)
  * [userdel: 删除用户](#userdel-删除用户)
  * [groupadd:  创建新的用户组](#groupadd--创建新的用户组)
  * [groupmod: 修改用户组](#groupmod-修改用户组)
  * [groupdel: 删除用户组](#groupdel-删除用户组)
  * [gpasswd: 将用户添加进组或者从组中删除(组管理员)](#gpasswd-将用户添加进组或者从组中删除组管理员)
  * [newgrp: 切换用户的有效组](#newgrp-切换用户的有效组)
* [权限管理](#权限管理)
  * [chgrp: 改变文件/文件夹的所属组](#chgrp-改变文件文件夹的所属组)
  * [chown:  改变文件/文件夹的所有者](#chown--改变文件文件夹的所有者)
  * [chmod: 改变文件/文件夹的权限](#chmod-改变文件文件夹的权限)
  * [umask: 设置新建文件和目录的默认权限](#umask-设置新建文件和目录的默认权限)
* [文件系统](#文件系统)
  * [df: 查看文件系统信息](#df-查看文件系统信息)
  * [du: 查看目录/文件的具体大小](#du-查看目录文件的具体大小)
  * [lsblk: 查看系统中设备的挂载情况(df是查看已经挂载的文件系统的情况, 而lsblk查看的是所有设备(包括没挂载的)的情况)](#lsblk-查看系统中设备的挂载情况df是查看已经挂载的文件系统的情况-而lsblk查看的是所有设备包括没挂载的的情况)
  * [mount: 挂载设备到Linux](#mount-挂载设备到linux)
  * [umount: 卸载设备](#umount-卸载设备)
  * [fdisk&amp;&amp;mkfs: 添加一块硬盘后给硬盘分区&amp;&amp;格式化分区](#fdiskmkfs-添加一块硬盘后给硬盘分区格式化分区)
  * [fdisk&amp;&amp;mkswap: 增加一块swap分区](#fdiskmkswap-增加一块swap分区)
  * [dumpe2fs: 查看磁盘(分区)状态](#dumpe2fs-查看磁盘分区状态)
  * [ACL权限:](#acl权限)
* [压缩和解压缩命令](#压缩和解压缩命令)
  * [gzip/gunzip命令: 对后缀名为.gz的文件进行解压, 将文件压缩成&lt;xxx.文件后缀名.gz&gt;文件](#gzipgunzip命令-对后缀名为gz的文件进行解压-将文件压缩成xxx文件后缀名gz文件)
  * [bzip2/bunzip2命令: 类似于gzip, 默认同样是不会保留源文件(不支持对目录进行压缩)](#bzip2bunzip2命令-类似于gzip-默认同样是不会保留源文件不支持对目录进行压缩)
* [打包和解打包命令](#打包和解打包命令)
  * [tar打包/解打包命令: 对后缀名为.tar的文件进行解打包/打包, 将文件打包成.tar文件](#tar打包解打包命令-对后缀名为tar的文件进行解打包打包-将文件打包成tar文件)
  * [zip/unzip命令: 对后缀名为.zip的文件进行解打包/打包, 将文件打包成.zip文件](#zipunzip命令-对后缀名为zip的文件进行解打包打包-将文件打包成zip文件)
  * [tar.gz / tar.bz2 文件](#targz--tarbz2-文件)
* [网络基本命令](#网络基本命令)
  * [ifconfig: 查看IP, 子网掩码](#ifconfig-查看ip-子网掩码)
  * [netstat: 查看监听的端口, 远程连接到本机的情况, 以及查询网关](#netstat-查看监听的端口-远程连接到本机的情况-以及查询网关)
  * [route -n: 查询网关, 等价于netstat -rn](#route--n-查询网关-等价于netstat--rn)
  * [nslookup: 查询域名对应的IP, 同时可以查询本机的DNS服务器](#nslookup-查询域名对应的ip-同时可以查询本机的dns服务器)
  * [ifdown 网卡名 / ifup 网卡名: 关闭/开启网卡](#ifdown-网卡名--ifup-网卡名-关闭开启网卡)
  * [wget URL: 下载命令, 可以直接在Linux中通过该命令将下载的东西下载(找到要下载的东西, 右键查看源代码找到a标签的href属性)](#wget-url-下载命令-可以直接在linux中通过该命令将下载的东西下载找到要下载的东西-右键查看源代码找到a标签的href属性)
* [网络配置](#网络配置)
  * [NAT网络从零配置(装Linux的过程时没有选中网络的情况)](#nat网络从零配置装linux的过程时没有选中网络的情况)
      * [NAT网络与桥接网络](#nat网络与桥接网络)
      * [安装系统后启动NAT网络(前提是安装系统时没有设置)](#安装系统后启动nat网络前提是安装系统时没有设置)
      * [更换NAT网段(包括静态IP和通过DHCP服务器动态获取IP通用)](#更换nat网段包括静态ip和通过dhcp服务器动态获取ip通用)
      * [设置静态IP](#设置静态ip)
* [网络基础](#网络基础)
  * [ISO/OSI的七层模型](#isoosi的七层模型)
  * [TCP/IP四层模型:](#tcpip四层模型)
  * [IP地址分类(通过子网掩码中255的个数进行分类)](#ip地址分类通过子网掩码中255的个数进行分类)
  * [DNS作用(将域名解析成IP)](#dns作用将域名解析成ip)
  * [网关(路由器):](#网关路由器)
  
Shell Summary
===
### 基本命令
#### 输出重定向
  - \>: 覆盖命令
  - \>>: 叠加命令
  - &>[&>>]和2[2>>]>: 正确输出和错误输出
    ```
    ls > a.txt: 将ls命令获得的内容覆盖a.txt文件的内容
    ls >> a.txt: 将ls命令获得的内容叠加到a.txt的末尾
    命令 2>> a.txt: 仅仅将命令的错误结果写入a.txt 
    命令 &>> a.txt: 将命令的正确和错误结果都写入a.txt
    命令 &>> success.txt 2>> error.txt: 将命令的正确结果都写入success.txt, 将命令的错误结果都写入error.txt

    回收站: /dev/null
    ```
#### 逻辑与/逻辑或/分号
  - 命令A && 命令B: 只有命令A正确执行才会执行命令B
  - 命令A || 命令B: 命令A正确执行则不会执行命令B, 命令A执行错误才会执行命令B
  - 命令A; 命令B:  命令按顺序执行    
#### ls: 查看当前目录下存在的文件和文件夹
  - ls -l(相当于ll): 以列表的形式显示当前目录下的所有可见文件和文件夹
  - ls -a: 显示当前目录下的所有文件和文件夹
  - ls -h: 以友好的方式显示文件/文件夹的数据情况
#### mkdir: 创建文件夹
  - mkdir xxx: 创建一个文件夹
  - mkdir -p xxx/xxx: 递归=创建一个文件夹
#### rmdir: 删除文件夹(rmdir 命令的作用十分有限，因为只能刪除空目录，所以一旦目录中有内容，就会报错)
  - rmdir xxx: 删除文件夹
#### rm: 删除文件/目录
  - rm file(默认执行的是`rm -i file`): 删除一个文件, 删除前会进行询问
  - rm -f file: 删除一个文件, 不进行询问
  - rm -r 目录: 递归删除一个目录, 并进行询问
  - rm -rf 文件/目录: 删除文件/目录, 不进行询问
#### cp: 复制文件/目录
  - cp 文件 目标路径: 复制文件到目标路径
  - cp -r 目录 目标路径: 复制目录到目标路径
  - cp -p[r] 文件/目录 目标路径: 复制文件/目录到目标路径, 保存文件原来的状态信息
  - cp -d 文件 目标路径: 复制软链接到目标路径, 如果不是软链接则复制源文件
  - cp -l 文件 目, 如果不是软链接则复制源文件
  - cp -l 文件 目标路径: 复制文件的硬链接到目标路径
  - cp -s 文件 目标路径: 复制文件的软链接到目标路径
#### mv: 移动文件或改名
  - mv 文件名/目录 目标地址: 移动文件/文件名到目标地址
  - mv 文件名/目录 新的文件名/目录: 更改文件名/目录名
  - mv -f 文件名/目录名 新的文件名/目录名: 移动文件/目录到目标地址, 如果已经存在则直接覆盖不询问

#### touch: 触摸一个文件
  > 如果文件不存在则创建, 如果存在则更新文件的时间戳(访问时间, 数据修改时间, 状态修改时间等), 下面的文件代表文件/文件夹
  - touch 文件: 修改文件的时间戳(三个状态时间)
  - touch -a: access, 只修改文件的访问时间(被打开)
  - touch -c: 如果文件不存在则不建立新文件
  - touch -d: 将文件的时间改为指定的时间
  - touch -m: 只修改文件的数据修改时间(Modify Time)
#### stat: 获取一个文件/文件夹的状态
  - stat 文件/文件夹: 查看文件/文件夹的详细信息
  - stat -f 文件/文件夹: 查看文件/文件夹所在的文件系统的详细信息
    ```
      文件三个时间:
          Access: 访问时间, cat操作等
          Modify: 修改时间, vim修改等, 会同时更新状态改变世界
          Change: 状态改变时间, 改变文件内容, 所有者等等
    ```
#### cat:  用于查看一个文件的内容(内容较少)
  > 无论文件内容多大, 都会一次性显示, 如果内容过多, 则可能开头的内容就看不见了
  - Cat file
  - cat -n file: 显示行号
  - cat -A file: 显示特殊的符合, 比如回车($), 换行符(^I)
#### more: 分屏显示文件内容
  - more file
    ```
      b: 向上翻页
      空格: 向下翻页
      回车: 向下滚动一行
      /字符串: 搜索指定的字符串
      q: 退出
    ```
#### head: 从文件开头显示信息
  - head file: 从文件开头显示默认行数的信息(10行)
  - head -n 数字 file: 从文件开头开始显示指定行数的信息
  - head -v file: 显示文件名
#### tail: 显示文件尾部的内容
  - tail file: 从文件尾部显示默认行数的信息(10行)
  - tail -f file: 不停的跟踪文件尾部的内容, 一旦有新的信息追加到文件尾部就会立马显示(注意: vim这样直接编辑会曹植该命令无效!!
  )
  - tail -n file: 查看/追踪文件尾部指定行数的信息
  > 一般用法: 用于追踪日志: **tail -f -n 100 file**
#### ln: 在文件或者文件夹之间建立链接
  - ln 路径1 路径2: 建立一个路径1(必须是文件)的硬链接
  - ln -s 路径1 路径2: 建立一个路径1(文件/文件夹)的软链接
  - ln -f[s] 路径1 路径2: 建立一个硬链接或者软连接, 如果路径2已经存在则直接覆盖
    ```
    硬链接和软连接的区别:
        <1> 硬链接不能链接目录, 软链接可以链接文件/目录
        <2> 硬链接不能跨分区链接, 软链接可以跨分区
        <3> 删除源文件后硬链接仍然可以使用, 而软链接则会报文件找不到错误
        <4> 修改源文件/硬链接/软链接任意一个都会导致其它链接的内容发生改变
    ```
#### help: 显示命令的帮助信息  
  - 命令 --help
#### man: 显示联机帮助手册
  - man [选项] 命令
#### info:  info格式的命令帮助指令
  - info 命令
#### sync: 将内存中数据强制写入磁盘中
#### shutdown: 关机/重启  
  - shutdown -h 时间: 定时关机
    ```
    例子: shutdown -h 10:50 或者 shutdown -h now
    ```  
  - shutdown -r 时间: 定时重启
    ```
    例子: shutdown -r now(立即重启) 或者 shutdown -r +10(10分钟后重启)
    ```  
  - shutdown -c: 取消定时
#### write: 向其它远程终端发送信息(比如我要关机,请及时备份)
  - write 用户名 [终端号]: 输入命令后会进入输入模式, 回车发送, Ctrl + c退出发送模式
#### reboot: 重启
#### half / poweroff: 关机
#### init 1: 关机, init 6: 重启   
#### source: 重新加载环境变量配置文件
  - source 文件绝对路径  
#### alias: 命令别名   
  - alias 别名="命令": 给命令临时增加别名
  - unalias 别名: 临时删除别名
    ```
    通过命令的方式都是临时增删别名, 要想永久生效, 需要修改~/.bashrc文件, 可以增加和删除,每个用户都有
    这个配置文件, 修改完成后需要调用命令 source ~/.bashrc来使得生效
    ```    
### 文件查找
#### whereis: 査找二进制命令、源文件和帮助文档的所在路径
  - whereis -b 命令: 查找命令的二进制文件
  - whereis -m 命令: 查找命令的帮助文件
#### which:  查找命令的所在路径, 同时找到别名命令
  - which ls
#### locate(模糊匹配): 通过文件名在locate数据库文件中查找文件的路径
  - locate 文件名: 根据locate数据库查找文件的路径
  - locate -i 文件名: 忽略大小写搜索
  - updatedb: 创建/更新locate数据库, 一般用于新建文件后(重启后数据库文件才会更新)
  > /etc/updatedb.config文件中规定了locate不搜查的目录或者一些后缀名为xxx的
#### find: 通过文件信息和路径查找文件
  - find 路径 [选项] 搜索内容: 根据选项(文件名,时间等)搜索内容在路径下查找
  - find 路径 [选项] 文件名: 搜索内容为文件名/文件夹名(完全匹配, 或者正则)
    ```
    选项:
      -name: 按照文件名搜索
      -iname: 忽略大小写的文件名搜索
      -inum: 按照inode号搜索
    正则匹配需要放在双引号中: find /root -name "*.txt" 查找root文件夹下.txt结尾的
    ```
  - find 路径 -size +/-大小[ckMG]: 在路径中按照文件大小查找文件
     ```
     +表示大于等于该大小, -表示小于等于该大小, byte用c, kb用k, MB用M, GB用G,
     find /root -size +5M : 在root文件夹下查找大于5MB的文件
     ```
  - find 路径 [选项] +/-天数: 按照文件修改时间来查找文件
    ```
    选项:
      -atime, -mtime, ctime: 分别代表文件访问时间, 文件修改时间, 文件状态修改时间
      5: 前第5-6天
      -5: 前5天
      +5: 6天前
    ```  
  - find 路径 -perm +/-权限模式: 按照权限来查找文件
    ```
    权限模式: 查找权限模式刚好相等的文件, 比如666就只查找权限是666的
    -权限模式: 查找完全包含该权限的文件, 比如200 -> --w-------, 而444 ->
              -r--r--r--是不包含200权限的
    +权限模式: 查找包含其中一个权限的文件, 444 -> -r--r--r--, 而200 -> --w-------, 是不包含其中任意一个的
    ```  
  - find 路径 [选项] 所有者/所属组: 按照所有者或者所属组查找文件
    ```
    选项:
      -user, -group, -uid, -gid, nouser: 分别代表所有者,所属组,用户id,组id,没有所有者(一般对外来文件, 如U盘等)
    ```
  - find 路径 -type [选项]: 根据文件类型来查找
    ```
    d: 查找该路径下的所有子目录
    f: 查找该路径下的文件, 不包含目录
    l: 查找该路径下的软链接
    ```  
#### find中运用逻辑运算符:
  ```
  -a: 逻辑与, 查找左右两个条件都满足的
  -o: 逻辑或, 查找左右条件满足一个的, 如果都存在, 则都可以找到
  -not(!): 逻辑非, 去反, 前两个一般用于两个条件拼接, 而逻辑非则是取反当前条件  
  ```
#### find中exec选项:
  - find 查询命令 -exec 其它命令 {}  
### 软件安装
#### RPM包管理
  ```
    RPM包管理器, 这些包一般放在了系统光驱中, 需要将光驱进行挂载后才能找到
    <1> 创建挂载目录: mkdir /mnt/cdrom
    <2> 挂载光驱: mount -t iso9660 /dev/sr0 /mnt/cdrom
    <3> 进入包文件夹: cd /mnt/cdrom/Packages
  ```
##### 包的安装/升级/卸载  
  - rpm -ivh 全包名的绝对地址: 安装包
    ```
    选项说明: i -> install, v -> verbose(冗长的, 详细的), h -> hash(进度条)

    注意(RPM安装包的缺点): 可能会出现缺少依赖包, 依赖库文件的情况, 如果缺少依赖包那
                          么就利用rpm安装该依赖包, 出现缺少依赖库, 则可以在网站
                          [https://rpmfind.net]查找该库文件所在的包,然后再安装该包 
    ```
  - rpm -Uvh 全包名的绝对地址: 升级包, 也可以用作安装包, 当该软件不存在的时候,等价于安装命令
  - rpm -e 包名(注意:不能有后缀rpm): 卸载软件(需要先卸载该软件被依赖的软件)     
##### 包的查询  
  - rpm -q 包名: 查询该软件是否已经安装, 如果安装则返回版本信息, 未安装则提示
  - rpm -qa: 查询系统中安装的所有包, 一般配合管道符来进行模糊查询
    ```
    rpm -qa | grep http: 查找所有的包中, 包名含有http的
    ```
  - rpm -qi 包名: 查询包名的详细信息(该包必须已经安装, 未安装则会提示)
  - rpm -ql 包名: 查询该包所有文件被安装的地方
  - rpm -qf 文件: 查询该文件所属哪个包
##### 包的校验
  - rpm -V 包名: 校验该包, 查看是否有文件被修改/删除
    ```
    SM5DLUGT.  c /etc/httpd/conf.d/welcome.conf
    第一列:
      S: 大小被改变 M: 文件权限被改变 5: 文件内容被改变
      D: 文件的主从代码被改变 L: 文件路径被改变
      U,G: 文件的所有者/所属组被改变
      T: 文件的修改时间被改变
    第二列: 
      c: 配置文件
      d: 普通文档
      g: 鬼文件, 不该出现在该包的文件(ghost)
      l: 授权文件
      r: 描述文件
    第三列: 文件的绝对路径    
    ``` 
##### 提取包的文件
  - rpm2cpio 包的绝对路径 | cpio -idv .文件的绝对路径:
      将包转换成cpio格式后, 对其执行cpio命令, 将本应该安装在某个路径下的某个文件/文件夹从包中提取到当前路径     
    ```
    rpm2cpio /mnt/cdrom/Packages/coreutils-8.22-23.el7.x86_64.rpm | cpio -idv ./bin/rm
    ```     
#### Yum包管理
##### 包的安装/更新/删除
  - yum -y install 包名: 安装包
  - yum -y update 包名: 更新包(`注意!!!: yum -y update 后面不加包名会默认更新系统中的所有包!!!慎用!`)
  - yum -y remove 包名: 移除包(同时会删除依赖了该包的其它包)
    ```
    yum源: 存放在/etc/yum-repos.d/文件夹内
        [容器名称]
        name=xxxx: 说明
        mirrorlist=xxxxxx: 镜像地址, 表示yum安装的时候访问的服务器
        baseurl=xxxx: yum源服务器地址,yum官方地址
        gpgcheck=1: 是否启动MD5校验, 查看我们安装的包是否被改变过, 1为开启
        gpgkey=xxx: 校验的密钥
        enable=1: 是否使用该配置, 0为不生效, 写成1或者不写则默认生效
    网络yum源: base文件的配置(可以自己更改镜像地址)
    本地yum源: 用于无网络环境的情况, 利用Media文件, 将里面的地址改为当前系统中光盘
              挂载的Packages地址
    默认是网络yum源, 如果要使用本地yum, 则将base名称随便加个后缀使其失效就好了, 不建议在里面更改信息, 然后对Media文件的配置设置enable为1          
    ```
##### 包的查询    
  - yum list: 查看yum中可以安装的包
      - yum list: 查询所有已经安装或者未安装的包
      - yum list 包名: 查询该包的情况, 如果未安装则显示Available, 否则显示Installed
  - yum search 名称: 查询所有包中包含该名称的包名
  - yum info 包名: 查询该包的详细信息, 包括已安装和未安装的
#### Yum软件组管理
  > 软件组: 我们在安装Linux系统的时候需要选择安装哪个软件组, 比如最小化安装...
  - yum grouplist: 列出所有的软件组
  - yum groupinfo "软件组名": 查看该软件组的详细信息, 比如包含哪些软件, 可选安装软件
  - yum groupinstall "软件组名": 安装软件组
  - yum groupremove "软件组名" : 卸载软件组

#### 源码包
##### 安装(以apache服务器为例)
  ```
  过程:
    <1> 对需要的源码包进行解压, 并在解压后目标文件夹执行检查命令
        正常情况: ./configure --prefix=安装的绝对路径
        依赖库文件情况: ./configure --prefix=安装的绝对路径 --with-文件库=绝对路径
    <2> make 编译源码包
    <3> make install 安装源码包
        如果出现缺少文件库的情况, 则去下载对应的文件库源码包, 然后将该源码包执行1,
        2,3命令进行安装, 最后再回到要真正要安装的源码包中执行1,2,3命令
  
  例子:
    <1> 下载以源码包, 通过rz命令将其放入服务器中, 解压包
    <2> 进入解压的包中, 执行配置可执行文件检查是否允许安装
          ./configure --prefix=/usr/local/apache2 (--prefix=绝对路径, 源码包被安装的地方)
    <3> 对于当前版本的apache源码包来说, 在执行上述命令后会报错, 缺少pcre-config文
        件的支持, 此时需要根据报错信息去官网下载pcre源码包, 然后解压该包, 并在解压
        后的文件夹内执行./configure --prefix=/usr/local/pcre -> make -> make 
        install, 将pcre安装在指定目录下
    <4> 找到pcre-config的文件位置, 回到apache解压后文件夹中执行
        ./configure --prefix=/usr/local/apache2 --with-pcre=/usr/local/pcre/bin
        其中/usr/local/pcre/bin即为pcre-config文件的位置
    <5> 在apache文件夹内继续执行命令, make -> make install
  ```
##### 更新(打补丁)
  - diff -Naur 旧文件 新文件 > xxx.patch : 对比旧文件和新文件, 生成补丁文件xxx
  - patch -p[数字] < 补丁文件: 将补丁文件根据p0....等去掉补丁文件中目录结构中的斜
    杠/, 补丁文件作用在 : 当前目录 + (补丁文件中旧文件的目录 去掉x个斜杠后的新地址), x为p后面的数值
    ```
    例一(普通文件为例):
        - mkdir /root/test && cd /root/test
        - echo "aaa" >> old.txt
        - echo "aaa" >> new.txt && echo "bbb" >> new.txt
        - diff -Naur /root/test/old.txt /new.txt > mypatch.patch    生成补丁文件
          <1> 当前目录 /root/, 补丁文件中目录为/root/test/old.txt, 则补丁文件中应
              该去掉两条斜杠, 变为test/old.txt, 所以命令为: patch -p1 < mypatch.patch
          <2> 当前目录 /root/test/, 应该去掉两条杠, 变为old.txt, 所以命令为: 
              pathch -p2 mypatch.patch
    例二(给软件打补丁):
        - 下载补丁, 将其放入到软件源码包目录(不是安装目录)
        - 查看补丁文件中目录的情况来决定p后面的数值, 然后执行patch打补丁命令
        - 打完补丁后make, make install, 重新编译安装补丁文件
    ```
### 软件的上传和下载  
#### Windows与Linux之间的上传和下载
- Linux中: 通过rz/sz/命令
  ```
  - yum info lrzsz: 查看是否安装rz, sz命令, 没安装就`yum -y install lrzsz
  - rz: 上传
  - sz 文件名: 下载文件到本地  
  ```
- 本地window: cmd命令行
  ```
  下载: scp [-r] 用户名@IP:文件路径 本地路径
  上传: scp [-r] 本地路径 用户名@IP:文件路径
  ```
#### Linux 与 Linux之间的上传和下载
  ```
  下载: scp [-r] 用户名@IP:文件路径 本地路径
  上传: scp [-r] 本地路径 用户名@IP:文件路径
  ```    
### 用户/组管理  
#### /etc/passwd:  用户信息 
  ```
  用户名 : 密码(已被迁移到shadow文件) : UID : GID : 描述性信息(一般为空) : 根目录 : 默认的Shell(nologin即为不可登陆)
  ```
#### /etc/shadow: 用户密码信息
  ```
  用户名 : 加密后的密码 : 密码最后修改时间 : 最小修改密码时间间隔(0为随时可以) : 密码有效期(超过时间不修改密码则过期) : 密码有效期前多少天发出警告 : 密码过期后的宽限天数 : 账号生效时间(自1970-1-1) : 保留
  ```
#### /etc/group: 组信息
  ```
  字段说明:
      组名 : 组密码 : GID : 组中的用户(作为附加组时的用户, 逗号隔开)
      组密码: 一般用于设定组管理员, 来代替root修改组中的用户等, 现在一般用sudo来提供一个用户其它权限
  添加附加组: 在group文件中找到那个组, 将需要添加附加组的用户添加到最后的字段    
  ```  
#### /etc/gshadow: 组密码信息
  ```
  组名 : 组密码 : 组管理员 : 附加组成员
  ```  
#### whoami: 查看当前用户
#### id: 查看当前用户的UID和GID
  - id: 查询当前用户的UID和GID
  - id 用户名: 查询指定用户的UID和GID
#### su 用户名: 切换用户
  - su - 用户名: 彻底切换到该用户, 包括环境变量
  - su -: 等价于 su - root
#### groups: 查看用户当前属于哪些组(初始组和附加组)
  - groups
  - groups 用户名
#### useradd: 添加新的系统用户
  - useradd 用户名: 添加一个新的系统用户
  - useradd -g 初始组名 用户名: 添加一个新的系统用户, 同时指定该用户的初始组
  - useradd -G 附加组名 用户名: 添加一个新的系统用户, 同时指定该用户的附加组
  - useradd -c 描述信息 用户名: 添加一个新的系统用户并设置描述性信息(passwd中第五个字段)
  - useradd -u UID 用户名: 添加一个新的系统用户并指定一个大于500的UID
  - useradd -d 绝对路径 用户名: 添加一个新的系统用户并指定家目录
    ```
    添加一个用户时的默认配置文件:
        <1> /etc/login.defs
        <2> /etc/default/useradd
        /etc/skel: 对于该文件夹, 在创建一个新用户的时候会将这个文件夹中的内容复制到用 
                  户家目录, 其中/etc/default/useradd的文件中SKEL=/etc/skel就是指定复制的目录
    ```
#### passwd: 设置/修改用户的密码信息
  - passwd 用户名
  - passwd -l 用户名: 锁定用户, 使其无法登陆, 在/etc/shadow文件指定位置添加!!来使得密码无效
  - passwd -u 用户名: 解锁用户  
  - passwd -S 用户名: 查看用户的密码状态信息
  - echo xxx | passwd --stdin 用户名: 将数据流中的文字设置为该用户的密码 
#### chage: 设置/修改用户的密码信息(同passwd功能类似)
  -  chage -d 第几天 用户名: 修改用户的密码的最后修改时间, 设置为0可以强制用户第一次登陆时修改密码
  - chage -l 用户名: 查看用户的密码状态, 比passwd更加的详细
#### usermod: 修改用户的信息
  - usermod -g 初始组 用户名: 修改用户的初始组  
  - usermod -G 附加组 用户名: 修改用户的附加组
  - usermod -l 新用户名 用户名: 修改用户的用户名
#### userdel: 删除用户
  - userdel -r 用户名: 删除用户, 同时删除用户的家目录  
#### groupadd:  创建新的用户组
  - groupadd 组名
  - groupadd -g GID 组名: 创建新的用户组并指定组ID
#### groupmod: 修改用户组
  - groupmod -n 新的用户组名 旧的用户组名: 修改用户组名
  - groupmod -g 新的用户组ID(GID) 用户组: 修改用户组ID, GID
#### groupdel: 删除用户组
  - groupdel 用户组: 删除用户组
#### gpasswd: 将用户添加进组或者从组中删除(组管理员) 
  - gpasswd 用户组: 给用户组设置一个组密码
  - gpasswd [选a项] 用户组:
      - (root)gpasswd -A 用户A,B 用户组: 将用户A和B设为该用户组的管理员
      - (root)gpasswd -M 用户A,B 用户组: 将用户A和B添加进该用户组, 该用户组作为用户的附加组
      - (root)gpasswd -r 用户组: 删除组密码
      - (root)gpasswd -R 用户组: 使得组密码失效
      - (组管理员)gpasswd -a 用户A,B 用户组: 将用户A和B加入用户组
      - (组管理员)gpasswd -d 用户A,B 用户组: 将用户A和B移出用户组
        ```
        组管理员可以有多个, 组管理员的权限只有添加用户和删除用户, 该命令添加和删
        除用户都是针对附加组, 而usermod中的修改所在组是针对初始组
        ```
#### newgrp: 切换用户的有效组
  newgrp 附加组: 将当前用户的一个附加组和初始组临时调换, 即使得一个附加组临时变为初始组
  ```
  我们在创建一个文件的时候, 文件的所属组是该用户的初始组, 通过usermod改变用户的初始组会导致文件的所属组也全部发生改变, 为了能够保证文件可以属于其它组, 通过newgrp命令可以将用户的一个附加组临时的变为初始组, 从而创建文件的时候就可以使得文件属于不同的组了, 此时即使通过usermod命令改变用户的初始组也不会改变因为newgrp命令改变的文件的所属组

  该命令的底层实现是通过开启一个新的进程登陆该用户, 然后将一个附加组变为初始组, 从而创建文件
  ```
### 权限管理
```
当用户处于其家目录下时, 对其家目录是具有rwx(查看目录子结构, 对目录的内容进行增删改, 可进入该目录)的权限, 所以对于家目录下的文件属于其它用户包括root用户的, 当前用户是具有删除权限的, 但是对于文件夹来说, 如果文件夹里面有其它用户或者root用户的文件
则当前用户是没有删除该目录的权限
```
#### chgrp: 改变文件/文件夹的所属组
  - chgrp 组名 文件/文件夹: 改变文件/文件夹的所属组
  - chgrp -R 组名 文件/文件夹: 递归改变文件夹的所属组, 修改文件夹下所有文件的所有组
#### chown:  改变文件/文件夹的所有者
  - chown 用户 文件/文件夹
  - chown -R 用户 文件/文件夹: 修改文件夹及其下面所有文件的所有者
#### chmod: 改变文件/文件夹的权限
  - chmod 文件权限 文件/文件夹
  - chmod -R 文件权限 文件夹: 改变文件夹及其子文件/子目录的权限
  ```
  文件权限的两种表示方式:
  chmod 当前用户对文件的权限,当前组其它用户对文件的权限,其他组用户对文件的权限 文件/文件夹
      第一种: 数字表示法
          - r = 4
          - w = 2
          - x = 1
          chmod 744 a.txt: 表示a.txt的文件权限为744
      第二种: 符号表示法
          - u: 当前用户
          - g: 当前用户所属组用户
          - o: 其它组用户
          - a: 所有用户
          +-=: 表示添加,删除,赋予权限
          chmod u+w a.txt: 对当前用户添加一个对a.txt写的权限
  ```
#### umask: 设置新建文件和目录的默认权限
  ```
    权限计算方法:
        文件的最大默认权限: 0666(x为文件最大权限, 应该手动赋予)
        目录的最大默认权限: 0777
        umask: 该命令的值即创建文件/目录时应该掩盖的权限
        计算方式: 将文件/目录的最大默认权限以及umask值转换为字符的表示,
                 然后将文件/目录的最大默认权限 减去 umask, 得到后的值即为
                 创建文件/目录时的默认权限
        方式二: 文件/目录的最大默认权限 与 umask权限 进行异或运算, 求得的值
               即为创建文件/目录时的默认权限         
  ```  
  - umask: 获取掩盖的权限值
  - umask xxxx: 临时设置掩盖的权值值为xxxx, 重新登陆后该值即被改变
  - /etc/profile: 可以修改里面的umask, 则永久修改umask值
### 文件系统
#### df: 查看文件系统信息
  - df -a: 查看所有的文件系统信息
  - df -h: 以更加清晰的方式显示文件系统信息
  - df -T: 增加一列文件系统类型
#### du: 查看目录/文件的具体大小
  - du -h: 仅仅查看当前地址下所有目录的大小, 包括子目录(以人性化的大小显示)
  - du -a: 查看当前所有目录及其子目录/子文件的大小, 一一列举  
#### lsblk: 查看系统中设备的挂载情况(df是查看已经挂载的文件系统的情况, 而lsblk查看的是所有设备(包括没挂载的)的情况)
  - lsblk: 查看文件系统中设备的挂载情况
  - lsblk -f: 更加详细的查看挂载情况, 包括了UUID  
#### mount: 挂载设备到Linux
  - mount -a: 根据配置文件/etc/fstab来进行自动挂载
  - mount -t 文件系统 -o 其它选项 设备名称(设备地址) 挂载点
#### umount: 卸载设备
  - umount 设备名称(设备地址)/挂载点地址
#### fdisk&&mkfs: 添加一块硬盘后给硬盘分区&&格式化分区
  - fdisk -l: 显示所有硬盘的分区情况
  - fdisk 设备名称(设备地址): 给硬盘分区
  - mkfs -t 文件系统 设备名称: 格式化分区
    ```
    一: 创建新的主分区和扩展分区(不能退出, 否则即使分区了也会被清空)
        <1> 插入新的硬盘后 
        <2> fdisk -l查看所有硬盘的分区情况
        <3> fdisk /dev/sd? 给硬盘分区,进入命令状态
        <4> 选择m进入菜单, 选择n创建新的分区(选择p查看已经存在的分区)
        <5> 创建新分区命令, p为主分区(默认), e为扩展分区
        <6> 指定分区的开始,结束位置, 如果采用默认值, 则整块硬盘只会分成一个区

    二: 由扩展分区创建出逻辑分区:
        n -> l -> 配置分区大小

    三: 分区创建结束后保存并退出!!!(w)    
    四: 格式化分区(对分区设置指定的文件系统和其他信息)
        mkfs -t ext4(文件系统) /dev/sdb1(设备地址/设备文件名)
    五: 挂载分区
        mount -t 文件系统(默认也为ext4) 设备名称 挂载点
        例如: mount -t ext4 /dev/sdb1 /media/sdb1
    六: 开机自动挂载(通过mount命令挂载的分区, 重启机器后会失效)
        <1> 打开挂载配置文件: vim /etc/fstab     
        <2> 添加分区挂载信息
    七: 自动挂载: mount -a    
    ```
#### fdisk&&mkswap: 增加一块swap分区
  ```
    <1> fdisk 设备名称: 对一块磁盘进行分区, m -> n -> p -> 1 -> 确定分区大小 -> 一直回车即可
    <2> 修改文件系统的ID为82(swap分区的标识, 默认是83Linux文件系统标识)
    <3> w保存
    <4> mkswap 分区名称: 格式化该分区
    <5> swapon 分区名称: 将该分区添加到swap分区
  ```
#### dumpe2fs: 查看磁盘(分区)状态    
  - dumpe2fs 设备名称: dumpe2fs /dev/sdb1
  - dumpe2fs -h 设备名称: dumpe2fs /dev/sdb1: 简短的信息显示, 不显示块的详细信息
#### ACL权限:
  - mount -> dumpe2fs -h 分区设备名: 通过mount查看想要开启ACL权限的分区的设备是哪个,通过dumpe2fs命令来查看该分区是否开启了ACL权限
  - mount -o remount,acl 设备地址: 如果没有开启ACL权限, 则通过重新挂载的方式开启该分区的ACL权限
  - mount命令挂载的是临时生效, 通过修改/etc/fstab文件来使得永久生效
  - getfacl 文件/目录名: 查看文件/目录的acl权限情况
  - setfacl:
    - setfacl -m u:用户名:给予的权限 文件/文件夹: 给用户设置对该文件夹/文件的ACL权限
    - setfacl -m g:组名:给予的权限 文件/文件夹: 给组设置对该文件/文件夹的ACL权限
    - setfacl -x u[g]:用户名[组名] 文件/文件夹: 删除某个组或者用户对该文件或者文件夹的ACL权限
    - setfacl -b 文件/文件夹: 删除该文件或者文件夹的所有ACL权限
    - setfacl -m d:u[g]:用户[组]:权限 文件夹: 给文件夹设置默认的ACL权限
      ```
      对该目录设置默认的ACL权限是指当在该目录下创建了新的文件时, 拥有默认ACL权限的组或者用户能够对这些新创建的文件有ACL权限, 但是对于之间就存在的文件是没有的

      注意: 
          ACL权限: 组和用户 -> 文件/文件夹
          默认ACL权限: 组和用户 -> 该文件夹下新的文件 (前提是该组/用户有进入该文件夹的权限)
      ```
    - setfacl -k 文件夹: 删除该文件夹的默认权限
    - setfacl -R -m u[g]:用户[组]:权限 文件夹: 对该文件夹递归设置ACL权限, 也可以递归删除
      ```
      默认权限: 针对于文件夹中设置权限后新建的文件
      递归设置权限: 针对于文件夹中已经存在的文件,包括该文件夹
      ```
### 压缩和解压缩命令
#### gzip/gunzip命令: 对后缀名为.gz的文件进行解压, 将文件压缩成<xxx.文件后缀名.gz>文件  
  - gzip [选项] 文件路径:(不保留源文件)
    ```
    gzip 文件路径: 将文件压缩, 可一次性压缩多个文件
    gzip -v 文件路径: 将文件压缩, 并显示压缩的信息
    gzip -r 文件夹: 对文件夹中的所有文件进行压缩, 不会将文件夹打包
    gzip -c 文件路径 > 压缩后的文件路径: 将文件压缩, 并保留源文件
      这里要提供压缩后的文件路径, 因为是将文件压缩的信息打印出来, 然后将其写入一个文件的
    gzip -d 文件路径: 将文件解压缩
    ```
  - gunzip [-r] 文件路径: 将文件解压缩, 加r是解压缩文件夹内的所有.gz文件(可用gzip代替)
#### bzip2/bunzip2命令: 类似于gzip, 默认同样是不会保留源文件(不支持对目录进行压缩)
  - bzip2 [选项] 文件路径:
    ```
    bzip2 文件路径: 将文件压缩
    bzip2 -k 文件路径: 将文件压缩, 并保留源文件(keep), 不用像gzip样输出重定向
    bzip -d 文件路径: 将文件解压缩
    ```
  - bunzip2 [选项] 文件路径:
    ```
    bunzip2 文件路径: 对文件进行解压缩, 等价于bzip2 -d 文件路径
    bunzip2 -k 文件路径: 对文件进行解压缩, 同时保留文件, 等价于bzip2 -dk 文件路径
    ```
### 打包和解打包命令    
> 注意: 打包文件/文件夹需要指定后缀名, 方便解打包的时候能够被系统识别
#### tar打包/解打包命令: 对后缀名为.tar的文件进行解打包/打包, 将文件打包成.tar文件
  - tar 选项 包名.zip 文件1,文件2,文件夹1...
    ```
    -c: 打包
    -f: 指定打包后的包名
    -v: 显示详细信息
    用法: tar -cvf 包名 文件1,文件夹1...(选项必须三个一起)
    ```
  - tar 选项 包名
    ```
    -x: 解打包(extract)
    -f: 指定被解打包的包名
    -v: 解打包时的详细信息
    用法: tar -xvf 包名
    ```
#### zip/unzip命令: 对后缀名为.zip的文件进行解打包/打包, 将文件打包成.zip文件
  - zip [-r] 包名.zip 文件1 文件2 ...: 对单个/多个文件进行打包(需要指定打包后的包名, -r 表示打包文件夹)
  - unzip 压缩包绝对路径: 解打包
  - unzip -d 解压后路径 压缩包: 解打包到指定位置
#### tar.gz / tar.bz2 文件
```
压缩文件流程: 我们需要将一个文件,多个文件,一个文件夹,多个文件夹先打包成tar或者zip文
              件, 然后再对打包后的文件进行压缩成gz, bz2文件
对于tar.gz文件/tar.bz2文件, 提供了打包压缩连在一起的命令
tar.gz: 
  tar -zcvf 压缩包名 文件: 对文件/文件夹进行打包压缩
  tar -zxvf 压缩包: 对文件进行解打包解压缩 
tar.bz2: 
  tar -jcvf 压缩包名 文件: 对文件/文件夹进行打包压缩
  tar -jxvf 压缩包  : 对文件进行解打包解压缩
```  
### 网络基本命令
  ```
  - /etc/resolv.config: 查看DNS服务器
  - /etc/sysconfig/network-scripts/网卡名称: 查看网络配置/修改网络配置, 如静态IP, 开启自动开启等
  ```
#### ifconfig: 查看IP, 子网掩码
#### netstat: 查看监听的端口, 远程连接到本机的情况, 以及查询网关
  ```
  t: 显示TCP的连接情况
  u: 显示UDP的连接情况
  l: 只显示监听状态的
  n: 使用IP和端口号显示
  a: 显示所有网络状态, 包括socket程序
  r: 显示路由表
  ```
  - netstat -tuln: 显示本机监听状态下的TCP, UDP端口开放情况
  - netstat -an: 显示所有网络连接的情况
  - netstat -an | grep ESTABLISHED: 只显示正在连接的情况
  - netstat -rn: 显示路由表, 可以通过该命令查看默认网关
#### route -n: 查询网关, 等价于netstat -rn
#### nslookup: 查询域名对应的IP, 同时可以查询本机的DNS服务器
  - nslookup 域名: 查询该域名对应的IP
  - nslookup server: 查询本机配置的DNS服务器
#### ifdown 网卡名 / ifup 网卡名: 关闭/开启网卡
#### wget URL: 下载命令, 可以直接在Linux中通过该命令将下载的东西下载(找到要下载的东西, 右键查看源代码找到a标签的href属性)
### 网络配置
#### NAT网络从零配置(装Linux的过程时没有选中网络的情况)
##### NAT网络与桥接网络
  ```
  桥接网络: 通过本机window系统下的网卡向外通信, 那么此时Linux中的IP就会跟windows在同一个网段, 只不过是占用不同的主机位置而已
           比如windows的IP为192.168.1.3(子网掩码为255.255.255.0), 那么Linux中IP的前三位就一定是192.168.1.xxx, 所以通过这种方式会占用一台
           主机的位置
  NAT网络: 其独立一块网卡, 不跟windows同网段, 如果windows的IP为192.168.1.3(子网掩码为255.255.255.0), 那么Linux中IP可以是192.168.244.xxx, 第
           三位不同, 所以不在同一个网段
  注意:!!!!!  由于已经不是在同一个网卡, 即不是局域网了, 那么此时Linux和windows是不同ping通的, 192.168.xxx.xxx的网段是私有网络, 只能在局域网之间ping通
            所以当在linux 中ping 192.168.1.3会发报错 Destubation Host Unreachable, 两个不属于同一个局域网自然就不同通过私有IP来ping了
            但是Linux是可以访问外网的
  ```
##### 安装系统后启动NAT网络(前提是安装系统时没有设置)  
  - 虚拟机安装Linux, 安装过程中不对网络进行配置
  - 进入虚拟机后, 通过ifconfig命令(没有的话就安装这个命令的包)可以ens33网卡是没有IP地址的
  - vim /etc/sysconfig/network-scripts/ifcfg-ens33   对该文件进行一下修改, ONBOOT=yes开机自动启动网卡
  - service network start: 开启网卡, 上面那个是开机自动开启, 这个是本次开启, 这样就不用重启系统了
##### 更换NAT网段(包括静态IP和通过DHCP服务器动态获取IP通用)  
  ```
  安装完虚拟机后通过上述方式就已经成功连接上网络了, 此时可以发现Linux上的IP为192.168.244.128(不同的机器可能不同), 那么此时我不想要这个网段, 我想我的网段是192.168.100.xxx
  <1> 点击虚拟机上方导航栏的编辑 => 虚拟网络配置 => 上方选中网卡为NAT类型的(点中就好了) => 下方帮助的上面点击更改设定
            子网IP: 就是我要指定的网段192.168.xxx.0, 比如192.168.100.0
            子网掩码: 255.255.255.0(C类IP)
            通过子网掩码来确定IP类型, 通过设置子网IP来确定网段
  <2> 设定完成后 => 点击NAT设置 => 将网关设置为192.168.xxx.2 => DHCP设置(如果要动态获取IP才可以走这一步) => 里面可以规定IP的范围 => 完成即可
  <3> 此时Linux里面的IP就已经改变了
  ```
##### 设置静态IP
  ```
  如上所述: 通过上述操作是可以更改网段的, 那么我们可以先通过上述操作更改到自己想要的网段, 但是!! 上述操作中取消窗口中的选项 => 使用本地DHCP服务去分配IP(我的电脑是英文系统, 可能翻译的
           不是很准确), 其实就是将那个勾取消掉就好了, 到此为止, 我们就已经设置好网段了, 接下来配置静态IP就要到Linux中去配置

  <1> vim /etc/sysconfig/network-scripts/ifcfg-ens33(这个是网卡名)
  <2> BOOTPROTO=static        # 设置为静态获取IP
      IPADDR=10.10.128.128    # 静态IP(需要在10.10.0.0网段, 上述设置虚拟机会默认设置IP最小为10.10.128.0(可以回去看看), 所以要比这个大)
      NETMASK=255.255.0.0     # 子网掩码(B类IP)
      GATEWAY=10.10.0.2       # 网关
      DNS1=114.114.114.114    # DNS服务器
  ```  
### 网络基础
#### ISO/OSI的七层模型
  - 模型解释: 
    ```
    应用层: 用户接口
    表示层: 对用户的数据表现形式进行转换成二进制, 特定功能的实现, 如加密
    会话层: 对应用会话的管理, 同步(判断数据是否往下传输)
    传输层: 可靠(TCP)与不可靠(UDP)的传输, 确定端口, 传输前的错误检测, 流控
    网络层: 提供逻辑地址(IP地址), 选路
    数据链路层:成帧, 封装计算机的MAC地址, 用MAC地址访问媒介, 错误检测与修正
    物理层: 设备之间的比特流传输(二进制数据的传输), 物理接口(网卡, 音响等), 电气特性等
    ```
  - 应用实例1:
    ```
    小明写了一个PPT, 则PPT是应用层, 对用户提供服务的, 当写好PPT的时候,需要点击保存, 最终保存到计算机里面的是二进制文件, 所以在表示层会转换数据形式, 然后到会话层, 会话层会对该数据进行判断, 是否要通过网络传输, 如果需要就将其发送到传输层走网络, 而PPT保存是不需要走网络的, 所以到了会话层就终止了
    ```
  - 应用实例2:
    ```
    小明给小红通过邮箱发送信息, 那么邮箱就是应用层, 信息写好后, 会到表示层对数据形式进行转换, 然后到会话层, 发现需要走网络, 就将其转到传输层, 传输层对该信息进行判断, 是TCP还是UDP, 并进行校验, 将TCP/UDP加入到数据包中, 传输到网络层, 网络层会对发送方IP和接收方IP封装到数据包,
    并且选择合适的传输路径, 由于网络层通过IP是在不同的局域网之间进行传输, 那么一个局域网会有多台计算机设备, 所以需要通过MAC地址(全球唯一)
    来确定是传输到哪个计算机, 所以数据链路层的作用就是将MAC地址封装到数据包中, 然后到物理层进行比特流的传输
    ```  
#### TCP/IP四层模型:
  - 模型解释
    ```
    应用层(应用层, 表示层, 会话层)
    传输层
    网络互联层(网络层)
    网络接口层(数据链路层, 物理层)
    ```
  - TCP&UDP:
    ```
    TCP: 面向连接协议(可靠的协议, 确保数据能准确到达)
    UDP: 面向无连接的协议(不可靠协议, 数据可能出现丢失的情况)
    
    两军交战的故事:
        背景: 蓝军A和蓝军B在两座山的山顶, 红军在两座山之间的山谷, 蓝军A
             和B只有联合起来才能打败红军, 而蓝军A与蓝军B只能经过山谷来
             进行通信, 所以派出去通信的小兵有可能被俘虏, 从而导致数据的
             丢失, 假设蓝军A打算明天攻打红军, 如何可靠的联系到蓝军B呢?
        通信方式: 蓝军A排除小兵A前往蓝军B告诉要攻打红军的信息, 当信息到
                达蓝军B的时候, 蓝军B为了告诉蓝军A自己已经收到信息, 就要
                派出小兵B前往蓝军A告知他自己已经收到信息, 蓝军A收到了信
                息后, 为了告诉蓝军B自己收到信息, 此时需要再派出小兵C前
                往蓝军B, 这样才能达到可靠性, 加入只有两次交流, 那么蓝军
                B就不能确认蓝军A是否已经收到了自己同意攻打红军的信息, 
                所以需要三次交流
      由两军交战的故事可以得出, TCP要想实现可靠的连接, 必须有三次握手, 
      少于三次则不可靠, 而多余三次就会产生冗余          
    ```
#### IP地址分类(通过子网掩码中255的个数进行分类)
  ```
  网络类别            IP地址范围                                私有IP范围
     A          1.0.0.0 - 126.255.255.255                10.0.0.0 - 10.255.255.255 
     B          128.0.0.0 - 191.255.255.255              172.16.0.0 - 172.31.255.255
     C          192.0.0.0 - 223.255.255.255              192.168.0.0 - 192.168.255.255
  分类的依据: (不同网段(公网)之间需要通过路由器进行交流, 同一网段之间只需要通过交换机进行交流就好了)
      <1> A类IP, 第一位数相同的代表的是同一个网段(同一个局域网)
      <2> B类IP, 第一,二位数相同的属于同一个网段(同一个局域网) 
      <3> C类IP, 第一,二,三位数相同的属于同一个网段(同一个局域网)
  私有IP: 不同计算机可以是相同的一般用于同一个局域网, 例如学校,公司等, 可以多个局域网中存在相同的IP, 比如我的是192.168.0.1, 其它局域网中也可以同样的IP
  公网IP: 不同计算机只能有一个, 不同网段的计算机之间就是通过公网IP路由器进行交流的, 而同一个局域网中只需要通过交换机就可以了 

  例如: 
      IP1: 192.168.2.1  子网掩码: 255.255.255.0
      IP1: 192.168.3.1  子网掩码: 255.255.255.0
      分析: 由于子网掩码中255的个数是3, 则其是C类IP, 对于C类IP, 192.168.0.0 - 192.168.255.255为私有IP
            C类IP 中, 只有前三位都是相同的才是同一个网段, 因为第三位一个是2 ,一个是3, 所以这两个IP不属于同一个局域网

  主机地址/广播地址/主机个数: 在同一个局域网中, 根据IP的类别来判断, 比如IP1: 192.168.2.1  子网掩码: 255.255.255.0 , 其属于C类IP, 那么其可以拥有的
                            局域网主机的个数就是2^7 - 2个, 例如在网段192.168.6.x中, 192.168.6.0作为主机地址, 192.168.6.255作为广播地址, 主机个数即
                            局域网中可以有多少个IP, 可以有192.168.6.1 - 192.168.6.254, 即253个

  ```    
#### DNS作用(将域名解析成IP)  
  ```
  域名的分类:
      根域名: .
      顶级域名: edu, gov, com, org, mil, cn等等, 组织域, 国家域名, 一般代表该网站的作用, 比如com代表是商业作用等
      二级域名: 自己定义, 可以是公司名称, 比如sina代表新浪 
      三级域名(主机名): www, NEW等
  DNS: 域名解析系统, 也叫DNS服务器
  DNS解析域名的过程: 例如: www.sina.com.cn
      <1> 由当前浏览器先向根域名DNS服务器发送请求, 查找cn所在的DNS服务器, 由根域名DNS服务器返回cn所在的DNS服务器的IP地址
      <2> 浏览器再一次向cn所在的DNS服务器发送请求, 查找com.cn所在的DNS服务器, 有cn所在的DNS服务器返回com.cn所在的DNS服务器的IP地址
      <3> 浏览器再一次向com.cn所在的DNS服务器发送请求, 查找是否存在sina.com.cn的域名, 如果存在, 则返回其IP地址
      <4> 浏览器向上一次查找到的www.sina.com.cn所在的IP地址发送请求
  ```
#### 网关(路由器):
  ```
  作用: 
    <1> 相同网段之间只需要通过交换机就可以实现信息的传输, 不同网段之间要通过路由器进行传输, 路由器就是网关, 能够实现不同网段之间的数据传输 
    <2> 将内网IP转换为公网IP, 将公网IP转换为内网IP, 公网IP是全球唯一的
  ```
