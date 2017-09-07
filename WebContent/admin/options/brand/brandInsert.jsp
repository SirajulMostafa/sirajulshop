<%@ include file="/common/jstltag.jsp"%>
<%@ include file="/core/conndb.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
/* String base_url =request.getContextPath();
String login_url = base_url+"/login.jsp"; */
%>
	<c:if test="${ empty param.brand_title }">
		<c:redirect url="categoryInsert.jsp">
			<c:param name="errMsg"
				value="Please Enter Brand Name" />
		</c:redirect>
	</c:if>
	
	<sql:update dataSource="${db}" var="result">
            INSERT INTO brands(brand) VALUES (?);
             <sql:param value="${param.brand_title}" />
		
	</sql:update>
	
	<c:if test="${result>=1}">
		<font size="5" color='green'> Congratulations ! Data inserted
			successfully.</font>
		<c:redirect url="/admin/welcome.jsp">
			<c:param name="susMsg"
				value="Congratulations !brand inserted
            successfully." />
		</c:redirect>
	</c:if>
</body>
</html>