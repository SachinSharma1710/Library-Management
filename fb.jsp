<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String name =request.getParameter("name");
String book =request.getParameter("book");
String sn =request.getParameter ("sn"); 

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "123456");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into lm3(name,book,sn)values('"+name+"','"+book+"','"+sn+"')");
out.println();
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
 %>
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="style1.css">

    <title>Library</title>
</head>
<body>
       <div class="container">
    <form name="myform">

        <div class="row">

            <div class="col">

                <center><h3 class="title">Library</h3></center>

                <div class="inputBox">

<a style="text-decoration: none;" href="index.jsp"><button class="submit-btn" type="button" id="signupBtn" onclick="myalert()">
    Back to Home
</button></a>
</div></div></div></body></html>

