<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<div class="container p-5 my-5">
<div class=row>
<div class="col-sm-2">


</div>
<form method="post" class="col-sm-8 border p-5" >
<h1>Registration Form</h1>
<div class="form-group">
<label>Name</label>
<input type="text" name="nm" id="nm" placeholder="Enter your  name here" class="form-control">
</div>
<div class="form-group">
<label>Address</label>
<textarea name="ad" id="ad" placeholder="Enter address here" class="form-control"></textarea>
</div>
<div class="form-group">
<label>City</label>
<select name="ct" class="form-control">
<option> --select--</option>
<option>Satara</option>
<option>Pune</option>
<option>Mumbai</option>
<option>Nashik</option>
</select>
</div>
<div class="form-group">
<label>Gender</label>
<input type="radio" name="ml" value=male  >male 
<input type="radio" name="ml" value=Female  >Female
</div>


<div class="form-group">
<label>Email id</label>
<input type="email" name="em" id="em" placeholder="Enter Email id here" class="form-control">
</div>
<div class="form-group">
<label>Password</label>
<input type="password" name="pass" id="pass" placeholder="Enter a password" class="form-control">
</div>
<br>
<input type="submit" name="btnsub" class="btn btn-primary">
</form>
</div>
</div>
<%@include file="connection.jsp" %>
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