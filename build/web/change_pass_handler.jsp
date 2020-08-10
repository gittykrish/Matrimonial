<%-- 
    Document   : change_pass_handler
    Created on : Feb 3, 2020, 4:19:41 PM
    Author     : krishna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*,java.util.*"  %>
<%
String email=null;
Cookie c[]=request.getCookies();
for(int i=0;i<c.length;i++){
    if(c[i].getName().equals("user")){
        email=c[i].getValue();
        break;
    }
}
if(email==null){
    response.sendRedirect("index.jsp");
}else{
    if(request.getParameter("cp")==null|| request.getParameter("np")==null||request.getParameter("rp")==null){
        response.sendRedirect("change_pass.jsp?err=1");
    }else{
        String cp=request.getParameter("cp");
        String np=request.getParameter("np");
        String rp=request.getParameter("rp");
      
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
            Statement st= cn.createStatement();
            ResultSet rs=st.executeQuery("select * from matri where email='"+email+"'");
            if(rs.next()){
             
                if(rs.getString("pass").equals(cp)){
                    if(np.equals(rp)){
                        st.execute("update matri set pass='"+np+"' where email='"+email+"'");
                        response.sendRedirect("change_pass.jsp?succ=1");
                    }else{
                        response.sendRedirect("change_pass.jsp?nperr=1");
                    }
                }else{
                    response.sendRedirect("change_pass.jsp?miscp=1");
                }
            }
            cn.close();
        }catch(Exception e){
        
        }
    }
}

%>