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
	
3. HTML 설정
	- 설정 불필요
	- mkdir src/main/webapp 폴더 생성
	- notepad src/main/webapp/Hello.html
	- gradle bootRun
	- Firefox ==> http://localhost:8080/Hello.html

4. JSP 설정
	- mvnrepository.com >> search : tomcat jasper 
	- build.gradle dependency : jasper
		// https://mvnrepository.com/artifact/org.apache.tomcat.embed/tomcat-embed-jasper
		compile group: 'org.apache.tomcat.embed', name: 'tomcat-embed-jasper', version: '8.5.4'    == > build.gradle에 설정
	- gradle reflesh해주면 됩니다.
	- notepad src/main/webapp/Hello.jsp
	- gradle bootRun
	- Firefox ==> http://localhost:8080/Hello.jsp
	
5. Servlet 설정
	- Properties -> Project facets 추가
		->> Dynamic Web Module 3.1
		->> Java 1.8
		->> JavaScript 1.0
	- MosaicWebApplication.java << @ServletComponentScan 추가
	- com.hybrid.servlet.HelloServlet.java
	- gradle bootRun
	- Firefox ==> http://localhost:8080/HelloServlet
	
6. SpringLoaded 설정(리로드 기능)
	- mvnrepository.com >> search : spring loaded
	- build.gradle에 설정(두 곳)
		classpath("org.springframework:springloaded:1.2.6.RELEASE")
		// https://mvnrepository.com/artifact/org.springframework/springloaded
		compile group: 'org.springframework', name: 'springloaded', version: '1.2.6.RELEASE'
		
'1.2.6.RELEASE'
	- Eclipse Output Directory 변경
		bin 지우고 ==> build/classes/main
	