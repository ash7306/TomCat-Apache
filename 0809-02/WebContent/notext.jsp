<%
	int result = 1 + 1;
	request.setAttribute("result", result);
	//리퀘스트 객체가 여기서 만들어 진 객체가, 응답이 처리된 요쳥이 없어지고
	//리다이렉트로 인해 새 요청이 만들어지고 기존의 요청이 사라져서 null값을 보냄
	//response.sendRedirect("./viewPage.jsp?result=" + result);
	
	//리다이렉트는 여기서 응답을 만들어 내고
					//디스패쳐는 포워드를 할수 있는 객체			//요청객체, 응답객체
	request.getRequestDispatcher("/WEB-INF/viewPage.jsp").forward(request, response);
	//리다이렉트로 페이지 이동 응답을 전송시키면 새로운 객체(새로운 요청)가 만들어 지고
	//리퀘스트 객체에 담아 놓은 값들을 페이지간 공유하는게 힘들어서 공유를 할 수 있게끔
	//'페이지의 흐름을 유지하도록 하기 위해서''forward'를 사용한다.
	
	//포워드라는 친구는 그냥 흐름으로 페이지에 전달할 뿐임 --> viewPage.jsp 페이지로 전달 
	//그전페이지의 attribute객체를 볼 수 있게 한다.
	
	//notext페이지를 요청하면 보고있는 페이지는 viewPage지만
	//요청한 페이지를 나타낸다(주소창에 보면 notext가 보임) , 리다이렉트랑은 다름 요청한 페이지를 보여줌
	
%>

