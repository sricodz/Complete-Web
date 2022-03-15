<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>DreamZ-Login</title>
	<link rel="stylesheet" href="css/login.css" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<nav>
        <h1><a href="index.jsp">DreamZ</a></h1>
        <button><a href="register.jsp">Register</a></button>
    </nav>
    <div class="container">
        <section>
            <h1>Login_Form</h1>
            <p id="error"></p>
            <form id="form">
                <table>
                    <tr>
                        <td>Email</td>
                        <td><input type="email" name="email" id="email" placeholder="Enter Email"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" id="pass" placeholder="Enter Password"></td>
                    </tr>
                    <tr>
                        <td>Type</td>
                        <td class="type">
                            <input type="radio" name="type" class="type" value="student">Student &nbsp &nbsp
                            <input type="radio" name="type" class="type" value="teacher">Teacher
                        </td>
                    </tr>
                </table>
                <div class="inner">
                    <div class="block">
                        <input type="submit" value="SignIn" id="login">
                    </div>
                </div>
            </form>
        </section>
    </div>
    
    <script>
    		
    	$(document).ready(()=>{
    		$("#login").click((e)=>{
    			e.preventDefault();
    			
    			var email=$("#email").val();
    			var pass=$("#pass").val();
    			var validate=false;
    			
    			if(email=="" || pass==""){
    				$("#error").text("*** All Fields are Required ***");
    			}else{
    				$("#error").text("");
    				validate=true;
    			}
    			
    			if(validate){
    				var form=$("#form").serialize();
    				console.log(form);
    				$.ajax({
    					url:'LoginServlet',
    					type:'post',
    					data:form,
    					success:function(res){
    						if(res==1){
    							alert("Login Success");
    							window.location.replace("welcome.jsp");
    						}else if(res==2){
    							alert("Login Success");
    							window.location.replace("teacherwel.jsp");
    						}else if(res==0){
    							alert("Login Success");
    							window.location.replace("owner.jsp");
    						}else{
    							alert(res);
    						}
    					}
    				})
    			}
    		})
    	})
    </script>
</body>
</html>