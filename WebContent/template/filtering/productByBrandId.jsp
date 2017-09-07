

<div>hello brand</div>
<div class="row">
	<c:set var="br_id" value="${param.shortByBrandID}" />
	<sql:query dataSource="${db}" var="rs"> SELECT * FROM prod_brand_cat WHERE  brand_id=? ; 
		<sql:param value="${br_id}" />
	</sql:query>
	<c:forEach var="find_prod_id" items="${rs.rows}">
		<c:set var="prod_id" value="${find_prod_id.id}" />
		<sql:query dataSource="${db}" var="rs"> SELECT * from products WHERE prod_brand_cat_id=? ;
 			<sql:param value="${prod_id}" />
		</sql:query>

		<c:forEach var="find_prod_by_brand" items="${rs.rows}">

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
								<c:out value="${find_prod_by_brand.id}" />
								--
								<c:out value="${find_prod_by_brand.title}" />
							</h5>
						</a>
						<h3>
							TK.
							<c:out value="${find_prod_by_brand.item_price}" />
						</h3>
					</div>
				</div>
			</div>
		</c:forEach>
	</c:forEach>
</div>