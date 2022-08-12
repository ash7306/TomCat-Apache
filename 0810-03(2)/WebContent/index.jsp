<!-- 
	페이지 이동을 제공하는 index.html 작성
	
	a. 사람 등록 페이지(입력 양식 제공)
		-> action = mapping된 servlet
		-> service 메소드 {
			db 행을 추가
			redirect 응답 (사람 목록 페이지)
		}
		
	b. 사람 목록 페이지
		-> action = mapping된 servlet
		-> service 메소드 {
			db 목록 읽기
			forward 사람 목록을 볼 수 있는(view) 페이지로
		}
 -->


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사람</title>
</head>
<body>
	<p><a href="inputPersons.jsp">a. 사람 등록 페이지</a><br/></p>
	<p><a href="./persons2">b. 사람 목록 페이지</a></p>
</body>
</html>