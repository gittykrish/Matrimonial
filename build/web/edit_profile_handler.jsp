<%-- 
    Document   : edit_profile_handler
    Created on : Feb 3, 2020, 10:08:10 PM
    Author     : krishna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*,java.util.*"%>
<%
    String email=null;
    Cookie c[]= request.getCookies();
    for(int i=0;i<c.length;i++){
        if(c[i].getName().equals("user")){
            email=c[i].getValue();
            break;
        }
    }
    if(email==null){
        response.sendRedirect("index.jsp");
    }else{
        if(request.getParameter("name")==null||request.getParameter("mob")==null||request.getParameter("dob")==null||request.getParameter("caste")==null||request.getParameter("education")==null||request.getParameter("status")==null||request.getParameter("occupation")==null||request.getParameter("state")==null||request.getParameter("city")==null||request.getParameter("lang")==null||request.getParameter("religion")==null){
         
           
           // response.sendRedirect("edit_profile.jsp?err=1");
        }else{
            String name=request.getParameter("name");
            String mob=request.getParameter("mob");
            String dob=request.getParameter("dob");
            String religion=request.getParameter("religion");
            String lang=request.getParameter("lang");
            String caste=request.getParameter("caste");
            String education=request.getParameter("education");
            String status=request.getParameter("status");
            String occuption=request.getParameter("occupation");
            String state=request.getParameter("state");
            String city=request.getParameter("city");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
                PreparedStatement ps= cn.prepareStatement("update matri set name=?,mob=?,dob=?,religion=?,lang=?,caste=?,education=?,status=?,occupation=?,state=?,city=? where email=?");
                ps.setString(1,name);
                ps.setString(2,mob);
                ps.setString(3,dob);
                ps.setString(4,religion);
                ps.setString(5,lang);
                ps.setString(6,caste);
                ps.setString(7,education);
                ps.setString(8,status);
                ps.setString(9,occuption);
                ps.setString(10,state);
                ps.setString(11,city);
                ps.setString(12,email);
                
                
                ps.execute();
                
                response.sendRedirect("view_profile.jsp");
                    
                cn.close();
            
            }catch(Exception e){
               out.println(e.getMessage());
            }
        }
        
    }
%>