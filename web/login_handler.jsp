<%-- 
    Document   : login_handler
    Created on : Feb 1, 2020, 10:01:05 PM
    Author     : krishna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="java.sql.* ,java.util.*" %>
<%
    if(request.getParameter("email")==null || request.getParameter("pass")==null){
        response.sendRedirect("login.jsp.jsp?err=1");
    }else{
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
        
        try{
           
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
            Statement st=cn.createStatement();
          
            ResultSet rs=st.executeQuery("select * from matri where email='"+email+"'");
              out.println(email);
            
            if(rs.next()){
                
                if(rs.getString("pass").equals(pass)){
                    Cookie c=new Cookie("user",email);
                    c.setMaxAge(600);
                    response.addCookie(c);
                    
                
                    response.sendRedirect("view_profile.jsp");
                }else{
                    response.sendRedirect("login.jsp?perr=1");
                }
                
            }else{
                response.sendRedirect("login.jsp?invalidId=1");
            }
            cn.close();
        }catch(Exception e){
            out.println(e.getMessage());
        }
    }

 
%>
