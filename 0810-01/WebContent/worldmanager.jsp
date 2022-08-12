<%@page import="kr.co.green.CountryDAO"%>
<%@page import="kr.co.green.Country"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%	
	//List<Country> list = (List<Country>) request.getAttribute("list");
	CountryDAO dao = new CountryDAO();
	String continent = request.getParameter("continent");
	List<Country> list = dao.getCountryByContinent(continent);
	
	request.setAttribute("testlist", list);
	request.getRequestDispatcher("result.jsp").forward(request, response);
	//List<Country> list2 = dao.getCountryByContinent2(continent);
	//pageContext.setAttribute("testlist", list);
	
	//이런 제어하는 클래스를 servlet 클래스 라고 부름   jsp = servlet
%>
