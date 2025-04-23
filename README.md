# 数据分析之hive环境准备
背景：数据分析的轻量hive环境，用于hiveSQL语法的熟悉。  
此环境满足：  
1.一键启动hive环境。  
2.hive数据数据可备份和还原。  
## 启动步骤
1.安装docker环境。  
2.拉取此项目至本地。  
3.进入项目目录 执行 docker compose -f ./docker-compose.yml up -d  
4.使用hive 客户端链接查询操作（jdbc:hive2://localhost:10000/default）  

## 数据备份还原步骤 
1.进入项目目录 执行备份命令 docker-compose -f ./docker-volumes-backup.yml up -d    
2.进入项目目录 执行备份命令 docker-compose -f ./docker-volumes-restore.yml up -d   
以上命令要记得各个文件中的SOURCE_TIME 设置的备份时间戳一样。  
## 俄罗斯镜像
```
{
	"registry-mirrors":[
		"https://docker.m.daocloud.io",
		"https://huecker.io",
		"https://dockerhub.timeweb.cloud",
		"https://noohub.ru"
		]
}
```
