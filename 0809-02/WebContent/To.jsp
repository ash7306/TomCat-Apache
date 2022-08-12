<%@page import="java.util.Random"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//A-시간 , B-날짜, C-랜덤정수
	//String alphabet = request.getParameter("alphabet");
	//request.setAttribute("alphabet", alphabet);
	
	request.setAttribute("time", LocalTime.now());
	request.setAttribute("date", LocalDate.now());
	//request.setAttribute("random", (int)((Math.random()*10000)%10));
	Random ran = new Random();
	request.setAttribute("random", ran.nextInt(10)+1); 

	String alph = request.getParameter("alphabet");
		
	
	if (alph.equals("a")) {		
		request.getRequestDispatcher("A.jsp").forward(request, response);
	} else if (alph.equals("b")) {
		request.getRequestDispatcher("B.jsp").forward(request, response);
	} else {
		request.getRequestDispatcher("C.jsp").forward(request, response);
	}
	
%>