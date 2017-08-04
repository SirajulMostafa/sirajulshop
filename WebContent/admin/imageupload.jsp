<section class="content">
<form action="/sirajulshop/Fileupload"  method="post" enctype="multipart/form-data" >

fileupload: <input name="file" type="file"  id="myfile" >
<br/><br/>

<input type="hidden" name="imgID" value="<%=request.getParameter("imgID") %>" />
<input type="submit" name="submit" value="Submit" />

</form>
</section>