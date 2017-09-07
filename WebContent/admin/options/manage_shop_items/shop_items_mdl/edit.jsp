<%@ include file="/common/jstltag.jsp"%>
<%@ include file="/core/conndb.jsp"%>
     <sql:update dataSource="${db}" var="count">
            UPDATE products SET title =?, item_price=? ,was_price=? ,item_description=?,status=?
            WHERE id='${param.product_id}' ;
            <sql:param value="${param.item_title}" />
            <sql:param value="${param.item_price}" />
            <sql:param value="${param.was_price}" />
            <sql:param value="${param.item_description}" />
            <sql:param value="${param.status}" />
        </sql:update>
       
        <c:if test="${count>=1}">
            <font size="5" color='green'> Congratulations ! product Data update  Data updated
            successfully.</font>
              <a href="index.jsp">Go Home</a>  
              
              <!--  for relationship prod_brand_cat table update  -->    
            <sql:update dataSource="${db}" var="count2">
            UPDATE prod_brand_cat SET product_id = ?,shop_category_id=?, brand_id=? 
            WHERE id='1';
            <sql:param value="${param.product_id}" />
            <sql:param value="${param.shop_category_id}" />
            <sql:param value="${param.brand_id}" />
        </sql:update>
        <c:if test="${count2>=1}">
            <font size="5" color='green'> Congratulations ! Brand and Category  Data updated
            successfully.</font>
              <a href="index.jsp">Go Home</a>          
        </c:if>
        
                  
        </c:if>
       
       