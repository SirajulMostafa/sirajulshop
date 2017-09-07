			<%
				String value;
				value = "Sirajul's Shopping Corner";
			%>
			<!-- NAVBAR -->
			<nav class="navbar navbar-main navbar-default" role="navigation">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-ex1-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index-2.html"><img
						src="Theme/img/logo.png" alt="logo"></a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-ex1-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a href="javascript:void(0)"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-haspopup="true" aria-expanded="false">Home</a>
							</li>
						<sql:query dataSource="${db}" var="rs"> SELECT * from shop_categories WHERE category_parent=0 ;  </sql:query>
					<c:forEach var="table" items="${rs.rows}">
					<c:set var="pk" value="${table.id}" />
					<sql:query dataSource="${db}" var="rs2"> SELECT * from shop_categories WHERE category_parent=${pk} ;  </sql:query>
					
						<li class="dropdown active"><a href="javascript:void(0)"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-haspopup="true" aria-expanded="false"><c:out value="${table.cat_title}" /></a>
							<ul class="dropdown-menu dropdown-menu-right">
							<c:forEach var="table2" items="${rs2.rows}">
								
								<li class="active">
								<a href="product-grid-left-sidebar.jsp?shortByCategoryID=<c:out value="${table2.id}" />">
								<c:out value="${table.cat_title}" />>><c:out value="${table2.cat_title}" />
								</a>
								</li>
							</c:forEach>	
							</ul></li>
							</c:forEach>
						
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			</nav>