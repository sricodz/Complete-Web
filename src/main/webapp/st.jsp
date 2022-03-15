<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.web.entity.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DreamZ-SData</title>
<link rel="stylesheet" href="css/st.css" />
</head>
<body>
	
	<div class="container">
        <div class="inner">
            <h1>Student Data</h1>
                <table>
                   <thead>
                       <th>S.NO</th>
                       <th>Name</th>
                       <th>Email</th>
                       <th>Gender</th>
                       <th>Phone</th>
                       <th>Place</th>
                   </thead>
                   <tbody>
                   		<c:forEach var="val" items="${user.requestedUsersSecurityAccessDetailObjectList}" >
                   			<tr>
                   				<td>${val.getId()}</td>
                   				<td>${val.name}</td>
                   				<td>${val.email}</td>
                   				<td>${val.gender}</td>
                   				<td>${val.phone}</td>
                   				<td>${val.place}</td>
                   			</tr>
                   		</c:forEach>
                   </tbody>
                </table>
                <div class="button">
                    <button class="btn"><a href="#">Back</a></button>
                </div>
        </div>

    </div>
</body>
</html>