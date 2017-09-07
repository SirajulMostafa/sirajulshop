<section class="mainContent clearfix productsContent">
        <div class="container">
          <div class="row">
            <div class="col-md-3 col-sm-4 col-xs-12 sideBar">
              <div class="panel panel-default">
                <div class="panel-heading">Product categories</div>
                <div class="panel-body">
                  <div class="collapse navbar-collapse navbar-ex1-collapse navbar-side-collapse">
                    <ul class="nav navbar-nav side-nav">
                    <sql:query dataSource="${db}" var="rs"> SELECT * from shop_categories WHERE category_parent=0 ;  </sql:query>
					<c:forEach var="table" items="${rs.rows}">
					<c:set var="pk" value="${table.id}" />
					<sql:query dataSource="${db}" var="rs2"> SELECT * from shop_categories WHERE category_parent=${pk} ;  </sql:query>
					
                      <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#<c:out value="${table.cat_title}" />"><c:out value="${table.cat_title}" /> <span>(6)</span><i class="fa fa-plus"></i></a>
                        <ul id="<c:out value="${table.cat_title}" />" class="collapse collapseItem">
                        <c:forEach var="table2" items="${rs2.rows}">
                          <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i><c:out value="${table2.cat_title}" /> <span>(6)</span></a></li>
                          
                       </c:forEach>	
							</ul></li>
							</c:forEach>
                    </ul>
                  </div>
                </div>
              </div>
                    <div class="panel panel-default filterNormal">
                <div class="panel-heading">filter by brand</div>
                <div class="panel-body">

						<ul class="list-unstyled">
							<sql:query dataSource="${db}" var="rs"> SELECT * from brands;  </sql:query>
							<c:forEach var="brands" items="${rs.rows}">
								<div class="col-md-8">
									<li><a href="?shortByBrandID=<c:out value="${brands.id}" />"><c:out
												value="${brands.brand}" />
								</div>
								<div class="col-md-4">
									<img style="width: 35px; height:35px;" alt="defualt image"
										src="Theme/img/brand/<c:out value="${brands.brand_logo}"/>">
								</div>
								</a>
								</li>
							</c:forEach>

						</ul>
					</div>
              </div>
              <div class="panel panel-default priceRange">
                <div class="panel-heading">Filter by Price</div>
                <div class="panel-body clearfix">
                  <div class="price-slider-inner">
                    <span class="amount-wrapper">
                      Price:
                      <input type="text" id="price-amount-1" readonly="">
                      <strong>-</strong>
                      <input type="text" id="price-amount-2" readonly="">
                    </span>
                    <div id="price-range" class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"><div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 0%; width: 100%;"></div><span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0" style="left: 0%;"></span><span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0" style="left: 100%;"></span></div>
                  </div>
                  <input class="btn btn-default" type="submit" value="Filter">
                  <!-- <span class="priceLabel">Price: <strong>$12 - $30</strong></span> -->
                </div>
              </div>
              <div class="panel panel-default filterNormal">
                <div class="panel-heading">filter by Color</div>
                <div class="panel-body">
                  <ul class="list-unstyled">
                    <li><a href="#">Black<span>(15)</span></a></li>
                    <li><a href="#">White<span>(10)</span></a></li>
                    <li><a href="#">Red<span>(7)</span></a></li>
                    <li><a href="#">Blue<span>(12)</span></a></li>
                    <li><a href="#">Orange<span>(12)</span></a></li>
                  </ul>
                </div>
              </div>
              <div class="panel panel-default filterNormal">
                <div class="panel-heading">filter by Size</div>
                <div class="panel-body">
                  <ul class="list-unstyled clearfix">
                    <li><a href="#">Small<span>(15)</span></a></li>
                    <li><a href="#">Medium<span>(10)</span></a></li>
                    <li><a href="#">Large<span>(7)</span></a></li>
                    <li><a href="#">Extra Large<span>(12)</span></a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-md-9 col-sm-8 col-xs-12">
              <div class="row filterArea">
                <div class="col-xs-6">
                  <select name="guiest_id1" id="guiest_id1" class="select-drop" sb="86455771" style="display: none;">
                    <option value="0">Default sorting</option>
                    <option value="1">Sort by popularity</option>
                    <option value="2">Sort by rating</option>
                    <option value="3">Sort by newness</option>
                    <option value="3">Sort by price</option>
                  </select>
                </div>
                <div class="col-xs-6">
                  <div class="btn-group pull-right" role="group">
                    <button type="button" class="btn btn-default active" onclick="window.location.href='product-grid-left-sidebar.html'"><i class="fa fa-th" aria-hidden="true"></i><span>Grid</span></button>
                    <button type="button" class="btn btn-default" onclick="window.location.href='product-list-left-sidebar.html'"><i class="fa fa-th-list" aria-hidden="true"></i><span>List</span></button>
                  </div>
                </div>
              </div>
           
<!-- filtering main part -->
<%@ include file="filtering/filter.jsp"%>
<!-- ./filtering main part -->

            </div>
          </div>
        </div>
      </section>