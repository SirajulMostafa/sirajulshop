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
				<a href="#"><button type="button" class="btn btn-warning">UploadImage</button></a> 
						<a href="#"><button type="button"
						class="btn btn-success">Assign Category</button></a> <a href="#"><button
						type="button" class="btn btn-info">Add Color</button></a> <a href="#"><button
						type="button" class="btn btn-danger">Add size</button></a>
						<a href="#"><button type="button" class="btn btn-warning">Review</button></a>
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
			<form action="options/manage_shop_items/shop_items_mdl/shopItemInsert.jsp"
				method="post">
				<!--form group -->
				<div class="form-group col-md-6">
					<label for="item_title">Item Title<sup><span>*</span></sup></label>
					<input type="text" class="form-control" id="item_title"
						placeholder="Enter Item Name" name="item_title" value="">
				</div>
				<!-- /form group -->
				<div class="form-group col-md-6">
					<label for="item_price">Our Price<sup><span>*</span></sup></label>
					<input type="text" class="form-control" id="item_price"
						placeholder="Enter price  of your product" name="item_price"
						value="">
				</div>
				<div class="form-group col-md-6">
					<label for="was_price">Was Price(optional)</label> <input
						type="text" class="form-control" id="was_price"
						placeholder="Enter was Price  of your product" name="was_price"
						value="">
				</div>


				<div class="form-group col-md-6">
					<label for="status">Status</label> <select
						id="status" name="status"
						class="form-control "
						title="Enter a status otherwise default will be active">
						<option value="0" selected="selected">Inactive</option>
						<option value="1">Active</option>

					</select>
				</div>

				<div class="form-group col-md-12">
					<label>Description</label>
					<textarea id="editor1" class="form-control" rows="3"
						placeholder="Enter ..." name="item_description"></textarea>
				</div>

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







