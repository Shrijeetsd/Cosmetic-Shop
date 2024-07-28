<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<div class="container p-5 my-5">
<div class=row>
<div class="col-sm-2">


</div>
<form method="post" class="col-sm-8 border p-5" >
<h1>Order Form</h1>
<div class="form-group">
<label>product Id</label>
<input type="text" name="id" id="id" placeholder="Enter product id" class="form-control">
</div>
<div class="form-group">
<label>product Name</label>
<input type="text" name="nm" id="nm" placeholder="Enter your product name" class="form-control">
</div>
<div class="form-group">
<label>product price</label>
<input type="text" name="pr" id="pr" placeholder="Enter price" class="form-control">
</div>
<img src="">
<div class="form-group">
<label>product Category</label>
<input type="text" name="ct" id="ct" placeholder="Enter product category" class="form-control">
</div>
<br>
<input type="submit" name="btnsub" class="btn btn-primary">
</form>
</div>
</div>
<%@include file="../connection.jsp" %>
<%
if(request.getParameter("btnsub")!=null)
{
	String n,a,c,g,e,p;
	n=request.getParameter("nm");
	a=request.getParameter("ad");
	c=request.getParameter("ct");
	g=request.getParameter("ml");
	e=request.getParameter("em");
	p=request.getParameter("pass");
	try
	{
			PreparedStatement pst=cn.prepareStatement("insert into register values(?,?,?,?,?,?)");
		pst.setString(1, n);
		pst.setString(2,a);
		pst.setString(3, c);
		pst.setString(4, g);
		pst.setString(5, e);
		pst.setString(6, p);
		int count=pst.executeUpdate();
		if(count>0)
			out.println("<script>alert('registration successful')</script>");
		else
			out.println("<script>alert('Problem Occured')</script>");
	}
	catch(Exception ex)
	{
		ex.printStackTrace();
	}
}
%>
</body>
</html>