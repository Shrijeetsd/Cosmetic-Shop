<%@include file="header.jsp" %>
<%@include file="connection.jsp" %>
<h1 class="text-center">Feedback Form</h1>

<table class="table table-bordered" cellpadding="10px">
<thead>
<tr>
<th>Email Id</th>
<th>Feedback</th>
</tr>
</thead>
<tbody>


<%
try
{
	String e,f;
	PreparedStatement pst=cn.prepareStatement("select * from feedback");
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		e=rs.getString("email");
		
		%>
		<tr>
		<td><%=e %> </td>
		<td><%= rs.getString("feed") %> </td>
		</tr>
		
		<%
		
	}
		
}
catch(Exception ex) 
{
	ex.printStackTrace();
}

%>
</tbody>
</table>


</div>
</body>
</html>