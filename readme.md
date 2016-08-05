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
	- Eclipse Gradle Reflesh 수행
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
	- Eclipse Gradle Reflesh 수행
		
'1.2.6.RELEASE'
	- Eclipse Output Directory 변경
		bin 지우고 ==> build/classes/main
		

7. Mybatis 설정 (DB를 위한 설정)
	- mvnrepository.com >> search : spring boot mybatis
	- build.gradle에 Dependency 설정
	// https://mvnrepository.com/artifact/org.mybatis.spring.boot/mybatis-spring-boot-starter
	compile group: 'org.mybatis.spring.boot', name: 'mybatis-spring-boot-starter', version: '1.1.1'
	- Eclipse Gradle Reflesh 수행
	- gradle bootRun  하면 오류!
	- application.properties에서 설정
		#
		#	DataSource
		#
		spring.datasource.driver-class-name=oracle.jdbc.OracleDriver
		spring.datasource.url=jdbc:oracle:thin:@52.78.48.117:1521:orcl
		spring.datasource.username=scott
		spring.datasource.password=tiger
	- build.gradle에서 providedRuntime files('src/main/webapp/WEB-INF/lib/ojdbc7.jar'); 설정
	- gradle bootRun
	- notepad src/main/java/com/hybrid/mapper/DeptMapper.java 인터페이스 생성
    - notepad src/main/java/com/hybird/domain/Dept.java
    - notepad src/test/java/com/hybrid/mapper/DeptMapperTest.java
    - notepad src/main/webapp/dept.jsp
    
8. Deploy 방법
	- gradle war
	- build/libs/MosaicWeb~~~.war
	- cp MosaicWeb.war C:\Program Files\Apache Software Foundation\Tomcat 8.5\webapps에 복사
	- Firefox ==> http://localhost/MosaicWeb/index.html
	
9. Gluon 설정
	- cp FXTemplate/src/*  main 복사해서 붙여넣기  ==>   MosaicWeb/ src    
	- merge FXTempliate/build.gradle MosaicWeb/build.gradle
	- merge com.hybrid.fx.MainApllication com.hybrid.MosaicWebApplication
		->> spring boot + gluon start
		->> spring boot + gluon stop
		->> PrimaryView 에 WebView 추가
	
10. SiteMesh 설정
	- mvnrepository.com  >> search : sitemesh
	- build.gradle dependencies 추가
	// https://mvnrepository.com/artifact/org.sitemesh/sitemesh
	compile group: 'org.sitemesh', name: 'sitemesh', version: '3.0.1'
	- builder.addDecoratorPath("/deco", "/WEB-INF/deco/maindeco.jsp");
	
	
11. Spring Security 설정
	- mvnrepository.com  >> search : spring boot security/ spring security taglibs
	- build.gradle dependecies 추가
		->> compile('org.springframework.boot:spring-boot-starter-security') //spring-boot-starter-tomcat과 버전이 같아야함.
		->> compile group: 'org.springframework.security', name: 'spring-security-taglibs', version: '4.0.4.RELEASE' //spring-security-config/web과 버전이 같아야함
		
		
12. JSTL 설정
	- mvnrepository.com  >> search : jstl
	- build.gradle dependecies 추가
		->> // https://mvnrepository.com/artifact/javax.servlet/jstl
		->> compile group: 'javax.servlet', name: 'jstl', version: '1.2'
		
	
	
	