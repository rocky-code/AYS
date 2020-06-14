<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><%= request.getParameter("scheme") %></title>
<link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@500&family=Muli:wght@800&family=Roboto&family=Ubuntu&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Pangolin&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Titillium+Web&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@500&display=swap" rel="stylesheet">
<style>
p , table{
 	font-family: 'Titillium Web', sans-serif;
 	font-size: 18px;
 }
 h2{
 	font-family: 'Josefin Sans', sans-serif;
 }
     <%@ include file="home.css"%>
	</style>
</head>
<body>
	<nav>
        <a href="/AYS" class="brand">AYS</a>
        <ul>
            <li><a href="/AYS">Home</a></li>
            <li><a href="">About</a></li>
            <li><a href="">Contact</a></li>
            <li><a href="">Download Schemes list(PDF)</a></li>
        </ul>
    </nav>
    <hr>
    <h1 style="text-align: center;font-family: 'Baloo 2', cursive; font-size: 30px; font-weight: 500;"><%= request.getParameter("scheme") %></h1>
    <hr>
    <div class="box">
    	<div style="padding: 10px">
    	 <img class="logo" src="images/Animal Husbandry/logo.jpeg" alt="dept-logo">
    	 <table cellpadding="10px" class="rulers">
    	 <tr>
    	 <td><img class="cm" src="images/women and child/cm.jpg" alt="cm sir"></td>
    	 <td><b>Honâblâe Chief Minister
 			 Sri K. Chandrashekar Rao âââââââ
 			 Government of Telangana</b> </td>
    	 </tr>
    	 <tr>
    	 <td><img class="min" src="images/Animal Husbandry/minister.jpg" alt="minsiter sir"></td>
    	 <td> <b>Honâblâe Animal Husbandry and Fisheries Minister
 			  Sri T Srinivas Yadav</b>
 		</td>
    	 </tr>
    	 </table>
    <h2>Image Gallery</h2>
    <img class="logo" src="images/Animal Husbandry/ambulance1.jpg" alt="dept-logo">
    <img class="logo" src="images/Animal Husbandry/Animal Husbandry2.jpg" alt="dept-logo">
    
		<h2>Official Website: <a href="https://www.telangana.gov.in/Departments/animal-husbandry-and-fisheries">Click Here.</a></h2>
		
    </div>
    	<div>
    	<%
    	String name = request.getParameter("scheme").trim()+" scheme.txt";
    	String path= "C:\\Users\\Bhanu\\Desktop\\JAVAAPP\\AYS\\src\\main\\webapp\\info\\Animal Husbandry\\"+name.toLowerCase();
    	String content="";
    	try
    	{
    		BufferedReader reader = new BufferedReader(new FileReader(path));
    		String line = reader.readLine();
		while (line != null)   {
    		if(line.length()==0){
		%>
		<p class="file"><%=content %></p>
		<% 
		content="";
		}else{
    		content+=line;
		}
    	line=reader.readLine();
		}
    	reader.close();
    	}catch(Exception e){System.out.println(e);}
    %>
    	<p class="file"><%= content %></p>
    	
    	<img class="logo" src="images/Animal Husbandry/pic.jfif" alt="dept-logo">
    <img class="logo" src="images/Animal Husbandry/pic2.jfif" alt="dept-logo">
    <img class="logo" src="images/Animal Husbandry/sheep1.jpg" alt="dept-logo">
    <img class="logo" src="images/Animal Husbandry/sheep2.jpg" alt="dept-logo">
    	</div>
    </div>
</body>
</html>