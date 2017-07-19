
<section class="content">
<form action="options/manage_categories/categoryInsert.jsp" method="post">

	<sql:query dataSource="${db}" var="rs"> SELECT * from shop_categories WHERE category_parent=0 ;  </sql:query>
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
<c:if test="${ param.edit=='category' and param.id!=null}">
<c:set value="${param.id }" var="param_id"/>
	<sql:query dataSource="${db}" var="rs"> SELECT * from shop_categories WHERE id=${param_id }  ;  </sql:query>
	<c:forEach var="row2" items="${rs.rows}">
<div class="form-group">
		<label for="category_title">Category</label> <input type="text"
			class="form-control" id="category_title"
			placeholder="Enter Category Name" name="category_title" value="${param.edit=='category' and  param.id!=null ?row2.cat_title:'' }">
	</div>
	</c:forEach>
	
	<div class=" control-group">
		<button type="submit" class="btn btn-success" value="update">Update</button>
		<button type="submit" class="btn btn-danger" value="Cancel">cancel</button>
	</div>
</c:if>
<c:if test="${ param.add=='add_category'}">
	<div class="form-group">
		<label for="category_title">Category</label> <input type="text"
			class="form-control" id="category_title"
			placeholder="Enter Category Name" name="category_title" value="">
	</div>
	
	<div class=" control-group">
		<button type="submit" class="btn btn-success" value="submit">Submit</button>
		<button type="submit" class="btn btn-danger" value="Cancel">cancel</button>
	</div>
	
	</c:if>
	
</form>
</section>
