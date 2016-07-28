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
		>>gradle build
		>>dir /A > .gitignore
		>>notepade .gitignore
		>>git init
		>>git add *
		>>git commit -m "first commit"
		
	-Local ==> Remote push(최초 동기화)
		>>git remote add origin https://github.com/sehan1003/MosaicWeb.git
		>>git push -u origin master
	