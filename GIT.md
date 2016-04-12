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
		
 * reset后还原
		
		git reflog #查询要恢复的HASH值
		git reset --hard abcde ## 恢复到对应HASH版本
		
 * 设置命令别名

		git config --global alias.pl "log --oneline --graph --decorate"
		git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
	
 * 新建和合并分支

	* 内容较多,可直接查阅[详细流程](https://git-scm.com/book/zh/v1/Git-%E5%88%86%E6%94%AF-%E5%88%86%E6%94%AF%E7%9A%84%E6%96%B0%E5%BB%BA%E4%B8%8E%E5%90%88%E5%B9%B6)(感谢作者的无私分享! 侵删!)

　

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

