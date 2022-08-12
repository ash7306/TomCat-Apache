<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userName = request.getParameter("name");
		String userAge = request.getParameter("age");
		
					//trim() ==> 앞뒤 공백을 잘라주는 함수
		if (userAge == null || userAge.trim().length() == 0) {
			response.setStatus(400);
			//응답 객체에서 '응답코드'에 따라 setStatus로 오류를 잡아 줄 수 있다.
			out.println("잘못된 입력");
		} else {
			if (userName.length() > 0 && userAge.length() > 0) {
				out.println("(" + userName + ", " + userAge + ")님 환영합니다.");
			} else {
				response.sendRedirect("./user.jsp");
			}
		}
	%>
</body>
</html>

