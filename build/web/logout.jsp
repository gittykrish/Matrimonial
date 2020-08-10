<%-- 
    Document   : logout
    Created on : Feb 4, 2020, 12:04:06 AM
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
        Cookie ck= new Cookie("user","");
        ck.setMaxAge(0);
        response.addCookie(ck);
        response.sendRedirect("index.jsp");
    }
%>