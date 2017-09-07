
<!-- shopItem=edit&id=1 -->
<c:if test="${ param.shopItem=='edit' and param.id!=null}">
	<c:set value="${param.id }" var="param_id" />
	<sql:query dataSource="${db}" var="rs"> SELECT * from products WHERE id=${param_id }  ;  </sql:query>


	<!-- button group for Optional part -->
	<!-- Main content -->
	<section class="content" style="min-height: 100px; padding-bottom: 0px">
		<!-- Default box -->
		<div class="box box-success">
			<div class="box-header with-border">
				<h4 class="box-title text-green">Optional Button</h4>
				<div class="box-tools pull-right">
					<button class="btn btn-box-tool" data-widget="collapse"
						data-toggle="tooltip" title="Collapse">
						<i class="fa fa-minus"></i>
					</button>
					<button class="btn btn-box-tool" data-widget="remove"
						data-toggle="tooltip" title="Remove">
						<i class="fa fa-times"></i>
					</button>
				</div>
			</div>
			<div class="box-body">
				<!-- /.box-body -->
				<div class="btn-group">
					<%
						String imgId = request.getParameter("id");
					%>
					<a href="index.jsp?shopItem=edit&imgID=<%=imgId%>"><button
							type="button" class="btn btn-warning">UploadImage</button></a> <a
						href="#"><button type="button" class="btn btn-success">Assign
							Category</button></a> <a href="#"><button type="button"
							class="btn btn-info">Add Color</button></a> <a href="#"><button
							type="button" class="btn btn-danger">Add size</button></a> <a
						href="#"><button type="button" class="btn btn-warning">Review</button></a>
					<a href="#"><button type="button" class="btn btn-warning">Delete</button></a>
				</div>
			</div>
			<!-- /.box-footer-->
		</div>
	</section>
	<!-- /.content -->
	<!-- /button group for Optional part -->
	<!-- Main content -->
	<section class="content" style="padding-top: 0px">
		<!-- Default box -->
		<div class="box box-warning">
			<div class="box-header with-border">
				<h3 class="box-title text-green">Add Shop Item</h3>
				<p class="text-danger">All The filed with(*) should not be empty</p>
				<c:if test="${ not empty param.errMsg }">
			${param.errMsg }
	</c:if>
				<div class="box-tools pull-right">
					<button class="btn btn-box-tool" data-widget="collapse"
						data-toggle="tooltip" title="Collapse">
						<i class="fa fa-minus"></i>
					</button>
					<button class="btn btn-box-tool" data-widget="remove"
						data-toggle="tooltip" title="Remove">
						<i class="fa fa-times"></i>
					</button>
				</div>
			</div>

			<div class="box-body">
				<form action="options/manage_shop_items/shop_items_mdl/edit.jsp"
					method="post">
					<!--form group -->
					<c:forEach var="row" items="${rs.rows}">
						<div class="form-group col-md-6">
							<label for="item_title">Item Title<sup><span>*</span></sup></label>
							<input type="text" class="form-control" id="item_title"
								name="item_title" value="${row.title}">
						</div>
						<!-- /form group -->
						<div class="form-group col-md-6">
							<label for="item_price">Our Price<sup><span>*</span></sup></label>
							<input type="text" class="form-control" id="item_price"
								name="item_price" value="${row.item_price}">
						</div>
						<div class="form-group col-md-6">
							<label for="was_price">Was Price(optional)</label> <input
								type="text" class="form-control" id="was_price"
								placeholder="Enter was Price  of your product" name="was_price"
								value="${row.was_price}">
						</div>

						<!-- 
				SELECT shop_categories.*,brands.*,prod_brand_cat.* 
				FROM prod_brand_cat 
				INNER JOIN shop_categories ON shop_categories.id = prod_brand_cat.shop_category_id 
				INNER JOIN brands ON brands.id = prod_brand_cat.brand_id
				WHERE prod_brand_cat.id=1
				 -->

						<c:set value="${row.prod_brand_cat_id}" var="prod_brand_cat_id" />
						<sql:query dataSource="${db}" var="rs2">
				 SELECT shop_categories.*,brands.*,prod_brand_cat.* 
				FROM prod_brand_cat 
				INNER JOIN shop_categories ON shop_categories.id = prod_brand_cat.shop_category_id 
				INNER JOIN brands ON brands.id = prod_brand_cat.brand_id
				WHERE prod_brand_cat.id='${row.prod_brand_cat_id}';
				 </sql:query>
						<c:forEach var="row2" items="${rs2.rows}">
							<c:set value="${row2.brand_id}" var="brand_id" />
							<c:set value="${row2.brand}" var="brand_title" />
							<c:set value="${row2.cat_title}" var="child_category" />
							<c:set value="${row2.shop_category_id}" var="shop_category_id" />
							<c:set value="${row2.id}" var="prod_brand_cat_id" />
							<c:set value="${row2.shop_category_id}" var="shop_category_id" />

						</c:forEach>

						<div class="form-group col-md-6">
							<label for="brand">Barnd</label> <select id="brand"
								name="brand_id" class="form-control "
								title="Enter a brand otherwise default will be 0">
								<option value="${brand_id}" selected="selected">${brand_title}</option>
								<sql:query dataSource="${db}" var="rs3">
							  SELECT  * FROM brands WHERE id !='${brand_id}';
							 </sql:query>
								<c:forEach var="brandRow" items="${rs3.rows}">

									<option value="${brandRow.id}">${brandRow.brand}</option>

								</c:forEach>


							</select>
						</div>

						<div class="form-group col-md-6">
							<label for="shop_category_id">Category(optional)</label> <select
								id="shop_category_id" name="shop_category_id"
								class="form-control ">

								<option value="${shop_category_id}" selected="selected">${child_category}</option>
								
								<sql:query dataSource="${db}" var="result">
							  SELECT  * FROM shop_categories WHERE id ='${shop_category_id}';
							 </sql:query>
							 	<c:forEach var="categoryChild" items="${result.rows}">
							 <c:set value="${categoryChild.category_parent}" var="category_parent" />
							 </c:forEach>
							 
							 <sql:query dataSource="${db}" var="categories">
							  SELECT  * FROM shop_categories WHERE category_parent =?;
							  <sql:param value="${category_parent}" />
							
							 </sql:query>
							 
								<c:forEach var="categoryRows" items="${categories.rows}">
									<option value="${categoryRows.id}">${categoryRows.cat_title}</option>
								</c:forEach>
							</select>
						</div>


						<div class="form-group col-md-6">
							<label for="status">Status</label> <select id="status"
								name="status" class="form-control "
								title="Enter a status otherwise default will be active">

								<c:if test="${row.status=='0'}">
									<option value="0" selected="selected">Inactive</option>
									<option value="1">Active</option>
								</c:if>
								<c:if test="${ row.status=='1'}">
									<option value="1" selected="selected">Active</option>
									<option value="0">Inactive</option>
								</c:if>
							</select>
						</div>

						<div class="form-group col-md-12">
							<label>Description</label>
							<textarea id="editor1" class="form-control" rows="3"
								name="item_description">${row.item_description}</textarea>
						</div>
						<input type="hidden" id="product_id" name="product_id"
							value="${param_id}">
						<input type="hidden" id="prod_brand_cat_id"
							name="prod_brand_cat_id" value="${prod_brand_cat_id}">
						<div class=" control-group col-md-12">
							<button type="submit" class="btn btn-success" value="submit">Submit</button>
							<button type="submit" class="btn btn-danger" value="Cancel">cancel</button>
						</div>
				</form>

			</div>
			<!-- /.box-body -->
			<div class="box-footer">Footer</div>
			<!-- /.box-footer-->
		</div>
		<!-- /.box -->

	</section>
	<!-- /.content -->

	</c:forEach>
</c:if>







