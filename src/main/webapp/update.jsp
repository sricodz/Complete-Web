<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.web.entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details-Update</title>
<link rel="stylesheet" href="css/update.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<%
		response.setHeader("cache-Control","no-cache,no-store,must-revalidate");
		if(session.getAttribute("user")==null){
			response.sendRedirect("login.jsp");
		}
	%>
	<% User u=(User)session.getAttribute("user"); %>
	 <div class="container">
        <div class="inner">
            <h1>Edit-Data</h1>
            <p id="error"></p>
            <form id="form">
            	<input type="hidden" name="id" value=<%=u.getId() %>/>
                <table>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="name" value=<%=u.getName() %> id="name" /></td>
               
                    </tr>
                    <tr>
                        <td>Place</td>
                        <td><input type="text" name="place" value=<%=u.getPlace() %> id="place" /></td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td><input type="text" name="phone" value=<%=u.getPhone() %> id="phone" /></td>
                    </tr>
                </table>
                <div class="button">
                    <input type="submit" value="Update" id="btn"/>
                </div>
            </form>
        </div>

    </div>
    
    <!--  <script>
    	$(document).ready(()=>{
    		
    		$("#btn").click((e)=>{
    			
    			e.preventDefault();
    			
    			var name=$("#name").val();
    			var place=$("#place").val();
    			var phone=$("#phone").val();
    			
    			if(name=="" || place=="" || phone==""){
    				$("#error").text("** All Fields are required **")
    			}else{
    				var form=$("#form").serialize();
    				$.ajax({
    					url:'UpdateServlet',
    					type:'post',
    					data:form,
    					success:function(res){
    						if(res==1){
    							window.location.replace("stprofile.jsp");
    						}else{
    							alert(res);
    						}
    					}
    				})
    			}
    		})
    	})
    </script>
    -->
</body>
</html>