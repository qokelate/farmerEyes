
## 某些很有参考价值的git仓库
* [Bootstrap](https://github.com/twitter/bootstrap) Twitter推出的一个开源的用于web前端开发的工具包，提供了优雅的HTML和CSS规范。

* [Homebrew](https://github.com/mxcl/homebrew) Mac平台中的包管理器，相当于Ubuntu/Linux中的 apt-get，用来安装一些零碎的东西很方便。

* [OH-MY-ZSH RobbyRussell](https://github.com/robbyrussell/oh-my-zsh) 由社区驱动的、用于管理zsh配置的框架。

* [HTML5 Boilerplate（H5BP）](https://github.com/h5bp/html5-boilerplate) HTML/CSS/JS模板（技巧集合），包含了HTML5以及许多其他最佳实践。

* [Node（Joyent）](https://github.com/joyent/node) 一套用来编写高性能网络服务器的JavaScript工具包。

* [jQuery](https://github.com/jQuery/jQuery) 呵呵(JavaScript & Query)！

* [Linux](https://github.com/torvalds/linux) 嗯，做得还行的操作系统。

* [Gitignore](https://github.com/github/gitignore) Github出品的.gitignore模板集合

* [Mangos](https://github.com/mangos) 一个完整的魔兽世界服务器（服务器框架），包含了身份验证、客户端升级、世界内容服务。

## 经济实惠的工具软件
* [retinizer](http://retinizer.mikelpr.com/) 让非Retina应用支持Retina显示(比如FileZilla)

* [textmate](https://github.com/textmate/textmate) 很实用的文本编辑器

* [babun](https://github.com/babun/babun) 解压即用的 Windows Shell, 集成 zsh 和 oh-my-zsh(简直不能更赞了).

* [mintty](https://github.com/mintty/mintty) 基于Cygwin的Windows Shell

## XCode增强插件
* [uncrustify](https://github.com/uncrustify/uncrustify) 在Xcode中一键整理OC代码

* [chisel](https://github.com/facebook/chisel) 方便视图调试的工具

* [injection for Xcode](https://github.com/johnno1962/injectionforxcode) 随时修改代码并直接看效果。

## 有点大型的工具系统
* [redmine](https://github.com/redmine/redmine) 一个网页界面的项目管理与缺陷跟踪管理系统的自由及开放源代码软件工具。

* [wine](https://wiki.winehq.org/Git_Wine_Tutorial) 在Linux/BSD/Unix中运行Windows程序.

## 在特定场合比较屌的引擎库
* [cocos2d-x](https://github.com/cocos2d/cocos2d-x) 一个手游引擎,有点NB,不多解释

* [openssl](https://github.com/openssl/openssl) 各种乱七八糟的数字指纹(CRC,MD5,SHA1)

* [libcurl](https://github.com/curl/curl) 支持N多操作系统和N多网络协议的网络库,没事瞎撸撸很不错.
	- N种装逼协议(FTP, FTPS, HTTP, HTTPS, GOPHER, TFTP, SCP, SFTP, TELNET, DICT, LDAP, LDAPS, FILE, IMAP, SMTP, POP3, RTSP, RTMP)
	
	- N多装逼系统(AIX, AmigaOS, Apple iOS, BeOS, Chrome NaCl, DOS, DragonFly BSD, FreeBSD, GNU-Darwin, HPUX, Haiku, Hurd, IRIX, Linux, Mac OS X, MiNT, Midnight BSD, Minix, NetBSD, NetWare, Nexenta, OS/2, Open Server, OpenBSD, Plan9, QNX, RISC OS, Solaris, Syllable,Tru64UNIX, UnixWare, VMS, Win32, Win64, z/OS)

* [YYKit](https://github.com/ibireme/YYKit) 在IOS中实现复杂的内容混排.

* [tidy-html5](https://github.com/htacg/tidy-html5) 带修复功能的HTML解释库,不过不支持XPATH查询,略憾

* [eleeye](https://github.com/xqbase/eleeye) 一个开源的中国象棋,个人比较喜欢,所以收录.

* [WProtect](https://github.com/xiaoweime/WProtect) 一个很不错的加密壳

* [cerberus](https://github.com/devilogic/cerberus) Win32下的VM加密壳

## 偶尔要用到的辅助工具
* [build-libcurl-windows](https://github.com/blackrosezy/build-libcurl-windows) 提供傻瓜化的`libcurl `编译

* [tesseract](https://github.com/tesseract-ocr/tesseract) OCR识别,貌似很屌,不过没研究过

* [WNetLicensor](https://github.com/xiaoweime/WNetLicensor) 简易搭建网络认证

* [HexFiend](https://github.com/ridiculousfish/HexFiend) 开源的16进制编辑器

* [staticfile](https://github.com/staticfile/static) 为开源库提供免费稳定的CDN服务 

* [MXE](https://github.com/mxe/mxe) 在Linux/BSD/Unix中编译Windows程序(装逼必备)

* [cJSON](https://github.com/DaveGamble/cJSON) 纯C编写,非常轻量,适合二次扩展

* [json-c](https://github.com/jehiah/json-c) 纯C编写,比cJson胖很多,支持更多特性(注释,单引号字符串),不过嵌套层数有限制

## 别人的笔记
* [TimLiu-iOS](https://github.com/Tim9Liu9/TimLiu-iOS) 某位大牛总结的IOS库列表,很全很屌很帅很感谢!

<BR />
<BR />
<BR />
<BR />


## 常用git操作
### 1.多仓库操作
 * 1．编辑 `.git/config` 文件,添加以下数据
 
 		[remote "github"]
		url = https://github.com/qokelate/sma11case.git
			
 * 2．保存后使用 `git remote -v` 查看配置
			
 * 3．使用 `git pull github` 或 `git push github` 进行相应操作



### 2. 硬回溯到指定版本
 * `xxxx` 为版本号,不指定时为最后一次pull的版本

		git reset --hard [xxxx]

### 3. 代理设置
 * 设置代理
 
		git config --global http.proxy socks5://127.0.0.1:1080
		git config --global https.proxy socks5://127.0.0.1:1080


 * 取消代理

		git config --global --unset http.proxy  
		git config --global --unset https.proxy

### 4.stash操作
 * 把当前所有更改保存到stash,并reset到最后一次pull状态

		git stash
	
 * 查看stash列表

		git stash list

 * 弹出最后一次stash(相当于 git stash apply + git stash drop)

		git stash pop


 * 应用stash(仅是应用,不会在列表中删除)

		git stash apply


 * 删除stash记录

		git stash drop

 * 设置命令别名

		git config --global alias.pl "log --oneline --graph --decorate"
		git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
	
 * 新建和合并分支

	* 内容较多,可直接查阅[详细流程](https://git-scm.com/book/zh/v1/Git-%E5%88%86%E6%94%AF-%E5%88%86%E6%94%AF%E7%9A%84%E6%96%B0%E5%BB%BA%E4%B8%8E%E5%90%88%E5%B9%B6)(侵删!)

　

	# 创建分支并切换到该分支 (相当于 git branch iss53 + git checkout iss53)
	git checkout -b iss53
	
	# 在iss53修补过程中发现master出现严重bug,必须立即处理,没办法,暂时切回master
	git stash # 保存一下环境
	git checkout master
	
	#　开个新分支处理紧急情况
	git checkout -b hotfix
	
	# 对hotfix进行惨无人道的修复,完成后commit提交
	// vim index.html
	// fix bugs.....
	// git commit -am 'fixed the broken email address'
	
	# 然后切回master分支并合并
	git checkout master
	git merge hotfix
	
	# hotfix分支光荣退休(删除分支).....
	git branch -d hotfix
	
	# 回到21世纪继续干活
	git checkout iss53
	
	# 恢复工作进度
	git stash pop
	
	# 接着又是一轮惨绝人寰修改...
	// do something
	
	# 合并iss53到master
	git checkout master
	git merge iss53
	
	// 解决冲突 & commit
	// echo. 收工

