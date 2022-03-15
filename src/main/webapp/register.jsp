<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>DreamZ-Register</title>
	<link rel="stylesheet" href="css/register.css" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	 <nav>
        <h1><a href="index.jsp">DreamZ</a></h1>
        <button><a href="login.jsp">Login</a></button>
    </nav>
    <div class="container">
        <div class="content">
            <h1>Register_Form</h1>
            <p id="error0"></p>
            <form id="form">
                <table>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" placeholder="Enter Your Name" id="uname" name="uname"><p class="error" id="error1"></p></td>
                    </tr>
                    <tr>
                        <td>E-Mail</td>
                        <td><input type="email" placeholder="Enter Email" id="email" name="email"><p class="error" id="error2"></p></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" placeholder="Enter Password" id="pass" name="pass"><p class="error" id="error3"></p></td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td><input type="password" placeholder="Enter Confirm Password" id="cpass" name="cpass"><p class="error" id="error4"></p></td>
                    </tr>
                    <tr>
                        <td>Phone Number</td>
                        <td><input type="number" placeholder="Enter Mobile Number" id="phone" name="phone"><p class="error" id="error5"></p></td>
                    </tr>
                    <tr>
                        <td>Place</td>
                        <td><input type="text" placeholder="Enter Your City" id="place" name="place"><p class="error" id="error6"></p></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td class="gen">
                            <input type="radio" class="gender" name="gender" value="male">Male &nbsp &nbsp
                            <input type="radio" class="gender" name="gender" value="female">FeMale
                        </td>
                    </tr>
                     <tr>
                        <td>Type</td>
                        <td class="type">
                            <input type="radio" class="type" name="type" value="student">Student &nbsp &nbsp
                            <input type="radio" class="type" name="type" value="teacher">Teacher
                        </td>
                    </tr>
                    <tr>
                        <td class="tc"><input type="checkbox" id="check" name="check" value="checked"></td>
                        <td class="tc1">Accept terms and conditions</td>
                    </tr>
                </table>
               <div class="inner-cont">
                   <div class="block">
                        <input type="submit" value="signUp" id="register" />
                        <p class="login">Already have an Account <a href="login.jsp">Login</a> Here?</p>
                   </div>
               </div>
            </form>
        </div>
    </div>
    
    <script>
        $(document).ready(()=>{
            
            $("#register").click((e)=>{
                e.preventDefault();

                var name=$("#uname").val();
                var email=$("#email").val();
                var pass=$("#pass").val();
                var cpass=$("#cpass").val();
                var phone=$("#phone").val();
                var place=$("#place").val();
                var gender=$(".gender").val();
                var type=$(".type").val();
                var check=$("#check").val();

                var vfields=false;
                var vname=false;
                var vemail=false;
                var vpass=false;
                var vcpass=false;
                var vphone=false;
                var vplace=false;
                
                if(name=="" || email=="" || pass=="" || cpass=="" || phone=="" || place=="" || gender=="" || check==""){
                    $("#error0").text("** All Feilds are required **")
                }else{
                    $("#error0").text("");
                    vfields=true;
                }

                if(name==""){
                    $("#error1").text("** Name cannot be null **");
                }else if(name.length<2){
                    $("#error1").text("** Name must be atleast 3characters **");
                }else{
                    $("#error1").text("");
                    vname=true;
                }

                if(email==""){
                    $("#error2").text("** Email cannot be null **");
                    console.log("alert")
                }else{
                    $("#error2").text("");
                    vemail=true;
                }

                if(pass==""){
                    $("#error3").text("** Password cannot be null **");
                }else if(pass.length<8){
                    $("#error3").text("** Password must be atleast 8 characters **");
                }else if(pass.search(/[0-9]/)==-1){
                    $("#error3").text("** Password must contains atleast 1 numeric value **");
                }else if(pass.search(/[a-z]/)==-1){
                    $("#error3").text("** Password must contains atleast 1 lower case **");
                }else if(pass.search(/[A-Z]/)==-1){
                    $("#error3").text("** Password must contains atleast 1 upper case **");
                }else if(pass.search(/[!\.\@\#\%\^\&\$\(\)\]]/)==-1){
                    $("#error3").text("** Password must contains atleast 1 Special character **");
                }else{
                    $("#error3").text("");
                    vpass=true;
                }

                if(cpass==""){
                    $("#error4").text("** Confirm Password cannot be null **");
                }else if(pass!=cpass){
                    $("#error4").text("** Confirm Password and password are not matched**");
                }else{
                    $("#error4").text("");
                    vcpass=true;
                }
                

                if(phone==""){
                    $("#error5").text("** Phone number cannot be null **");
                }else if(phone.length<10){
                    $("#error5").text("** Phone number must be 10 digits **");
                }else{
                    $("#error5").text("");
                    vphone=true;
                }
                

                if(place==""){
                    $("#error6").text("** Place cannot be null **");
                }else{
                    $("#error6").text("");
                    vplace=true;
                }
				
                var form=$("#form").serialize();
           		
     
                if(vname && vemail && vpass && vcpass && vplace && vphone && vfields){
                	
                	$.ajax({
               			url:'RegisterServlet',
               			type:'post',
               			data:form,
               			success:function(res){
               				if(res==1){
               					alert("Success");
               					window.location.replace("login.jsp");
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