
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% String base_url =request.getContextPath();
    String login_url = base_url+"/login.jsp";
%>

	<font color="red"> <c:if test="${not empty param.susMsg}">
			<c:out value="${param.susMsg}" />
		</c:if> <a href="<%=login_url%>">Go back To Login page</a>
	</font>
	<div class="callout callout-danger">
		<h4>Warning!</h4>
		<p>The construction of this layout differs from the normal one. In
			other words, the HTML markup of the navbar and the content will
			slightly differ than that of the normal layout.</p>
	</div>
</body>
</html>