

<div>hello category</div>
<div class="row">
	<c:set var="cat_id" value="${param.shortByCategoryID}" />
	<sql:query dataSource="${db}" var="rs"> SELECT * FROM prod_brand_cat WHERE  shop_category_id=? ; 
		<sql:param value="${cat_id}" />
	</sql:query>
	<c:forEach var="find_prod_id" items="${rs.rows}">
		<c:set var="prod_id" value="${find_prod_id.id}" />
		<sql:query dataSource="${db}" var="rs"> SELECT * from products WHERE prod_brand_cat_id=? ;
 			<sql:param value="${prod_id}" />
		</sql:query>

		<c:forEach var="find_prod_by_category" items="${rs.rows}">

			<div class="col-sm-4 col-xs-12">
				<div class="productBox">
					<div class="productImage clearfix">
						<img src="Theme/img/products/products-02.jpg" alt="products-img">
						<div class="productMasking">
							<ul class="list-inline btn-group" role="group">
								<li><a data-toggle="modal" href=".html"
									class="btn btn-default"><i class="fa fa-heart"></i></a></li>
								<li><a href="cart-page.html" class="btn btn-default"><i
										class="fa fa-shopping-cart"></i></a></li>
								<li><a class="btn btn-default" data-toggle="modal"
									href="-2.html"><i class="fa fa-eye"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="productCaption clearfix">
						<a href="single-product.html">
							<h5>
								<c:out value="${find_prod_by_category.id}" />
								--
								<c:out value="${find_prod_by_category.title}" />
							</h5>
						</a>
						<h3>
							TK.
							<c:out value="${find_prod_by_category.item_price}" />
						</h3>
					</div>
				</div>
			</div>
		</c:forEach>
	</c:forEach>
</div>