

<!-- Main content -->
<section class="content">

	<!-- Default box -->

	<div class="box">
		<div class="box-header with-border">
			<a href="index.jsp?add=shop_items_add"><button class="btn btn-success">
					<i class="fa fa-plus"></i><span>&ensp; Add Shop Item</span>
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

			<sql:query dataSource="${db}" var="rs"> SELECT * from products  ; </sql:query>

			<table id="example2" class="table table-bordered table-hover ">
				<caption  style="color: rgba(18, 134, 181, 1)">
					<h4 class="box-title text-center">Manage Shop Item</h4>
				</caption>
				<thead>
					<tr>
						<th>Item Title</th>
						
						<th>Our Price</th>
						<th>Was Price</th>
						<th>Description</th>
						<th>Picture</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach var="row" items="${rs.rows}">
						<tr>
							<td>${row.id}</td>
							<td>${row.title}</td>
							<td>${row.item_price}</td>
							<td>${row.was_price}</td>
							<td>${row.item_description}</td>
							<td>${row.small_pic}</td>

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
		<div class="box-footer">Footer</div>
		<!-- /.box-footer-->
	</div>
	<!-- /.box -->

</section>
<!-- /.content -->

