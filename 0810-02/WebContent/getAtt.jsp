<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <p>${ requestScope.name1 }</p>
 <p>${ requestScope.name2 }</p>
 <p>${ applicationScope.name3}</p>
 <p>${ requestScope.name4}</p>
 <p>${ applicationScope.name4}</p>
 
 <hr/>
 
 - el이 알아서 객체를 알아봄
 <p>${ name1}</p>
 <p>${ name2}</p>
 <p>${ name3}</p>
 <p>${ name4}</p>
 - name4중에 request를 호출함 (더좁은 범위를 찾아서 호출함)
 page < request < session < application
 <hr/>
 <p>${ none }</p>
 - 찾아보고 값이 없네? ==> 공백
 <hr/>
 - https://mvnrepository.com/artifact/javax.servlet/jstl/1.2	//
 - jstl.jar 검색 후 두번째 페이지
</body>
</html>