<%--
    Document   : search
    Created on : Feb 4, 2020, 5:31:04 PM
    Author     : krishna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*,java.util.*" %>
<%
   String email="";
    Cookie c[]=request.getCookies();
    for(int i=0;i<c.length;i++){
     if(c[i].getName().equals("user")){
         email=c[i].getValue();
     }   
    }
    if(email==null){
        response.sendRedirect("index.jsp");
    }else{
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
            Statement st= cn.createStatement();
            
      %>


<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Marital an Wedding Category Flat Bootstarp Resposive Website Template | Search :: w3layouts</title>
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
        <li class="current-page">Regular Search</li>
     </ul>
   </div>
   <!--<script type="text/javascript">
    $(function () {
     $('#btnRadio').click(function () {
          var checkedradio = $('[name="gr"]:radio:checked').val();
          $("#sel").html("Selected Value: " + checkedradio);
      });
    });
   </script>-->
<div class="col-md-9 search_left">
  <form action="" method="post">	
   <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Gender : <span class="form-required" title="This field is required.">*</span></label>
	<div class="col-sm-7 form_radios">
		<input type="radio" class="radio_1" value="male" name="gender"/> Male &nbsp;&nbsp;
		<input type="radio" class="radio_1" name="gender" value="female"/> Female
		
		<!--<hr />
		<p id="sel"></p><br />
		<input id="btnRadio" type="button" value="Get Selected Value" />-->
	</div>
	<div class="clearfix"> </div>
  </div>
     
  <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Marital Status : </label>
	<div class="col-sm-7 form_radios">
		<input type="checkbox" class="radio_1" value="Single" name="single" /> Single &nbsp;&nbsp;
		<input type="checkbox" class="radio_1"  value="Divorced" name="divorced"/> Divorced &nbsp;&nbsp;
		<input type="checkbox" class="radio_1" value="Widowed" name="widowed" /> Widowed &nbsp;&nbsp;
		<input type="checkbox" class="radio_1" value="Separated" name="seprarated" /> Separated &nbsp;&nbsp;
		
	</div>
	<div class="clearfix"> </div>
</div>
    
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">District / City : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="city">
            <option value="">select city</option>
            <%
                ResultSet rs=st.executeQuery("select DISTINCT city from matri");
                while(rs.next()){
                    %>
                    <option value="<%=rs.getString("city")%>"><%=rs.getString("city")%></option>
                    <%
                                      }
            %>
              
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">State : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="state">
            <option value="">select State</option>
              <%
                 rs=st.executeQuery("select DISTINCT state from matri");
                while(rs.next()){
                    %>
                    <option value="<%=rs.getString("state")%>"><%=rs.getString("state")%></option>
                    <%
                                      }
            %>
           
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div> 
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Religion : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="religion">
            <option value="">select religion</option>
            <%
                 rs=st.executeQuery("select DISTINCT religion from matri");
                while(rs.next()){
                    %>
                    <option value="<%=rs.getString("religion")%>"><%=rs.getString("religion")%></option>
                    <%
                                      }
            %> 
            
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
            <option value="">Select Mother Tongue </option>
            <%
                 rs=st.executeQuery("select DISTINCT lang from matri");
                while(rs.next()){
                    %>
                    <option value="<%=rs.getString("lang")%>"><%=rs.getString("lang")%></option>
                    <%
                                      }
            %>
            
            
        </select>
          
    <div class="input-group1">
      <input type="submit" name="submit" value="Submit">
      </div>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
      <!--
  <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Show Profile : </label>
	<div class="col-sm-7 form_radios">
		<input type="checkbox" class="radio_1" /> with Photo &nbsp;&nbsp;
		<input type="checkbox" class="radio_1" checked="checked" /> with Horoscope
	</div>
	<div class="clearfix"> </div>
  </div>
  <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Don't Show : </label>
	<div class="col-sm-7 form_radios">
		<input type="checkbox" class="radio_1" /> Ignored Profiles &nbsp;&nbsp;
		<input type="checkbox" class="radio_1" checked="checked" /> Profiles already Contacted
	</div>
	<div class="clearfix"> </div>
  </div>  -->
<!--  <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Age : </label>
	<div class="col-sm-7 form_radios">
	  <div class="col-sm-5 input-group1">
        <input class="form-control has-dark-background" name="28" id="slider-name" placeholder="28" type="text" required="">
      </div>
      <div class="col-sm-5 input-group1">
        <input class="form-control has-dark-background" name="40" id="slider-name" placeholder="40" type="text" required="">
      </div>
      <div class="clearfix"> </div>
	</div>
      
	<div class="clearfix"> </div>
  </div> -->
<%
       }catch(Exception e){
            
        }
        %>
  </form>
