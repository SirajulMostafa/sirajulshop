<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<c:if test="${empty sessionScope['loginUser']}">
	<c:redirect url="../login.jsp" />
</c:if>

<%-- <a href="logout.jsp">Logout 
    <c:out value="${sessionScope['loginUser']}" />
    
</a> --%>
