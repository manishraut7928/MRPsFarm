<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
 <script src="https://kit.fontawesome.com/a076d05399.js"></script>
<title>Signup</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700|Poppins:400,500&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  user-select: none;
}
.bg-img{
  background: url('images/starting/milkdrops.jpg');
  height: 800px;
  background-size: cover;
  background-position: center;
}
.bg-img:after{
  position: absolute;
  content: '';
  top: 0;
  left: 0;
  height: 800px;
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
  width: 700px;
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
  height: 40px;
  width: 100%;
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
</style>
</head>
  
   
<body>

<form name="myform" action="signupAction.jsp" method="post">  
<div class="bg-img">
      <div class="content">
      
  
  <br> <br><br><br><br>
        <header style="color:#cc162f">SIGNUP To MRP'sFarm</header>
 <%
String user=request.getParameter("msgs");
      if(user!=null && user.length()>0 && user.equals("done"))
      {%>
      <header style="font-size:17px; color:white;"> 
      
    	
       
        Signup Successfully!
            
        
       </header>
       
   <%   }

%>
<%

      if(user!=null && user.length()>0 && user.equals("exist"))
      {%>
      <header style="font-size:17px; color:white;"> 
      
    	
       
        Email Already Exist!
            
        
       </header>
       
   <%   }

%>
<br>
<%
      if(user!=null && user.length()>0 && user.equals("wrong"))
      {%>
      
      
       <header>
         Something went wrong! 
            
        </header>
        
   <%   }

%>   
<
     <center>  
     
     
    
     <div class="form-row">
     <div class="form-group col-md-6">
     <div class="field">
         <span class="fas fa-pen-square"></span>
            <input type="text"class="pad" required placeholder="Enter First Name" name="fname"  pattern="[a-zA-Z]+" title=" please Type only characters" > 
          </div>
         </div>
        
          <br>
         
      
         <div class="form-group col-md-6">
          <div class="field">
         <span class="fas fa-pen-square"></span>
            <input type="text" class="pad" required placeholder="Enter Last Name" name="lname" pattern="[a-zA-Z]+" title="Please Type only characters" > 
          </div></div>
          <br></div>
        
        
        
        
        <div class="form-row">
        <div class="form-group col-md-6">
         <div class="field">
           <span class="fa fa-user"></span>
            <input type="text" required placeholder="Enter MobileNo" name="number" pattern="\d{10}" title="wrong mobile no" >
          </div></div>
         <br>
         
           
          <div class="form-group col-md-6">
           <div class="field">
             <span class="fa fa-envelope"></span>
            <input type="text" required placeholder="abc@gmail.com" name="email" pattern=".+@gmail\.com|.+@yahoo\.in" title="must contain @gmail.com or @yahoo.in">
          </div></div></div>
          <br>
               
        
           <div class="field">
           <span class="far fa-address-card"></span>
            <input type="text"class="pad" required placeholder="Enter Address" name="address" > 
          </div>
          <br>
          
           
        <div class="form-row">
        <div class="form-group col-md-4">
         <div class="field">
           <span class="fas fa-flag"></span>
            <input type="text" required placeholder="State" name="State" pattern="[a-zA-Z]+" title=" Please Type only characters" > 
          </div></div>
         <br>
         
           
          <div class="form-group col-md-4">
           <div class="field">
             <span class="fas fa-flag"></span>
            <input type="text" required placeholder="City" name="City" pattern="[a-zA-Z]+" title=" PleaseType only characters" > 
          </div></div>
          <br>
          
          <div class="form-group col-md-4">
           <div class="field">
             <span class="fas fa-map-pin"></span>
            <input type="text" required placeholder="PinCode" name="ZipCode" pattern="[0-9]{6}" maxlength="6" title="Incorrect Pincode">
          </div></div></div>
          <br>
          
          
           <div class="field space">
            <span class="fa fa-lock"></span>     
               <select name="SecurityQuestion">
      <option value="1?">In Which City you were born?</option>
       <option value="2">your secret password?</option>
        <option value="3">your bestfriends name?</option>
         <option value="4">your favourite place?</option>
      
      </select>
      </div>
      <div class="field space">
       <span class="fa fa-lock"></span>
      <input type="password" name="Answer" placeholder="Enter Answer" required>
        </div>       
           
          <div class="field space">
            <span class="fa fa-lock"></span>
            <input type="password" class="pass-key" required placeholder="Password" name="pass1" id="psw" name="psw" >
           
          </div>
          <br>
          <br>
         
       
          <div class="field">
            <input type="submit" value="SIGNUP">
          </div>
        
      <br>
        <div class="signup">
          <a href="login.jsp"><Button class="btn btn-outline-info">Login Now</Button></a>
        </div>
        </center>
      </div>
    </div>
    </form>
</body>
</html>