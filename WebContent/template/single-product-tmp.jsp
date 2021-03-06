<section class="lightSection clearfix pageHeader">
        <div class="container">
          <div class="row">
            <div class="col-xs-6">
              <div class="page-title">
                <h2>Single Product</h2>
              </div>
            </div>
            <div class="col-xs-6">
              <ol class="breadcrumb pull-right">
                <li>
                  <a href="index-2.html">Home</a>
                </li>
                <li class="active">Single Product</li>
              </ol>
            </div>
          </div>
        </div>
      </section>
      <section class="mainContent clearfix">
        <div class="container">
        <% String id= request.getParameter("id") ;%>
        <sql:query dataSource="${db}" var="rs"> SELECT * FROM products WHERE id=3;  </sql:query>
		 <c:forEach var="single_product" items="${rs.rows}">
          <div class="row singleProduct">
            <div class="col-xs-12">
              <div class="media">
                <div class="media-left productSlider">
                  <div id="carousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                      <div class="item" data-thumb="0">
                        <img src="Theme/img/products/signle-product/<c:out value="${single_product.small_picture}" />">
                      </div>
                      <div class="item" data-thumb="1">
                        <img src="Theme/img/products/signle-product/product-slide-big-02.jpg">
                      </div>
                      <div class="item active" data-thumb="2">
                        <img src="Theme/img/products/signle-product/product-slide-big-03.jpg">
                      </div>
                      <div class="item" data-thumb="3">
                        <img src="Theme/img/products/signle-product/product-slide-big-04.jpg">
                      </div>
                    </div>
                  </div>
                  <div class="clearfix">
                    <div id="thumbcarousel" class="carousel slide" data-interval="false">
                      <div class="carousel-inner">
                          <div data-target="#carousel" data-slide-to="0" class="thumb"><img src="Theme/img/products/signle-product/<c:out value="${single_product.small_picture}" />"></div>
                          <div data-target="#carousel" data-slide-to="1" class="thumb"><img src="Theme/img/products/signle-product/product-slide-small-02.jpg"></div>
                          <div data-target="#carousel" data-slide-to="2" class="thumb"><img src="Theme/img/products/signle-product/product-slide-small-03.jpg"></div>
                          <div data-target="#carousel" data-slide-to="3" class="thumb"><img src="Theme/img/products/signle-product/product-slide-small-04.jpg"></div>
                      </div>
                      <a class="left carousel-control" href="#thumbcarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                      </a>
                      <a class="right carousel-control" href="#thumbcarousel" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                      </a>
                    </div>
                  </div>
                </div>
                <div class="media-body">
                  <ul class="list-inline">
                    <li><a href="index-2.html"><i class="fa fa-reply" aria-hidden="true"></i>Continue Shopping</a></li>
                    <li><a href="#"><i class="fa fa-plus" aria-hidden="true"></i>Share This</a></li>
                  </ul>
                  <h2>Pellentesque non risus quis tellus</h2>
                  <h3>$149</h3>
                  <p>Mauris lobortis augue ex, ut faucibus nisi mollis ac. Sed volutpat scelerisque ex ut ullamcorper. Cras at velit quis sapien dapibus laoreet a id odio. Sed sit amet accumsan ante, eu congue metus. Aenean eros tortor, cursus quis feugiat sed, vestibulum vel purus. Etiam aliquam turpis quis blandit finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porttitor placerat lectus, facilisis ornare leo tincidunt vel. Duis rutrum felis felis, eget malesuada massa tincidunt a.</p>
                  <span class="quick-drop" >
                    <select name="guiest_id3" id="guiest_id3" class="select-drop" sb="39964882" style="display: none;">
                      <option value="0">Size</option>
                      <option value="1">Small</option>
                      <option value="2">Medium</option>
                      <option value="3">Big</option>
                    </select>
                  </span>
                  <span class="quick-drop resizeWidth" >
                    <select name="guiest_id4" id="guiest_id4" class="select-drop" sb="52680501" style="display: none;">
                      <option value="0">Qty</option>
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                    </select>
                    
                  </span>
                  <div class="btn-area">
                    <a href="cart-page.html" class="btn btn-primary btn-block">Add to cart <i class="fa fa-angle-right" aria-hidden="true"></i></a>
                  </div>
                  <div class="tabArea">
                    <ul class="nav nav-tabs">
                      <li class="active"><a data-toggle="tab" href="#details">details</a></li>
                      <li><a data-toggle="tab" href="#about-art">about art</a></li>
                      <li><a data-toggle="tab" href="#sizing">sizing</a></li>
                      <li><a data-toggle="tab" href="#shipping">shipping</a></li>
                    </ul>
                    <div class="tab-content">
                      <div id="details" class="tab-pane fade in active">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        <ul class="list-unstyled">
                          <li>Black, Crew Neck</li>
                          <li>75% Cotton, 25% Rayon</li>
                          <li>Waterbased Ink</li>
                          <li>Wash Cold, dry low</li>
                        </ul>
                      </div>
                      <div id="about-art" class="tab-pane fade">
                        <p>Nulla facilisi. Mauris efficitur, massa et iaculis accumsan, mauris velit ultrices purus, quis condimentum nibh dolor ut tortor. Donec egestas tortor quis mattis gravida. Ut efficitur elit vitae dignissim volutpat. </p>
                      </div>
                      <div id="sizing" class="tab-pane fade">
                        <p>Praesent dui felis, gravida a auctor at, facilisis commodo ipsum. Cras eu faucibus justo. Nullam varius cursus nisi, sed elementum sem sagittis at. Nulla tellus massa, vestibulum a commodo facilisis, pulvinar convallis nunc.</p>
                      </div>
                      <div id="shipping" class="tab-pane fade">
                        <p>Mauris lobortis augue ex, ut faucibus nisi mollis ac. Sed volutpat scelerisque ex ut ullamcorper. Cras at velit quis sapien dapibus laoreet a id odio. Sed sit amet accumsan ante, eu congue metus. Aenean eros tortor, cursus quis feugiat sed, vestibulum vel purus.</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          </c:forEach>
          <div class="row productsContent">
            <div class="col-xs-12">
              <div class="page-header">
                <h4>Related Products</h4>
              </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="productBox">
                <div class="productImage clearfix">
                  <img src="Theme/img/products/products-01.jpg" alt="products-img">
                  <div class="productMasking">
                    <ul class="list-inline btn-group" role="group">
                      <li><a data-toggle="modal" href=".html" class="btn btn-default"><i class="fa fa-heart"></i></a></li>
                      <li><a href="cart-page.html" class="btn btn-default"><i class="fa fa-shopping-cart"></i></a></li>
                      <li><a class="btn btn-default" data-toggle="modal" href="-2.html"><i class="fa fa-eye"></i></a></li>
                    </ul>
                  </div>
                </div>
                <div class="productCaption clearfix">
                 <h5>Nike Sportswear</h5>
                 <h3>$199</h3>
                </div>
              </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="productBox">
                <div class="productImage clearfix">
                  <img src="Theme/img/products/products-02.jpg" alt="products-img">
                  <div class="productMasking">
                    <ul class="list-inline btn-group" role="group">
                      <li><a data-toggle="modal" href=".html" class="btn btn-default"><i class="fa fa-heart"></i></a></li>
                      <li><a href="cart-page.html" class="btn btn-default"><i class="fa fa-shopping-cart"></i></a></li>
                      <li><a class="btn btn-default" data-toggle="modal" href="-2.html"><i class="fa fa-eye"></i></a></li>
                    </ul>
                  </div>
                </div>
                <div class="productCaption clearfix">
                 <h5>Dip Dyed Sweater</h5>
                 <h3>$249</h3>
                </div>
              </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="productBox">
                <div class="productImage clearfix">
                  <img src="Theme/img/products/products-03.jpg" alt="products-img">
                  <div class="productMasking">
                    <ul class="list-inline btn-group" role="group">
                      <li><a data-toggle="modal" href=".html" class="btn btn-default"><i class="fa fa-heart"></i></a></li>
                      <li><a href="cart-page.html" class="btn btn-default"><i class="fa fa-shopping-cart"></i></a></li>
                      <li><a class="btn btn-default" data-toggle="modal" href="-2.html"><i class="fa fa-eye"></i></a></li>
                    </ul>
                  </div>
                </div>
                <div class="productCaption clearfix">
                 <h5>Scarf Ring Corner</h5>
                 <h3>$179</h3>
                </div>
              </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="productBox">
                <div class="productImage clearfix">
                  <img src="Theme/img/products/products-04.jpg" alt="products-img">
                  <div class="productMasking">
                    <ul class="list-inline btn-group" role="group">
                      <li><a data-toggle="modal" href=".html" class="btn btn-default"><i class="fa fa-heart"></i></a></li>
                      <li><a href="cart-page.html" class="btn btn-default"><i class="fa fa-shopping-cart"></i></a></li>
                      <li><a class="btn btn-default" data-toggle="modal" href="-2.html"><i class="fa fa-eye"></i></a></li>
                    </ul>
                  </div>
                </div>
                <div class="productCaption clearfix">
                 <h5>Sun Buddies</h5>
                 <h3>$149</h3>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>