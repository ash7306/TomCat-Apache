
<%
	//논리적인 흐름만 필요함
	String choice = request.getParameter("choice");
	
	if (choice == null || choice.length() == 0) {
		response.sendRedirect("./want.jsp?main=false");
	} else if (choice.equals("fruit")) {
		response.sendRedirect("./fruit.jsp");
	} else if (choice.equals("persons")) {
		response.sendRedirect("./persons.jsp");
	}
%>
