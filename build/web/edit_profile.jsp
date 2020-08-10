<%--
    Document   : edit_profile
    Created on : Feb 1, 2020, 7:04:31 PM
    Author     : krishna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>

<%@page import="java.sql.*,java.util.*"%>
<%
 String email=null;
 Cookie c[]=request.getCookies();
 for(int i=0; i<c.length;i++){
     if(c[i].getName().equals("user")){
         email=c[i].getValue();
         break;
     }
 }
 if(email==null){
     response.sendRedirect("index.jsp");
 }else{
     try{
         
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
            Statement st=cn.createStatement();
          
            ResultSet rs=st.executeQuery("select * from matri where email='"+email+"'");
            
            if(rs.next()){
            
  
%>
<html>
<head>
<title>Marital an Wedding Category Flat Bootstarp Resposive Website Template | Register :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Marital Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Oswald:300,400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Ubuntu:300,400,500,700' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() { 
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
</head>
<body>
<!-- ============================  Navigation Start =========================== -->
<%@include file="header.jsp" %>
<!-- ============================  Navigation End ============================ -->
<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="index.html"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">Edit Profile</li>
     </ul>
   </div>
   <div class="services">
   	  <div class="col-sm-6 login_left">
	     <form method="post" action="edit_profile_handler.jsp">
             
	  	    <div class="form-group">
                
		      <label for="edit-name">Name <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="name" value="<%=rs.getString("name") %>" size="60" maxlength="60" class="form-text required">
		    </div>
             
             <div class="form-group">
                
		      <label for="edit-name">Mobile NO:- <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="mob" value="<%=rs.getString("mob") %>" size="60" maxlength="60" class="form-text required">
		    </div>
            
		
             <div class="form-group form-group1">
                <label class="col-sm-7 control-lable" for="sex">Gender : </label>
                <div class="col-sm-5">
                    <div class="radios">
				        <label for="radio-01" class="label_radio">
                                            <input type="radio"value="male" name="gender" <% if(rs.getString("gender").equals("male")){out.println("checked");} %>> Male
				        </label>
				        <label for="radio-02" class="label_radio">
                                            <input type="radio" name="gender" value="female" <% if(rs.getString("gender").equals("female")){out.println("checked");} %>> Female
				        </label>
	                </div>
                </div>
                <div class="clearfix"> </div>
             </div> 
             <div class="form-group">
                
		      <label for="edit-name">DOB <span class="form-required" title="This field is required.">*</span></label>
		      <input type="date" id="edit-name" name="dob" value="<%=rs.getString("dob") %>" size="60" maxlength="60" class="form-text required">
		    </div>
                     <div class="form_but1">
	      <label class="col-sm-5 control-lable1" for="sex">Marital Status : </label>
	        <div class="col-sm-7 form_radios">
                <div class="select-block1">
                    <select name="status">
                         <option value="<%=rs.getString("status")%>"><%=rs.getString("status") %></option>
                         <option value="Single">Single</option>
                         <option value="Divorced">Divorced</option>
                         <option value="Widowed">Widowed</option>
                         <option value="Separated">Separated</option> 
                        
                    </select>
		
	            </div>
	         <div class="clearfix"> </div>
             </div>
       </div>
             <br><br>
<div class="form-group">
    
    <label for="edit-name" class="col-sm-5 control-lable1">Religion :<span class="form-required" title="This field is required.">*</span></label>
    
   <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="religion">
            <option value="<%=rs.getString("religion") %>"><%=rs.getString("religion") %></option>
            <option value="Hindu">Hindu</option>
            <option value="Sikh">Sikh</option>
            <option value="Jain">Jain</option>
            <option value="Muslim">Muslim</option> 
            <option value="Christian">Christian</option> 
            <option value="Jewish">Jewish</option> 
            <option value="Inter-Religion">Inter-Religion</option> 
        </select>
       </div>
    </div>
    
     <div class="clearfix"> </div>
  </div>
           
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Mother Tongue : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="lang">
            <option value="<%rs.getString("lang"); %>"><%=rs.getString("lang") %></option>
            <option value="English">English</option>
            <option value="French">French</option>
            <option value="Telugu">Telugu</option>
            <option value="Bengali">Bengali</option>
            <option value="Bihari">Bihari</option>
            <option value="Hindi">Hindi</option> 
            <option value="Koshali">Koshali</option> 
            <option value="Khasi">Khasi</option> 
            <option value="Tamil">Tamil</option> 
            <option value="Urdu">Urdu</option> 
            <option value="Manipuri">Manipuri</option> 
            
        </select>
          
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
             
             
             <!--
             
             <div class="form-group">
                
		      <label for="edit-name">Religion <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="religion" value="" size="60" maxlength="60" class="form-text required">
		    </div>
-->
             <div class="form-group">
            
		      <label for="edit-name">Caste<span class="form-required" title="This field is required.">*</span></label>
                      <input type="text" id="edit-name" name="caste" value="<%=rs.getString("caste")%>" size="60" maxlength="60" class="form-text required">
		    </div>
             <div class="form-group">
                
		      <label for="edit-name">Education<span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="education" value="<%=rs.getString("education")%>" size="60" maxlength="60" class="form-text required">
		    </div>
                    <div class="form-group">
                
		      <label for="edit-name">Occupation<span class="form-required" title="This field is required.">*</span></label>
                      <input type="text" id="edit-name" name="occupation" value="<%=rs.getString("occupation")%>" size="60" maxlength="60" class="form-text required">
		    </div>
             
             <div class="form-group">
                
		      <label for="edit-name">State<span class="form-required" title="This field is required.">*</span></label>
                      <input type="text" id="edit-name" name="state" value="<%=rs.getString("state")%>" size="60" maxlength="60" class="form-text required">
		    </div>
             <div class="form-group">
                
		      <label for="edit-name">City<span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="city" value="<%=rs.getString("city")%>" size="60" maxlength="60" class="form-text required">
		    </div>
            <!--  
			  <div class="form-group">
			     <label for="edit-name">Subject <span class="form-required" title="This field is required.">*</span></label>
				 <textarea class="form-control bio" placeholder="" rows="3"></textarea>
			  </div> -->
			  <div class="form-actions">
			    <input type="submit" id="edit-submit" name="op" value="Update" class="btn_1 submit">
			  </div>  
		 </form>
	  </div>
	 
	 
   </div>
  </div>
</div>
<%@include file="footer.jsp" %>
   
</body>
</html>	
<%
             }
     
     }catch(Exception e){
        out.println(e.getMessage());
       }
 }

%>