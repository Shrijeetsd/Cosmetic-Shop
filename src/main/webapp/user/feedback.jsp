<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<div class="container p-5 my-5">
<div class=row>
<div class="col-sm-2">


</div>
<form method="post" class="col-sm-8 border p-5" >
<h1>Feedback Form</h1>
<div class="form-group">
<label>Email id</label>
<input type="email" name="em" id="em" placeholder="Enter Email id here" class="form-control">
</div>
<div class="form-group">
<label>Feedback</label>
<textarea name="fb" id="fb" placeholder="Enter feedback here" class="form-control"></textarea>
</div>
<input type="submit" name="btnsub" class="btn btn-primary">
</form>
</div>
</div>
<%@include file="../connection.jsp" %>
<%
if(request.getParameter("btnsub")!=null)
{
	String e,f;
	e=request.getParameter("em");
	f=request.getParameter("fb");
	try
	{
			PreparedStatement pst=cn.prepareStatement("insert into feedback values(?,?)");
		pst.setString(1,e);
		pst.setString(2,f);
		int count=pst.executeUpdate();
		if(count>0)
			out.println("<script>alert('Feedback submitted successful')</script>");
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