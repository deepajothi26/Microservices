<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*,java.util.*"%>

<%
String Id=request.getParameter("Id");
String TransactionRefernceNumber="";
String PaymentStatus="Successfully Amount Transfered";
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root123!@#");
Statement st=conn.createStatement();

int i=st.executeUpdate(" update set localpaymentrequest TransactionRefernceNumber='" + TransactionRefernceNumber + "',PaymentStatus='" + PaymentStatus + "' where Id=" + Id);
out.println("Successfully Amount Transfered!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>