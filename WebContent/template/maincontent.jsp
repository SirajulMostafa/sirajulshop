
      <!-- MAIN CONTENT SECTION -->
      <section class="mainContent clearfix">
        <div class="container">
        
         <!-- Featured Collection  -->  
          <div class="row featuredCollection margin-bottom">
            <div class="col-xs-12">
              <div class="page-header">
                <h4>Featured Collection</h4>
              </div>
            </div>
            <div class="col-sm-4 col-xs-12">
              <div class="thumbnail" onclick="location.href='single-product.jsp';">
                <div class="imageWrapper">
                  <img src="Theme/img/home/featured-collection/featured-collection-01.jpg" alt="feature-collection-image">
                  <div class="masking"><a href="product-grid-left-sidebar.jsp" class="btn viewBtn">View Prodocts</a></div>
                </div>
                <div class="caption">
                  <h4>Shoes</h4>
                </div>
              </div>
            </div>
            <div class="col-sm-4 col-xs-12">
              <div class="thumbnail" onclick="location.href='single-product.jsp';">
                <div class="imageWrapper">
                  <img src="Theme/img/home/featured-collection/featured-collection-02.jpg" alt="feature-collection-image">
                  <div class="masking"><a href="product-grid-left-sidebar.jsp" class="btn viewBtn">View Prodocts</a></div>
                </div>
                <div class="caption">
                  <h4>Bags</h4>
                </div>
              </div>
            </div>
            <div class="col-sm-4 col-xs-12">
              <div class="thumbnail" onclick="location.href='single-product.jsp';">
                <div class="imageWrapper">
                  <img src="Theme/img/home/featured-collection/featured-collection-03.jpg" alt="feature-collection-image">
                  <div class="masking"><a href="product-grid-left-sidebar.jsp" class="btn viewBtn">View Prodocts</a></div>
                </div>
                <div class="caption">
                  <h4>Glasses</h4>
                </div>
              </div>
            </div>
           
          
          </div>
       <!-- ./Featured Collection  -->     
       
              <!-- Featured Brands  -->  
          <div class="row featuredCollection margin-bottom">
            <div class="col-xs-12">
              <div class="page-header">
                <h4>Featured Brand</h4>
              </div>
            </div>
            
            <sql:query dataSource="${db}" var="rs"> SELECT * from brands ;  </sql:query>
					<c:forEach var="brands" items="${rs.rows}">
            <div class="col-sm-3 col-xs-12">
              <div class="thumbnail" onclick="location.href='single-product.jsp';">
                <div class="imageWrapper" style="height:200px;">
                  <img src="Theme/img/brand/<c:out value="${brands.brand_logo}" />">
                  <div class="masking">
                  <a href="product-grid-left-sidebar.jsp?shortByBrandID=<c:out value="${brands.id}" />" class="btn viewBtn">View Products</a></div>
                </div>
                <div class="caption">
                  <h5 class="text-center"><c:out value="${brands.brand}" /></h5>
                </div>
              </div>
            </div>
            </c:forEach>
        
          </div>
       <!-- ./Featured Brands  -->   
          
     <!--Featured Products  -->    
          <div class="row featuredProducts margin-bottom">
            <div class="col-xs-12">
              <div class="page-header">
                <h4>Featured Products</h4>
              </div>
            </div>
            <div class="col-xs-12">
              <div class="owl-carousel featuredProductsSlider">
              
                 <sql:query dataSource="${db}" var="rs"> SELECT * FROM ( SELECT * FROM products  ORDER BY RAND()    LIMIT 30 )T1  ORDER BY id;  </sql:query>
					<c:forEach var="products" items="${rs.rows}">
                <div class="slide">
                  <div class="productImage clearfix">
                    <img src="Theme/img/home/featured-product/<c:out value="${products.small_picture}" />" alt="featured-product-img">
                    <div class="productMasking">
                      <ul class="list-inline btn-group" role="group">
                        <li><a data-toggle="modal" href=".jsp" class="btn btn-default"><i class="fa fa-heart"></i></a></li>
                        <li><a href="cart-page.jsp" class="btn btn-default"><i class="fa fa-shopping-cart"></i></a></li>
                        <li><a data-toggle="modal" href="-2.jsp" class="btn btn-default"><i class="fa fa-eye"></i></a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="productCaption clearfix">
                    <a href="single-product.jsp?id=<c:out value="${products.id}"/>">
                      <h5><c:out value="${products.title}" /></h5>
                    </a>
                    <h3>$<c:out value="${products.item_price}" /></h3>
                  </div>
                </div>
                </c:forEach>          
              </div>
            </div>
          </div>
          <!-- ./Featured Products  --> 
          
          <!-- Latest Articles -->       
          <div class="row latestArticles">
            <div class="col-xs-12">
              <div class="page-header">
                <h4>Latest Articles</h4>
              </div>
            </div>
            <sql:query dataSource="${db}" var="latest"> SELECT * from products LIMIT 5 ;  </sql:query>
					<c:forEach var="latestRow" items="${latest.rows}">						
            <div class="col-sm-3 col-xs-12">
              <div class="thumbnail">
                <h5><a href="blog-single-right-sidebar.jsp"><c:out value="${latestRow.title}" /></a></h5>
                <span class="meta">July 16, 2016 by <a href="#">Abdus</a></span>
                <a href="blog-single-right-sidebar.jsp"><img src="Theme/img/home/articles/articles-01.jpg" alt="article-image"></a>
                <div class="caption">
                  <p><c:out value="${latestRow.item_description}" /></p>
                </div>
              </div>
            </div>
            
            </c:forEach>
            <div class="col-sm-3 col-xs-12">
              <div class="thumbnail">
                <h5><a href="blog-single-right-sidebar.jsp">Pellentesque risus quis tellus</a></h5>
                <span class="meta">July 16, 2016 by <a href="#">Abdus</a></span>
                <a href="blog-single-right-sidebar.jsp"><img src="Theme/img/home/articles/articles-02.jpg" alt="article-image"></a>
                <div class="caption">
                  <p>Praesent dui felis, gravida a auctor at, facilisis commodo ipsum. Cras eu faucibus justo. Nullam varius cursus nisi.</p>
                </div>
              </div>
            </div>
            <div class="col-sm-3 col-xs-12">
              <div class="thumbnail">
                <h5><a href="blog-single-right-sidebar.jsp">Mauris lobortis augue ex</a></h5>
                <span class="meta">July 16, 2016 by <a href="#">Abdus</a></span>
                <a href="blog-single-right-sidebar.jsp"><img src="Theme/img/home/articles/articles-03.jpg" alt="article-image"></a>
                <div class="caption">
                  <p>Etiam aliquam turpis quis blandit finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                </div>
              </div>
            </div>
            <div class="col-sm-3 col-xs-12">
              <div class="thumbnail">
                <h5><a href="blog-single-right-sidebar.jsp">Suspendisse vestibulum dignissim</a></h5>
                <span class="meta">July 16, 2016 by <a href="#">Abdus</a></span>
                <a href="blog-single-right-sidebar.jsp"><img src="Theme/img/home/articles/articles-04.jpg" alt="article-image"></a>
                <div class="caption">
                  <p>Suspendisse tristique interdum est, at hendrerit nunc laoreet et. Nulla vel arcu ac turpis pulvinar tincidunt eu eu nisi.</p>
                </div>
              </div>
            </div>
          </div>
          <!-- ./Latest Articles -->       
        </div><!-- ./container -->      
      </section>
       <!-- ./MAIN CONTENT SECTION -->