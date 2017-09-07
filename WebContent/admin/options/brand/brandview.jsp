

<!-- Main content -->

<section class="content">

	<!-- Default box -->

	<div class="box box-info">
		<div class="box-header with-border">
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
			<button class="btn btn-success">
				<i class="fa fa-pencil"></i><span>&ensp; Brand</span>
			</button>
		</div>

		<div class="box-body">

			<c:choose>
				<c:when test="${param.shopBrand=='edit' and param.id != null}">
					<form action="options/brand/brandUpdate.jsp" method="post">
						<c:set var="editID" value="${param.id}" />
						<sql:query dataSource="${db}" var="rs">
					  SELECT * from brands WHERE id=${editID }  ; 
					   </sql:query>
						<c:forEach var="brand" items="${rs.rows}">
							<div class="form-group">
								<label for="brand_title">Brand</label> <input type="text"
									class="form-control" id="brand_title"
									placeholder="Enter brand Name" name="brand_title"
									value="${brand.brand}">
							</div>
						</c:forEach>
						<input type="hidden" name="brand_id" value="${editID}">
						<div class=" control-group">
							<button type="submit" class="btn btn-success" value="update">Submit</button>
							<button type="submit" class="btn btn-danger" value="Cancel">cancel</button>
						</div>
					</form>
				</c:when>
				<c:otherwise>
					<button class="btn btn-info">
						<i class="fa fa-plus"></i><span></span>
					</button>
					<form action="options/brand/brandInsert.jsp" method="post">
						<div class="form-group">
							<label for="brand_title">Brand</label> <input type="text"
								class="form-control" id="brand_title"
								placeholder="Enter brand Name" name="brand_title">
						</div>
						<div class=" control-group">
							<button type="submit" class="btn btn-success" value="add">Submit</button>
							<button type="submit" class="btn btn-danger" value="Cancel">cancel</button>
						</div>
					</form>
				</c:otherwise>
			</c:choose>

		</div>
		<!-- /.box-body -->

	</div>
	<!-- /.box -->

</section>
<section class="content">
	<!-- Default box -->
	<div class="box box-info">
		<div class="box-header with-border">
			<a href="index.jsp?manage_shop_brand=shop_brand"><button
					class="btn btn-success">
					<i class="fa fa-plus"></i><span>&ensp; Add New Brand</span>
				</button></a>
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
			<sql:query dataSource="${db}" var="rs"> SELECT * from brands  ; </sql:query>
			<table id="example2" class="table table-bordered table-hover ">
				<caption style="color: rgba(18, 134, 181, 1)">
					<h4 class="box-title text-center">Manage Shop Item</h4>
				</caption>
				<thead>
					<tr>
						<th>ID NO:</th>
						<th>Item Title</th>
						<th>Our Price</th>
						<th>option</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="row" items="${rs.rows}">
						<tr>
							<td>${row.id}</td>
							<td>${row.brand}</td>

							<td><c:set var="imgPath"
									value="${pageContext.request.contextPath}/Theme/img/brand/${row.brand_logo}" />
								<img style="width: 50px; height: 50px"
								src="<c:out value="${imgPath}"/>"></td>
							<td><a
								href="index.jsp?manage_shop_brand=shop_brand&shopBrand=edit&id=${row.id}">Edit</a>
								|| <a href="index.jsp?shopBrand=delete&id=${row.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
					</tr>
				</tfoot>
			</table>


		</div>
		<!-- /.box-body -->

	</div>
	<!-- /.box -->

</section>
<!-- /.content -->

