<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
</head>
<body>

	<%
		String n = request.getParameter("number");
		String n2 = request.getParameter("number2");
		String cal = request.getParameter("cal");
		int num = Integer.valueOf(n);
		int num2 = Integer.valueOf(n2);
				
		if (cal.equals("+")) {
			out.println(num + " + " + num2 + " = " + (num+num2));
		} else if (cal.equals("-")) {
			out.print(num + " - " + num2 + " = " + (num - num2));
		} else if (cal.equals("*")) {
			out.print(num + " * " + num2 + " = " + (num*num2));
		} else {
			out.print(num + " / " + num2 + " = " + (num/num2));
		}
	%>
</body>
</html>