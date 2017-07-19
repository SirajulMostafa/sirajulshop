
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Here</title>
<link rel="stylesheet" href="css/import.css" >


</head>
<body>
<% String a =request.getContextPath(); %>
Request Context Path: <%= a+"a" %><br>

Request URI:<%= request.getRequestURI() %><br>
Request URL:<%= request.getRequestURL() %><br>
<div class="row">
   <div class="container col-md-4 col-md-offset-4" style="padding-top:60px">
      <form class="form-signin" action="loginAuthenticate.jsp" method="post"> 
        <h2 class="form-signin-heading " style="text-align: center; color: #177e82">Admin Login </h2>
        <label for="inputText" class="sr-only">Username</label>
        <input type="text" name="display_name"  id="inputText" class="form-control" placeholder=" username/Email " required >
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
         <button name="submit" value="submit" class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
     </form>
           <font color="red">
           <c:if test="${not empty param.errMsg}">
            <c:out  value="${param.errMsg}"/>
            </c:if>
            </font>
   </div>
    </div> <!-- /container -->

</body>
</html>