<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
//EL은 JSP와 JavaScript이 문법이 같다. JSP가 JavaScript보다 우선한다.
<%//scriptlet: JSP
	pageContext.setAttribute("name", "진수현");
%>
var name="윤웅찬";
alert(`내이름은 ${name} 입니다.`);	//EL은 JSP와 문법이 같아서 이름이 출력되지 않는다.
alert("내이름은 "+ name +" 입니다.");//기존의 문법을 사용하면 JavaScript 의 변수를 사용한다.
</script>
</head>
<body>

</body>
</html>