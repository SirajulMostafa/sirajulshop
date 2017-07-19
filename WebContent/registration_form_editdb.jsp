<%@ include file="common/jstltag.jsp" %>
 <%@ include file="core/conndb.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html  lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <sql:update dataSource="${dbsource}" var="count">
            UPDATE product SET first_name = ?, last_name=?
            WHERE id='${param.id}'
            <sql:param value="${param.first_name}" />
            <sql:param value="${param.last_name}" />
        </sql:update>
        <c:if test="${count>=1}">
            <font size="5" color='green'> Congratulations ! Data updated
            successfully.</font>
              <a href="index.jsp">Go Home</a>          
        </c:if>
    </body>
</html>
