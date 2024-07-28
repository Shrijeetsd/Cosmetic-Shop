<%@page import="java.sql.*"%>
<%
Connection cn=null;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cosmdb","root","Root@123");
}
catch(Exception ex)
{
	ex.printStackTrace();
	
}
%>