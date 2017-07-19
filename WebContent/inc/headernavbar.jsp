<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<%
				String value;
				value = "Sirajul's Shopping Corner";
			%>
			<a class="navbar-brand" href="#"><%=value%></a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">

			<sql:query dataSource="${db}" var="rs"> SELECT * from shop_categories WHERE category_parent=0 ;  </sql:query>
			<ul class="nav navbar-nav">
				<c:forEach var="table" items="${rs.rows}">
					<c:set var="pk" value="${table.id}" />
					<sql:query dataSource="${db}" var="rs2"> SELECT * from shop_categories WHERE category_parent=${pk} ;  </sql:query>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"><c:out value="${table.cat_title}" /> <span
							class="caret"></span> </a>
						<ul class="dropdown-menu">
							<c:forEach var="table2" items="${rs2.rows}">
							
								<li><a href="#"><c:out value="${table.cat_title}" />>><c:out value="${table2.cat_title}" /></a></li>
							</c:forEach>
						</ul>
						</li>
				</c:forEach>

			</ul>

			<form class="navbar-form navbar-right" action="">
				<div class="form-group">
					<input type="text" placeholder="Email" class="form-control">
				</div>
				<div class="form-group">
					<input type="password" placeholder="Password" class="form-control">
				</div>
				<button type="submit" class="btn btn-success">Sign in</button>
			</form>
		</div>
		<!--/.navbar-collapse -->
	</div>
</nav>