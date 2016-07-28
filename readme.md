1. Spring Starter Project 생성

	-Name : MosaicWeb
	-Type : Gradle(BuildShip)
	-Packaging : war
	-Group : com.hybrid
	-Artifact : MosaicWeb
	-Package : com.hybrid
	
	-Dependecies : web 선택
	
2. 형상관리
	
	-Remote Repository 생성(github)
	-Local Repository 생성
		- >>git status
		- >>git log
		- >>gradle build
		- >>dir /A > .gitignore
		- >>notepade .gitignore
		- >>git init
		- >>git add *
		- >>git commit -m "first commit"
		
	-Local ==> Remote push(최초 동기화)
		- >>git remote -v
		- >>git remote remove origin  ==> origin이라는 이름을 가진 Repository를 삭제.
		- >>git remote add origin https://github.com/sehan1003/MosaicWeb.git
		- >>git push -u origin master
	
	- 개발자 2가 Clone 수행
		- >>git clone https://github.com/sehan1003/MosaicWeb.git
		- >>git clone https://github.com/sehan1003/MosaicWeb.git MosaicWebDev
		- >>Eclipse Gradle Import
	
	