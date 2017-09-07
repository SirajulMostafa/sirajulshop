
<c:choose>
  <c:when test="${  not empty param.shortByBrandID }">
     <%@ include file="productByBrandId.jsp"%>
  </c:when>
  <c:when test="${not empty param.shortByCategoryID}">
   <%@ include file="productBycategoryId.jsp"%>
  </c:when>
  <c:otherwise>
 ...
  </c:otherwise>
</c:choose>