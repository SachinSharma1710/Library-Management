<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String name =request.getParameter("name");
String branch =request.getParameter("branch");
String pass =request.getParameter ("pass"); 

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "123456");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into lm1(name,branch,pass)values('"+name+"','"+branch+"','"+pass+"')");
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
    <script src="https://kit.fontawesome.com/85855b07db.js" crossorigin="anonymous"></script>
    <title>Home</title>
    
</head>
<body bgcolor="#2ecc71">
    
    <div class="header">
        <input type="checkbox" id="openside" class="cb">
        <label for="openside" class="sidebaricontoggle">
           <div class="span top"></div>
           <div class="span middle"></div>
           <div class="span bottom"></div>
          
           
        </label>
        <div id="sidebar">
            <ul class="menu">
                <li><a href="#" class="active">home</a></li>
                <li><a href="fb.html">Feedback</a></li>
                
            </ul>
            <button class="btn1"><a href="login.html" style="text-decoration: none;">Log Out</a></button>
        </div>
        <div class="w3">
            <div class="card">
            <h2 id="list"> &nbsp; </h2>
            
            
            <h2 class="wtc">Wellcome To CDGI </h2>
            
            <p class="ss">Select Semester </p>
            <a href="issue.html"><button class="btn"> 1 SEMESTER </button></a>
            <a href="issue1.html"><button class="btn"> 2 SEMESTER </button></a>
            <a href="issue2.html"><button class="btn"> 3 SEMESTER </button></a>
            <a href="issue3.html"><button class="btn"> 4 SEMESTER </button></a>
            <a href="issue4.html"><button class="btn"> 5 SEMESTER </button></a>
            <a href="issue5.html"><button class="btn"> 6 SEMESTER </button></a>
            <a href="issue6.html"><button class="btn"> 7 SEMESTER </button></a>
            <a href="issue7.html"><button class="btn"> 8 SEMESTER </button></a><br>
            <a href="issue8.html"><button class="btn">Other</button></a>

            </div>
            </div>
            
</body>
</html>