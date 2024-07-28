<%@include file="header.jsp" %>
<%@include file="connection.jsp" %>
<h1 class="text-center">Products</h1>
<div class="row">
<%
try
{
	String i,n,p,im,cat;
	PreparedStatement pst=cn.prepareStatement("select * from product");
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		
	i=	rs.getString("id");
	n=	rs.getString("proname");
		p=rs.getString("price");
		im=rs.getString("image");
		cat=rs.getString("categary");
		
		%>
		<div class="col-sm-3">
		<div class="caption">
		<img src="http://localhost:8081/CosmeticShop/images/<%=im %>"><br>
		Product Name: <%=n %><br>
		Price:<%=p %><br>
		Category: <%=cat %>
		</div>
		</div>
		<%
		
	}
		
}
catch(Exception ex)
{
	ex.printStackTrace();
}

%>


</div>
</body>
</html>