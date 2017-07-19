<c:choose>
<c:when test="${param.add=='add_category'}">
<form action="options/categoryInsert.jsp" method="post">

	<sql:query dataSource="${db}" var="rs"> SELECT * from shop_category WHERE category_parent=0 ;  </sql:query>
	<div class="form-group">
		<label for="exampleInputEmail1">Parent Category</label> <select
			id="category_parent_id" name="category_parent_id"
			class="form-control "
			title="Enter a category otherwise default will be parent">
			<option value="0" selected="selected">Parent</option>
			<c:forEach var="row" items="${rs.rows}">
				<option value="${row.id}"
					${row.id==param.category_parent_id ?'selected="selected"':'' }>${row.cat_title}</option>
			</c:forEach>
		</select>
	</div>

	<div class="form-group">
		<label for="category_title">Category</label> <input type="text"
			class="form-control" id="category_title"
			placeholder="Enter Category Name" name="category_title" value="${row.cate_title}">
	</div>
	<div class=" control-group">
		<button type="submit" class="btn btn-success" value="submit">Submit</button>
		<button type="submit" class="btn btn-success" value="Cancel">cancel</button>
	</div>
</form>
</c:when>
<c:otherwise>
      <form action="options/category_updatedb.jsp" method="post">
<c:set value="${param.id }" var="param_id"/>
	<sql:query dataSource="${db}" var="rs"> SELECT * from shop_category WHERE id=${param_id } ;  </sql:query>
	
	<div class="form-group">
		<label for="category_title">Category</label> 
		<c:forEach var="row2" items="${rs.rows}">
		<h1>${row2.cat_title}"Edit now this category name"</h1>
		<input type="text"
			class="form-control" id="category_title"
			title="Edit category by use this field"
			 name="category_title" value="${row2.cat_title}">
			</c:forEach>
	</div>
	<div class=" control-group">
		<button type="submit" class="btn btn-success" value="submit">Submit</button>
		<button type="submit" class="btn btn-warning" value="Cancel">cancel</button>
	</div>
</form>      
      </c:otherwise>
   
</c:choose>







