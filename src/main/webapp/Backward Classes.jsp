<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    	 <img class="logo" src="images/Backward Classes/logo.jpeg" alt="dept-logo">
    	 <table cellpadding="10px" class="rulers">
    	 <tr>
    	 <td><img class="cm" src="images/women and child/cm.jpg" alt="cm sir"></td>
    	 <td> <b>Hon’bl​e Chief Minister
 			 Sri K. Chandrashekar Rao ​​​​​​​
 			 Government of Telangana</b></td>
    	 </tr>
    	 <tr>
    	 <td><img class="min" src="images/Backward Classes/minister.jpeg" alt="minsiter sir"></td>
    	 <td> <b>Hon’bl​e Minister
 			  	Sri Gangula Kamalakar</b>
 		</td>
    	 </tr>
    	 </table>
		<h2>Official Website: <a href="https://tsobmms.cgg.gov.in/">Click Here.</a></h2>
	 <h2>Image Gallery</h2>
	 <img class="logo" src="images/Backward Classes/pic3.jpg" alt="dept-logo">	
	 <img class="logo" src="images/Backward Classes/pic4.jpg" alt="dept-logo">	
	 <img class="logo" src="images/Backward Classes/pp.png" alt="dept-logo">	
	<h2>Important Links</h2>
<a  href="https://telanganaepass.cgg.gov.in/"><img class="logo" alt="esadhana" src="images/Backward Classes/epass.png"></a>
    </div>
    	<div>
    	<%
    	String name = request.getParameter("scheme")+" scheme.txt";
    	String path= "C:\\Users\\Bhanu\\Desktop\\JAVAAPP\\AYS\\src\\main\\webapp\\info\\Backward Classes\\"+name;
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
    	</div>
    </div>
</body>
</html>