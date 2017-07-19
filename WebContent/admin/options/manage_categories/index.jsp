
<style type="text/css">
.sort {
	padding: 10px;
	list-style: none;
	border: 1px solid #ccc;
}
.ui-sortable {
	padding-left: 0px;
}
</style>

<ul id="sortlist" class="ui-sortable">
	<sql:query dataSource="${db}" var="rs"> SELECT * from shop_categories WHERE category_parent=0 ; </sql:query>
	<c:forEach var="row" items="${rs.rows}">

		<li class="sort" id="34"><i class="icon-sort"></i>${row.cat_title}
			<%-- <c:set var="parent_id"  value="${row.id}"/> --%> <sql:query
				dataSource="${db}" var="rs_count">
SELECT COUNT(category_parent) AS count FROM shop_categories WHERE category_parent=${row.id};
</sql:query> <c:forEach items="${rs_count.rows}" var="result">
				<c:if test="${result.count<1 }">
					<%="&nbsp"%>
				</c:if>
				
				<c:if test="${result.count==1 }">
					<c:set var="entity" value="category" />

					<c:url value="index.jsp" var="edit_url">
						<c:param name="edit" value="category" />
						<c:param name="id" value="${row.id}" />
					</c:url>
					
					<c:url value="index.jsp" var="view_url">
						<c:param name="view_categories" value="categories" />
						<c:param name="id" value="${row.id}" />
					</c:url>
					
					<a class="btn btn-success" href="${view_url }"> <i
						class="glyphicon glyphicon-eye-open"> </i> ${result.count }
						${entity}
					</a>
					<a class="btn btn-info" href="${edit_url }"> <i
						class=" glyphicon glyphicon-pencil"></i>
					</a>
				</c:if>
				
				<c:if test="${result.count>1 }">
					<c:set var="entity" value="categories" />
					<c:url value="index.jsp" var="edit_url">
						<c:param name="edit" value="category" />
						<c:param name="id" value="${row.id}" />
					</c:url>
					
					<c:url value="index.jsp" var="view_url">
						<c:param name="view_categories" value="categories" />
						<c:param name="id" value="${row.id}" />
					</c:url>
					<a class="btn btn-success" href="${view_url }"> <i
						class="glyphicon glyphicon-eye-open"> </i> ${result.count }
						${entity}
					</a>
					<a class="btn btn-info" href="${edit_url }"> <i
						class=" glyphicon glyphicon-pencil"></i>
					</a>
				</c:if>
			</c:forEach></li>
	</c:forEach>
</ul>








<div class="margin">
	<div class="btn-group">
		<button type="button" class="btn btn-default">Categories</button>
		<button type="button" class="btn btn-default dropdown-toggle"
			data-toggle="dropdown">
			<span class="caret"></span> <span class="sr-only">Toggle
				Dropdown</span>
		</button>
		<ul class="dropdown-menu" role="menu">
			<li><a href="index.jsp?add=add_category">Add Category</a></li>
			<li><a href="index.jsp?edit=category&id=1">Edit Category</a></li>
			<li><a href="#">Another action</a></li>
			<li><a href="#">Something here</a></li>
			<li class="divider"></li>
			<li><a href="#">Separated link</a></li>
		</ul>
	</div>
	<div class="btn-group">
		<button type="button" class="btn btn-info">Action</button>
		<button type="button" class="btn btn-info dropdown-toggle"
			data-toggle="dropdown">
			<span class="caret"></span> <span class="sr-only">Toggle
				Dropdown</span>
		</button>
		<ul class="dropdown-menu" role="menu">
			<li><a href="#">Action</a></li>
			<li><a href="#">Another action</a></li>
			<li><a href="#">Something else here</a></li>
			<li class="divider"></li>
			<li><a href="#">Separated link</a></li>
		</ul>
	</div>
	<div class="btn-group">
		<button type="button" class="btn btn-danger">Edit</button>
		<button type="button" class="btn btn-danger dropdown-toggle"
			data-toggle="dropdown">
			<span class="caret"></span> <span class="sr-only">Toggle
				Dropdown</span>
		</button>
		<ul class="dropdown-menu" role="menu">
			<li><a href="#">Action</a></li>
			<li><a href="#">Another action</a></li>
			<li><a href="#">Something else here</a></li>
			<li class="divider"></li>
			<li><a href="#">Separated link</a></li>
		</ul>
	</div>
	<div class="btn-group">
		<button type="button" class="btn btn-success">Add</button>
		<button type="button" class="btn btn-success dropdown-toggle"
			data-toggle="dropdown">
			<span class="caret"></span> <span class="sr-only">Toggle
				Dropdown</span>
		</button>
		<ul class="dropdown-menu" role="menu">
			<li><a href="#">Action</a></li>
			<li><a href="#">Another action</a></li>
			<li><a href="#">Something else here</a></li>
			<li class="divider"></li>
			<li><a href="#">Separated link</a></li>
		</ul>
	</div>
	<div class="btn-group">
		<button type="button" class="btn btn-warning">Delete</button>
		<button type="button" class="btn btn-warning dropdown-toggle"
			data-toggle="dropdown">
			<span class="caret"></span> <span class="sr-only">Toggle
				Dropdown</span>
		</button>
		<ul class="dropdown-menu" role="menu">
			<li><a href="#">Action</a></li>
			<li><a href="#">Another action</a></li>
			<li><a href="#">Something else here</a></li>
			<li class="divider"></li>
			<li><a href="#">Separated link</a></li>
		</ul>
	</div>
</div>
