<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<%@ include file="core/conndb.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${ empty param.display_name or empty param.password}">
      <c:redirect url="login.jsp" >
              <c:param  name="errMsg" value="Please Enter UserName and Password" />
      </c:redirect>
       
    </c:if>
     
    <c:if test="${not empty param.display_name and not empty param.password}">
      
      <sql:query dataSource="${db}" var="sqlQ">
        SELECT count(*) as kount from users
        WHERE display_name='${param.display_name}'
       AND password='${param.password}'
      </sql:query>
 
      <c:forEach items="${sqlQ.rows}" var="row">
        <c:choose>
          <c:when test="${row.kount gt 0}">
            <c:set scope="session"
                   var="loginUser"
                   value="${param.display_name}"/>
            <c:redirect url="admin/index.jsp">
             <c:param name="Username" value="${loginUser}" />
              
            </c:redirect>
          </c:when>
          <c:otherwise>
            <c:redirect url="login.jsp" >
             
              <c:param name="errMsg" value="Username/password does not match" />
            </c:redirect>
          </c:otherwise>
        </c:choose>
 
      </c:forEach>
 
    </c:if>
 


</body>
</html>

