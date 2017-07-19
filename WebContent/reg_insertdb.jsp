<%@ include file="common/jstltag.jsp" %>
 <%@ include file="core/conndb.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% /* String base_url =request.getContextPath();
    String login_url = base_url+"/login.jsp"; */
%>

<c:if test="${ empty param.first_name or empty param.last_name or empty param.display_name or empty param.email or empty param.password or empty param.password_confirmation}">
            <c:redirect url="registration_form.jsp" >
                <c:param name="errMsg" value="Please Enter All the field with (*) sign" />
            </c:redirect>
        </c:if>
        <c:if test="${ param.password != param.password_confirmation}">
            <c:redirect url="registration_form.jsp" >
                <c:param name="errMsg" value="Password does not match try again" />
            </c:redirect>
        </c:if>
        
 
        <sql:update dataSource="${db}" var="result">
            INSERT INTO users(first_name, last_name, display_name,email,password) VALUES (?,?,?,?,?);
            <sql:param value="${param.first_name}" />
            <sql:param value="${param.last_name}" />
            <sql:param value="${param.display_name}" />
            <sql:param value="${param.email}" />
            <sql:param value="${param.password}" />
        </sql:update>
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted successfully.</font>
            <c:redirect url="admin/welcome.jsp" >
                <c:param name="susMsg" value="Congratulations ! Data inserted
            successfully." />
           
            </c:redirect>
        </c:if> 


</body>
</html>