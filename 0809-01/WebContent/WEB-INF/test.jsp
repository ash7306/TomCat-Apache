<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF 안에다가 jsp파일을 만듦</title>
</head>
<body>
	http://localhost:8080/WEB-INF/test.jsp 경로로 찾을수가 있다?? -> 404뜸
	일반 사용자가 절대 접근 할 수 없다.(주소로 아무리 요청해봤자 볼 수 없다.)
	그 이유는 우리가 만드는 자바 클래스파일등이 WEB-INF에 다 저장되기 때문에 보안상 숨긴다.
	(웹 어플리케이션의 모든 정보가 다 담김)	
</body>
</html>