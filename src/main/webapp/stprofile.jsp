<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.web.entity.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DreamZ-Student</title>
<link rel="stylesheet" href="css/stprofile.css" />
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
	<h1 class="welcome">Profile Details</h1>
	<div class="profile">
            <img src="images/prof.jpg" alt="profile" class="prof">
            <div class="details">
                <table>
                    <tr>
                        <td>Name</td>
                        <td class="data">: <%= u.getName() %>></td>
                    </tr>
                    <tr>
                        <td>E-mail</td>
                        <td class="data">: <%= u.getEmail() %></td>
                    </tr>
                    <tr>
                        <td>Place</td>
                        <td class="data">: <%= u.getPlace() %></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td class="data">: <%= u.getGender() %></td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td class="data">: <%= u.getPhone() %></td>
                    </tr>
                </table>
            </div>
        </div>
        <div id="update">
            <button ><a href="update.jsp">Edit</a></button>
        </div>
    <div class="btn">
        <button><a href="#">Back</a></button>
    </div>
</body>
</html>