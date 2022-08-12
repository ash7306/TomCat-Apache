<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
	<p>로그인 처리 요청</p>
	<%
		//요청에 대한 정보를 가지고 있는 객체 request
		String id = request.getParameter("userid");		
		//해당 파라미터 값이 전달되었을 때 입력값이 없으면 '""빈문자열'
		String test = request.getParameter("ㅁㄴㅇㄹ");
		//없는 파라미터 값을 전달 받으면 'null'을 받음
		
		//입력값이 있으면 id님 반갑습니다. 출력
		if (id.length() > 0) {
			out.println(id + "님 반갑습니다.");
		} else {
			out.println("입력해주세요");
			//응답객체 response에서는 redirect를 자주 사용
			//사용자에게 페이지를 전달
			response.sendRedirect("./login.jsp");
			//프로그램 흐름중 위의 "입력해주세요"는 볼 수가 없다.
			//브라우저한테 리다이렉트해라(사이트로 이동해라)라는 응답만 전송하게 됨
			//리다이렉트를 보면 새 요청을 만든다.
		}
		
		//헤더 부분에 아까 온 친구라고 기억을 할 수 있다
		//각 클라이언트 한테 서버가 고유의 id를 줌
		//ex)서버가 넌 10번 고객이야 -> 그럼 클라이언트도 '나도 10번 고객이구나'
		//다음 요청때 나 10번 고객이야 하고 요청함 -> 서버도 아 그 10번 고객이구나 ㅇㅋ
		// ==>서버에 저장되는것을 'Session' 이라고 하고 그 id를 Session Id라고 한다
		// 클라이언트에 저장되는 이걸 '쿠키'라고 한다.
		// 각각의 저장 값을 다르나 Session id는 같은 값을 저장하고 잇음 
	%>
</body>
</html>