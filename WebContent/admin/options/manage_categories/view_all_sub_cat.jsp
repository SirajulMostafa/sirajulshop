<sql:query dataSource="${db}" var="rs"> SELECT * from shop_categories WHERE category_parent=${param.id } ; </sql:query>

<table id="example2" class="table table-bordered table-hover ">
	<caption><%="Hello all sub cat"%></caption>
	<thead>
		<tr>
			<th>Sub ID</th>
			<th>Sub Categories</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="row" items="${rs.rows}">
			<tr>
				<td>${row.id}</td>
				<td>${row.cat_title}</td>
			</tr>
		</c:forEach>		
	</tbody>
	<tfoot>
		<tr>
		</tr>
	</tfoot>
</table>