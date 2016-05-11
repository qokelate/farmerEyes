## ubuntu 14.04

#### 1. 更新163源
`http://mirrors.163.com/.help/ubuntu.html`

```
vim /etc/apt/sources.list

deb http://mirrors.163.com/ubuntu/ trusty main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ trusty-security main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ trusty-updates main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ trusty-proposed main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ trusty-backports main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ trusty main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ trusty-security main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ trusty-updates main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ trusty-proposed main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ trusty-backports main restricted universe multiverse
```

#### 2. 配置SSH超时

```
vim /etc/ssh/sshd_config

ClientAliveInterval 30
ClientAliveCountMax 6

#service sshd restart
service sshd reload
```

#### 3. 安装 add-apt-repository
`http://lifeonubuntu.com/ubuntu-missing-add-apt-repository-command/`

```
apt-get install software-properties-common
```

#### 4. 安装中文支持
```
cd /usr/share/locales
./install-language-pack zh_CN
```

#### 5. 安装 apt-fast
```
add-apt-repository ppa:saiarcot895/myppa
apt-get update
apt-get -y install apt-fast
```

#### 6. 添加i386支持
`http://lubos.rendek.org/installation-of-i386-skype-on-debian-64bit/`

```
dpkg --add-architecture i386
apt-get update
```

#### 7. 添加常用组件
```
apt-get install git
apt-get install gdebi
apt-get install dnsutils
```





