<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.web.entity.User" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>DreamZ</title>
	<link rel="stylesheet" href="css/teach.css" type="text/css" />
</head>
<body>
	<%
		response.setHeader("cache-Control","no-cache,no-store,must-revalidate");
		if(session.getAttribute("user")==null){
			response.sendRedirect("login.jsp");
		}
	%>
	 <nav>
        <h1><a href="#">DreamZ</a></h1>
        <div class="inner-nav">
            <div class="name">
                <img src="images/icon.jfif" alt="icon" />
                <h2><% User u=(User)session.getAttribute("user"); %><%= u.getName() %> </h2>
            </div>
            <form action="LogoutServlet">
            	<input type="submit" value="LogOut" id="btn"/>
            </form>
        </div>
    </nav>
    <h1 class="welcome">Welcome <%= u.getName() %></h1>
    <div class="container">
        <div class="inner">
           <div class="inner1">
               <img src="images/profile.jfif" alt="profile">
               <div class="block">
                    <h3>Profile Details</h3>
                    <button><a href="#">click_Here</a></button>
               </div>
           </div>
           <div class="inner2">
            <img src="images/group.jpg" alt="courses">
            <div class="block">
                <h3>Show Students</h3>
                <button><a href="#">click_Here</a></button>
            </div>
        </div>
        </div>
    </div>
</body>
</html>