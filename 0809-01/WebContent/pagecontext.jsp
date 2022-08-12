<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>context가 뭔가요?</p>
	<%
		//context ==> 개발자들이 어플리케이션 겨발에 필요한 정보를 모아두는 공간
		ServletRequest req =  pageContext.getRequest();
		//jsp에서 사용하는 정보들이 모여있는곳 pageContext라는 객체로 구현됨
		//그 'pageContext' 안에서 getRequest,getResponse 등으로 정보를 찾아 볼 수 있다.
		out.println(req == request);
		out.println(request);
		out.println("<br/>");
		
		ServletResponse resp =  pageContext.getResponse();
		out.println(resp == response);
		out.println(response);
				
		//HttpServletRequest는 클라이언트가 서버에 보내는 요청정보를 처리하는 객체이고
		//HttpServletResponse는 서버가 클라이언트로 보내는 응답정보를 처리하는 객체입니다.
	%>
</body>
</html>