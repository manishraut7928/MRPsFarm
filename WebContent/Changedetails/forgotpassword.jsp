<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<title>Forget Password</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700|Poppins:400,500&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  user-select: none;
}
.bg-img{
  background: url("images/starting/milkdrops.jpg");
  height: 100vh;
  background-size: cover;
  background-position: center;
}
.bg-img:after{
  position: absolute;
  content: '';
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  background: rgba(0,0,0,0.7);
}
.content{
  position: absolute;
  top: 50%;
  left: 50%;
  z-index: 999;
  text-align: center;
  padding: 50px 32px;
  width: 550px;
  transform: translate(-50%,-50%);
  background: rgba(255,255,255,0.04);
  box-shadow: -1px 4px 28px 0px rgba(0,0,0,0.75);
}
.content header{
  color:  #E1306C;
  font-size: 30px;
  font-weight: 600;
  margin: 0 0 30px 0;
  font-family: 'Montserrat',sans-serif;
}
.field{
  position: relative;
  height: 35px;
  width: 50%;
  display: flex;
  background: rgba(255,255,255,0.94);
}
.field span{
  color: #222;
  width: 40px;
  line-height: 35px;
}
.field input, select{
  height: 100%;
  width: 100%;
  background: transparent;
  border: none;
  outline: none;
  color: #222;
  font-size: 10px;
  font-family: 'Poppins',sans-serif;
}
.space{
  margin-top: 15px;
}
.show{
  position: absolute;
  right: 13px;
  font-size: 10px;
  font-weight: 700;
  color: #222;
  display: none;
  cursor: pointer;
  font-family: 'Montserrat',sans-serif;
}
.pass-key:valid ~ .show{
  display: block;
}
.pass{
  text-align: left;
  margin: 6px 0;
}
.pass a{
  color: white;
  text-decoration: none;
  font-family: 'Poppins',sans-serif;
}
.pass:hover a{
  text-decoration: underline;
}
.field input[type="submit"]{
  background:  #2691d9;
  border: 1px solid #2691d9;
  color: white;
  font-size: 14px;
  letter-spacing: 1px;
  font-weight: 600;
  cursor: pointer;
  font-family: 'Montserrat',sans-serif;
}
.field input[type="submit"]:hover{
  background: #2691d9;
}
.login{
  color: white;
  margin: 17px 0;
  font-family: 'Poppins',sans-serif;
}

i span{
  margin-left: 8px;
  font-weight: 500;
  letter-spacing: 1px;
  font-size: 17px;
  font-family: 'Poppins',sans-serif;
}
.signup{
  font-size: 17px;
  color: white;
  font-family: 'Poppins',sans-serif;
}
.signup a{
  color: #3498db;
  text-decoration: none;
}
.signup a:hover{
  text-decoration: underline;
}

.pad{
padding-left:5px;
}

.first-txt {
            position: absolute;
            top: 20px;
            left: 40%;
        }
</style>
</head>
<body>
 
<form action="ForgotPasswordAction.jsp" method="post">
<div class="bg-img">
      <div class="content">
     
<br>
       
  
 
        <header>Forget Password</header>
        
         <br>
<%
String user=request.getParameter("msg");
      if(user!=null && user.length()>0 && user.equals("done"))
      {%>
      <header style="font-size:17px; color:white;"> 
      
    	
       
         Password Changed Successfully!
            
        
       </header>
       
   <%   }

%>
<br>
<%
      if(user!=null && user.length()>0 && user.equals("wrong"))
      {%>
      
      <header style="font-size:17px; color:white;"> 
       
          Password not Changed 
            
        </header>
        
   <%   }

%>   
<br>
        
        <center> 
         <div class="field">
            <span class="fa fa-envelope"></span>                 
         <input type="number" name="mobilenumber" placeholder="Enter Mobile Number" required>
         </div>
        
        <br>
        
        <div class="field">
            <span class="fa fa-envelope"></span>
            <input type="text" required placeholder="Email" name="email">
          </div>
               <br>
             
         
         <div class="field">
      <select name="security">
      <option value="1?">In Which City you were born?</option>
       <option value="2">your secret password?</option>
        <option value="3">your bestfriends name?</option>
         <option value="4">your favourite place?</option>
      
      </select>
      </div>
      <br>
      <div class="field">
      <span class="fa fa-lock"></span>
      <input type="text" name="answer" placeholder="Enter Answer" required>
          
        </div>                     
          <div class="field space">
            <span class="fa fa-lock"></span>
            <input type="password" class="pass-key" required placeholder="Enter New Password" name="password">
           
          </div>
          <br>
          <div class="field">
            <input type="submit" value="SAVE">
          </div>
        
      <br>
        <div class="signup">
          <a href="login.jsp">Login Now</a>
        </div>
        </center>
      </div>
    </div>
    </form>
    

</body>
</html>