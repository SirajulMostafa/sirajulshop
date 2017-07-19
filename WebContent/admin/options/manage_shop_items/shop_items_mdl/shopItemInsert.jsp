<%@ include file="/common/jstltag.jsp"%>
<%@ include file="/core/conndb.jsp"%>
<c:if test="${ empty param.item_price or empty param.item_title }">
	<c:redirect url="/admin/index.jsp?add=shop_items_add">
		<!-- http://localhost:8080/sirajulshop/admin/index.jsp?add=shop_items_add -->
		<c:param name="errMsg"
			value="Please Enter All The Field with (*) sign" />
	</c:redirect>
</c:if>
<sql:update dataSource="${db}" var="result">
            INSERT INTO products(title,item_price,was_price,item_description,status) VALUES (?,?,?,?,?);
             <sql:param value="${param.item_title}" />
	<sql:param value="${param.item_price}" />
	<sql:param value="${param.was_price}" />
	<sql:param value="${param.item_description}" />
	<sql:param value="${param.status}" />

</sql:update>
<c:if test="${result>=1}">
	<c:redirect url="/admin/index.jsp">
		<c:param name="susMsg" value="successfully" />
	</c:redirect>

</c:if>
