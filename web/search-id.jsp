<%-- 
    Document   : search-id
    Created on : Feb 4, 2020, 5:31:30 PM
    Author     : krishna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*,java.util.*"  %>
<%
    String cemail=null;
    Cookie c[]= request.getCookies();
    for(int i=0;i<c.length;i++){
        if(c[i].getName().equals("user")){
            cemail=c[i].getValue();
            break;
        }
    }
    if(cemail==null){
        response.sendRedirect("index.jsp");
    }else{
%>
<html>
<head>
<title>Marital an Wedding Category Flat Bootstarp Resposive Website Template | Search-id :: w3layouts</title>
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
        <li class="current-page">Search By Profile ID</li>
     </ul>
   </div>
   <div class="col-md-9 profile_left">
     <form method="post" action="">	
	  <div class="form_but1">
          <label class="col-sm-3 control-lable1" for="sex"><h3>Email</h3> </label>
		<div class="col-sm-7 form_radios">
		  <div class="input-group1">
	        <input type="text" value="" name="email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
            
              
	        <input type="submit" name="submit" value="Submit">
	      </div>
	    </div>
		<div class="clearfix"> </div>
	 </div>
    </form>
       <%
       if(request.getParameter("submit")==null){
           
       }else{
           
       
       if(request.getParameter("email")==null){
            response.sendRedirect("search-id.jsp?invalide=1");
       }else{
            String email=request.getParameter("email");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
                Statement st= cn.createStatement();
                ResultSet rs= st.executeQuery("select * from matri where email='"+email+"'");
                if(rs.next()){
                    
          
       %>
      
                     <h2>Profile Id : 254870</h2>
    <div class="col_3">
        <div class="col-sm-4 row_2">
            <div class="flexslider">
                 <ul class="slides">
                    <li data-thumb="images/p1.jpg">
                        <img src="images/p1.jpg" />
                    </li>
                    <li data-thumb="images/p2.jpg">
                        <img src="images/p2.jpg" />
                    </li>
                    <li data-thumb="images/p3.jpg">
                        <img src="images/p3.jpg" />
                    </li>
                    <li data-thumb="images/p4.jpg">
                        <img src="images/p4.jpg" />
                    </li>
                 </ul>
              </div>
        </div>
        <div class="col-sm-8 row_1">
            <table class="table_working_hours">
                <tbody>
                    <tr class="opened_1">
                        <td class="day_label">Name :</td>
                        <td class="day_value"><%=rs.getString("name")%></td>
                    </tr>
                    <tr class="opened">
                        <td class="day_label">Email :</td>
                        <td class="day_value"><%=rs.getString("email") %></td>
                    </tr>
                    <tr class="opened">
                        <td class="day_label">MObile :</td>
                        <td class="day_value"><%=rs.getString("mob") %></td>
                    </tr>
                    <tr class="opened">
                        <td class="day_label">Dob :</td>
                        <td class="day_value"><%=rs.getString("dob") %></td>
                    </tr>
                    <tr class="opened">
                        <td class="day_label">Religion :</td>
                        <td class="day_value"><%=rs.getString("religion") %></td>
                    </tr>
                    <tr class="opened">
                        <td class="day_label">Caste :</td>
                        <td class="day_value"><%=rs.getString("caste") %></td>
                    </tr>
                    <tr class="opened">
                        <td class="day_label">Marital Status :</td>
                        <td class="day_value">Single</td>
                    </tr>
                    <tr class="opened">
                        <td class="day_label">Location :</td>
                        <td class="day_value">India</td>
                    </tr>
                   <!-- <tr class="closed">
                        <td class="day_label">Profile Created by :</td>
                        <td class="day_value closed"><span>Self</span></td>
                    </tr> -->
                    <tr class="closed">
                        <td class="day_label">Education :</td>
                        <td class="day_value closed"><span><%=rs.getString("education") %></span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="clearfix"> </div>
    </div>
     <%
                
                    }
            }catch(Exception e){
                out.println(e.getMessage());
            }
       }
             }
       %>
       <!--
 <div class="paid_people">
   <h1>Paid People</h1>
   <div class="row_1">
	   <div class="col-sm-6 paid_people-left">
	 	<ul class="profile_item">
		  <a href="#">
		   <li class="profile_item-img">
		   	  <img src="images/a8.jpg" class="img-responsive" alt=""/>
		   </li>
		   <li class="profile_item-desc">
		   	  <h4>2458741</h4>
		   	  <p>29 Yrs, 5Ft 5in Christian</p>
		   	  <h5>View Full Profile</h5>
		   </li>
		   <div class="clearfix"> </div>
		  </a>
	     </ul>
	   </div>
	   <div class="col-sm-6">
	 	<ul class="profile_item">
		  <a href="#">
		   <li class="profile_item-img">
		   	  <img src="images/a7.jpg" class="img-responsive" alt=""/>
		   </li>
		   <li class="profile_item-desc">
		   	  <h4>2458741</h4>
		   	  <p>29 Yrs, 5Ft 5in Christian</p>
		   	  <h5>View Full Profile</h5>
		   </li>
		   <div class="clearfix"> </div>
		  </a>
	     </ul>
	   </div>
	   <div class="clearfix"> </div>
   </div>
   <div class="row_1">
	   <div class="col-sm-6 paid_people-left">
	 	<ul class="profile_item">
		  <a href="#">
		   <li class="profile_item-img">
		   	  <img src="images/a6.jpg" class="img-responsive" alt=""/>
		   </li>
		   <li class="profile_item-desc">
		   	  <h4>2458741</h4>
		   	  <p>29 Yrs, 5Ft 5in Christian</p>
		   	  <h5>View Full Profile</h5>
		   </li>
		   <div class="clearfix"> </div>
		  </a>
	     </ul>
	   </div>
	   <div class="col-sm-6">
	 	<ul class="profile_item">
		  <a href="#">
		   <li class="profile_item-img">
		   	  <img src="images/a5.jpg" class="img-responsive" alt=""/>
		   </li>
		   <li class="profile_item-desc">
		   	  <h4>2458741</h4>
		   	  <p>29 Yrs, 5Ft 5in Christian</p>
		   	  <h5>View Full Profile</h5>
		   </li>
		   <div class="clearfix"> </div>
		  </a>
	     </ul>
	   </div>
	   <div class="clearfix"> </div>
   </div>
   <div class="row_1">
	   <div class="col-sm-6 paid_people-left">
	 	<ul class="profile_item">
		  <a href="#">
		   <li class="profile_item-img">
		   	  <img src="images/a4.jpg" class="img-responsive" alt=""/>
		   </li>
		   <li class="profile_item-desc">
		   	  <h4>2458741</h4>
		   	  <p>29 Yrs, 5Ft 5in Christian</p>
		   	  <h5>View Full Profile</h5>
		   </li>
		   <div class="clearfix"> </div>
		  </a>
	     </ul>
	   </div>
	   <div class="col-sm-6">
	 	<ul class="profile_item">
		  <a href="#">
		   <li class="profile_item-img">
		   	  <img src="images/a8.jpg" class="img-responsive" alt=""/>
		   </li>
		   <li class="profile_item-desc">
		   	  <h4>2458741</h4>
		   	  <p>29 Yrs, 5Ft 5in Christian</p>
		   	  <h5>View Full Profile</h5>
		   </li>
		   <div class="clearfix"> </div>
		  </a>
	     </ul>
	   </div>
	   <div class="clearfix"> </div>
   </div>
   <div class="row_1">
	   <div class="col-sm-6 paid_people-left">
	 	<ul class="profile_item">
		  <a href="#">
		   <li class="profile_item-img">
		   	  <img src="images/a7.jpg" class="img-responsive" alt=""/>
		   </li>
		   <li class="profile_item-desc">
		   	  <h4>2458741</h4>
		   	  <p>29 Yrs, 5Ft 5in Christian</p>
		   	  <h5>View Full Profile</h5>
		   </li>
		   <div class="clearfix"> </div>
		  </a>
	     </ul>
	   </div>
	   <div class="col-sm-6">
	 	<ul class="profile_item">
		  <a href="#">
		   <li class="profile_item-img">
		   	  <img src="images/a6.jpg" class="img-responsive" alt=""/>
		   </li>
		   <li class="profile_item-desc">
		   	  <h4>2458741</h4>
		   	  <p>29 Yrs, 5Ft 5in Christian</p>
		   	  <h5>View Full Profile</h5>
		   </li>
		   <div class="clearfix"> </div>
		  </a>
	     </ul>
	   </div>
	   <div class="clearfix"> </div>
   </div>
   <div class="row_1">
	   <div class="col-sm-6 paid_people-left">
	 	<ul class="profile_item">
		  <a href="#">
		   <li class="profile_item-img">
		   	  <img src="images/a5.jpg" class="img-responsive" alt=""/>
		   </li>
		   <li class="profile_item-desc">
		   	  <h4>2458741</h4>
		   	  <p>29 Yrs, 5Ft 5in Christian</p>
		   	  <h5>View Full Profile</h5>
		   </li>
		   <div class="clearfix"> </div>
		  </a>
	     </ul>
	   </div>
	   <div class="col-sm-6">
	 	<ul class="profile_item">
		  <a href="#">
		   <li class="profile_item-img">
		   	  <img src="images/a4.jpg" class="img-responsive" alt=""/>
		   </li>
		   <li class="profile_item-desc">
		   	  <h4>2458741</h4>
		   	  <p>29 Yrs, 5Ft 5in Christian</p>
		   	  <h5>View Full Profile</h5>
		   </li>
		   <div class="clearfix"> </div>
		  </a>
	     </ul>
	   </div>
	   <div class="clearfix"> </div>
   </div>
   <div class="row_2">
	   <div class="col-sm-6 paid_people-left">
	 	<ul class="profile_item">
		  <a href="#">
		   <li class="profile_item-img">
		   	  <img src="images/a7.jpg" class="img-responsive" alt=""/>
		   </li>
		   <li class="profile_item-desc">
		   	  <h4>2458741</h4>
		   	  <p>29 Yrs, 5Ft 5in Christian</p>
		   	  <h5>View Full Profile</h5>
		   </li>
		   <div class="clearfix"> </div>
		  </a>
	     </ul>
	   </div>
	   <div class="col-sm-6">
	 	<ul class="profile_item">
		  <a href="#">
		   <li class="profile_item-img">
		   	  <img src="images/a6.jpg" class="img-responsive" alt=""/>
		   </li>
		   <li class="profile_item-desc">
		   	  <h4>2458741</h4>
		   	  <p>29 Yrs, 5Ft 5in Christian</p>
		   	  <h5>View Full Profile</h5>
		   </li>
		   <div class="clearfix"> </div>
		  </a>
	     </ul>
	   </div>
	   <div class="clearfix"> </div>
    </div>
  </div>
