<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.web.entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DreamZ-Courses</title>
<link rel="stylesheet" href="css/course.css" />
</head>
<body>
	<%
		response.setHeader("cache-Control","no-cache,no-store,must-revalidate");
		if(session.getAttribute("user")==null){
			response.sendRedirect("login.jsp");
		}
	%>
	 <nav>
        <h1><a href="welcome.jsp">DreamZ</a></h1>
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
	<h1 class="welcome">Courses Offered</h1>
	<img src="images/course.PNG" alt="course" />
    <div class="btn">
        <button><a href="welcome.jsp">Back</a></button>
    </div>
</body>
</html>