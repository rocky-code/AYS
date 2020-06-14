<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.com.AYS.DAO.*" %>
<%@ page import="com.AYS.entity.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AYS | Home</title>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@500&family=Muli:wght@800&family=Roboto&family=Ubuntu&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Pangolin&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@500&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Indie+Flower&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Titillium+Web&display=swap" rel="stylesheet">
 <script src="https://kit.fontawesome.com/10e265859f.js" crossorigin="anonymous"></script>
    <style>
     <%@ include file="home.css"%>
	</style>
</head>
<body>
    <nav>
        <a href="" class="brand">AYS</a>
        <ul>
            <li><a href="/AYS">Home</a></li>
            <li><a href="">About</a></li>
            <li><a href="">Contact</a></li>
            <li><a href="">Download Schemes list(PDF)</a></li>
        </ul>
    </nav>
    <hr>
    <h2 class="heading">DEPARTMENT WISE TELANGANA GOVERNMENT SCHEMES FOR PUBLIC</h2>
    <section class="main">
        <div class="container">
            <div class="dept">
               <p>Departments</p>
               <ul class="dept-ul">
                   <%
                 deptDAO dd = new deptDAO();
                 List<Object> list = dd.List();
                 for(Object obj : list)
                 {
                	 departments dept = (departments)obj;
                %>
 <li class="dept-li"><a href="Controller?id=<%= dept.getId()%>&dept=<%= dept.getName()%>"><%= dept.getName() %></a></li>
                    
             	<%} %>
               </ul>
            </div>
            <div class="content">
            <%
           		try{
           			int id=Integer.parseInt(request.getParameter("id"));
                	deptDAO da = new deptDAO();
                	departments name = da.get(id);
             %>
             <h1 style="text-align: center;
    font-family: 'Ubuntu',sans-serif;
    font-size: 30px;
    line-height: 1.5;"><%= name.getName() %> Department</h1>
    <% 
           		}catch(Exception e){
           			%>
           			<div>
           			<h1 style="text-align: center;
           				    font-family: 'Ubuntu',sans-serif;
           				    font-size: 28px;
           		    line-height: 1.5;margin-top: 0px;">AT YOUR SERVICE</h1>
           		    <p  style="
           			font-family: 'Montserrat', sans-serif; ;
           		    font-size: 20px;
           		    line-height: 1.5;">
           	   Our Main Aim is to provide details about all the schemes proposed by Telangana Government
               to the public so that public can use them in an efficient way. You can get the schemes by selecting 
               any one of the available departments. 
           		    </p>
   <h2 style="font-family: 'Montserrat', sans-serif; font-size: 18px;"><i class="fas fa-hand-point-left fa-2x" style="margin-right: 10px";
   			></i> Select departments to get schemes !</h2>
           			</div>
           	<% 	
           		}
			%>
                  
            <div class="schemes">
            <%
            ArrayList<Object> ls =new ArrayList<Object>();
            try{
            	String dept = request.getParameter("dept");
            	if(dept.equalsIgnoreCase("women and child"))
            		dept=dept.toLowerCase();
            	int cnt=1;
                ls = (ArrayList<Object>) request.getAttribute("scheme");
                for(Object scheme: ls)
            	{
                	String img = dept+cnt+".jpg";
                	System.out.println(img);
            		schemes sc = (schemes)scheme;
             %>
             <div class="scheme">
                    <img class="gimg" src="images/<%=dept %>/<%=img %>" alt="GOVTOFTELANGANA">
                    <h2 class="govt"><b><%=sc.getName() %></b></h2>
                    <%
                   if(sc.getName().equalsIgnoreCase("balamrutham"))
                   {
                    %>
                <a href="http://wdcw.tg.nic.in/Balamrutham.html">Get More Details</a> 
                <% }else {%>   
                    <a href="?scheme=<%= sc.getName()%>&action=<%= request.getParameter("dept")%>">Get More Details</a>
                <%} %>
                </div>
             <%
             cnt++;
            	}
            }catch(NullPointerException e){
            	%>
            
           <% 	
            }
            %>

   			</div>
            
            </div>
            
          
        </div>
    </section>
    
</body>
</html>