<%
  if(request.getParameter("submit")!=null){
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
        Statement st= cn.createStatement();
        String str="";
        String ptr="";
         if(request.getParameter("gender")!=null){
              str="gender='"+request.getParameter("gender")+"'";
              ptr="AND";
          }
             if(request.getParameter("single")!=null){
                 str=str+" "+ptr+" status='"+request.getParameter("single")+"'";
                 ptr="OR";
              }
            if(request.getParameter("divorced")!=null){
                 str=str+" "+ptr+" status='"+request.getParameter("divorced")+"'";
                 ptr="OR";
              }
            if(request.getParameter("widowed")!=null){
                 str=str+" "+ptr+" status='"+request.getParameter("widowed")+"'";
                 ptr="OR";
              }
        if(request.getParameter("separated")!=null){
                 str=str+" "+ptr+" status='"+request.getParameter("separated")+"'";
                 ptr="OR";
              }
        ptr="AND";
        
        if(request.getParameter("city").length()>0){
                 str=str+" "+ptr+" city='"+request.getParameter("city")+"'";
                 
              }
        if(request.getParameter("state").length()>0){
                 str=str+" "+ptr+" state='"+request.getParameter("state")+"'";
                 
              }
        if(request.getParameter("religion").length()>0){
                 str=str+" "+ptr+" religion='"+request.getParameter("religion")+"'";
                 
              }
        if(request.getParameter("lang").length()>0){
                 str=str+" "+ptr+" lang='"+request.getParameter("lang")+"'";
                 
              }
        ResultSet rs=st.executeQuery("select * from matri where "+str);
         int i=0;
         while(rs.next()){
             i++;
  %>
  
<div class="row">
 <div class="col-md-9 profile_left1">
  	       <div class="profile_top"><a href="show_profile.jsp?id=<%=rs.getString("code")%>">

      <h2><%=i%>&nbsp;&nbsp;<%=rs.getString("name") %></h2>
	    <div class="col-sm-4 profile_left-top">
	    	<img src="images/p13.jpg" class="img-responsive" alt=""/>
	    </div> 
               </a>
        <!--
	    <div class="col-sm-3">
	      <ul class="login_details1">
			 <li>Last Login : 5 days ago</li>
			 <li><p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor." More....</p></li>
		  </ul>
	    </div>  -->
	    <div class="col-sm-8">
	    	<table class="table_working_hours">
	        	<tbody>
	        		<tr class="opened_1">
						<td class="day_label1">Age / Height :</td>
						<td class="day_value">28, 5ft 5in / 163cm</td>
					</tr>
				    <tr class="opened">
						<td class="day_label1">Last Login :</td>
						<td class="day_value">4 hours ago</td>
					</tr>
				    <tr class="opened">
						<td class="day_label1">Religion :</td>
						<td class="day_value"><%=rs.getString("religion")%></td>
					</tr>
				    <tr class="opened">
						<td class="day_label1">Marital Status :</td>
                                                <td class="day_value"><%=rs.getString("status") %></td>
					</tr>
				    <tr class="opened">
						<td class="day_label1">Location :</td>
						<td class="day_value">India</td>
					</tr>
				    <tr class="closed">
						<td class="day_label1">Gender :</td>
                                                <td class="day_value closed"><span><%=rs.getString("gender") %></span></td>
					</tr>
				    <tr class="closed">
						<td class="day_label1">Education :</td>
                                                <td class="day_value closed"><span><%=rs.getString("education") %></span></td>
					</tr>
			    </tbody>
		   </table>
            
		   <a href="mail.jsp?id=<%=rs.getString("code")%>">
               <input type="button" class="btn btn-primary" name="send_mail" value="Send Mail"></a>
            <a href="shortlist.jsp?id=<%=rs.getString("code")%>">
                <div class="btn btn-primary">Shortlisted</div></a>
           
            <a href="interest.jsp?id=<%=rs.getString("code")%>">
                <div class="btn btn-primary">Send Interest</div></a>
                
		   
	    </div>
	    <div class="clearfix"> </div>
    </div>
      </div> 
        </div>
<%
       }
         }catch(Exception e){
         out.println(e.getMessage());
         }
  }    

%>
    
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
    </div></div></div>
</body>
</html>	
<%
 
    }
    
%>