<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<div class="container p-5 my-5">
<div class=row>
<div class="col-sm-2">


</div>
<form method="post" class="col-sm-8 border p-5" >
<h1>Login Here</h1>
<div class="form-group">
<label>Email id</label>
<input type="email" name="em" id="em" placeholder="Enter Email id here" class="form-control">
</div>
<div class="form-group">
<label>Password</label>
<input type="password" name="pass" id="pass" placeholder="Enter a password" class="form-control">
</div>
<input type="submit" name="btnsub">
</form>
</div>
</div>
<%@include file="connection.jsp" %>
<%
if(request.getParameter("btnsub")!=null)
{
	String e,p;
	e=request.getParameter("em");
	p=request.getParameter("pass");
	try
	{
			PreparedStatement pst=cn.prepareStatement("select * from register where email=? and password=?");
		pst.setString(1, e);
		pst.setString(2, p);
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		{
			String n=rs.getString("name");
			session.setAttribute("username",n);
			session.setAttribute("email", e);
			response.sendRedirect("user/index.jsp");
		}
			
		else
			out.println("<script>alert('Incorrect emailid or password')</script>");
	}
	catch(Exception ex)
	{
		ex.printStackTrace();
	}
}
%>

</body>
</html>