</div>
<div class="col-md-3 match_right">
	<div class="profile_search1">
	   <form>
		  <input type="text" class="m_1" name="ne" size="30" required="" placeholder="Enter Profile ID :">
		  <input type="submit" value="Go">
	   </form>
   </div>
   <section class="slider">
	 <h3>Happy Marriage</h3>
	 <div class="flexslider">
		<ul class="slides">
		  <li>
			<img src="images/s2.jpg" alt=""/>
			<h4>Lorem & Ipsum</h4>
			<p>It is a long established fact that a reader will be distracted by the readable</p>
		  </li>
		  <li>
			<img src="images/s1.jpg" alt=""/>
			<h4>Lorem & Ipsum</h4>
			<p>It is a long established fact that a reader will be distracted by the readable</p>
		  </li>
		  <li>
			<img src="images/s3.jpg" alt=""/>
			<h4>Lorem & Ipsum</h4>
			<p>It is a long established fact that a reader will be distracted by the readable</p>
		  </li>
	    </ul>
	  </div>
   </section>
   <div class="view_profile view_profile2">
        	<h3>View Similar Profiles</h3>
        	<ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p5.jpg" class="img-responsive" alt=""/>
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h4>2458741</h4>
        	   	  <p>29 Yrs, 5Ft 5in Christian</p>
        	   	  <h5>View Full Profile</h5>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
           <ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p6.jpg" class="img-responsive" alt=""/>
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h4>2458741</h4>
        	   	  <p>29 Yrs, 5Ft 5in Christian</p>
        	   	  <h5>View Full Profile</h5>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
           <ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p7.jpg" class="img-responsive" alt=""/>
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h4>2458741</h4>
        	   	  <p>29 Yrs, 5Ft 5in Christian</p>
        	   	  <h5>View Full Profile</h5>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
           <ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p8.jpg" class="img-responsive" alt=""/>
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h4>2458741</h4>
        	   	  <p>29 Yrs, 5Ft 5in Christian</p>
        	   	  <h5>View Full Profile</h5>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
       </div>
     </div>  -->
     <div class="clearfix"> </div>
  </div>
</div>
    </div>
<%@include file="footer.jsp"%>
<!-- FlexSlider -->
<link href="css/flexslider.css" rel='stylesheet' type='text/css' />
  <script defer src="js/jquery.flexslider.js"></script>
  <script type="text/javascript">
	$(function(){
	  SyntaxHighlighter.all();
	});
	$(window).load(function(){
	  $('.flexslider').flexslider({
		animation: "slide",
		start: function(slider){
		  $('body').removeClass('loading');
		}
	  });
	});
  </script>
<!-- FlexSlider -->
</body>
</html>	
    
    
<%
    }

%>