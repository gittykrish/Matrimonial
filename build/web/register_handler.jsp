<%-- 
    Document   : register_handler
    Created on : Feb 3, 2020, 11:15:47 PM
    Author     : krishna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
        if(request.getParameter("name")==null||request.getParameter("email")==null||request.getParameter("pass")==null||request.getParameter("mob")==null||request.getParameter("gender")==null||request.getParameter("caste")==null||request.getParameter("education")==null||request.getParameter("status")==null||request.getParameter("occupation")==null||request.getParameter("state")==null||request.getParameter("city")==null||request.getParameter("lang")==null||request.getParameter("religion")==null){
           
            response.sendRedirect("register.jsp?err=1");
        }else{
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String pass=request.getParameter("pass");
            String mob=request.getParameter("mob");
            String gender= request.getParameter("gender");
            String dob=request.getParameter("dob");
            String religion=request.getParameter("religion");
            String lang=request.getParameter("lang");
            String caste=request.getParameter("caste");
            String education=request.getParameter("education");
            String status=request.getParameter("status");
            String occupation=request.getParameter("occupation");
            String state=request.getParameter("state");
            String city=request.getParameter("city");
            int sn=0;
            
              String code="";
               LinkedList l= new LinkedList();
               for(int i=0;i<=9;i++){
                    l.add(""+i);
                }
                for(char i='A'; i<='Z';i++){
                   l.add(""+i);   
                }                  
                for(char i='a';i<='z';i++){
                    l.add(""+i);
                }
                Collections.shuffle(l);
                for(int i=0;i<6;i++){
                 code=code+l.get(i);   
                }
                
               
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
                Statement st= cn.createStatement();
                ResultSet rs= st.executeQuery("select MAX(sn) from matri");
               
                if(rs.next()){
                    sn= rs.getInt(1);
                   
                }
                sn++;
                code= code+"_"+sn;
                
                PreparedStatement ps= cn.prepareStatement("insert into matri(sn,code,email,pass,name,mob,gender,dob,religion,lang,caste,education,status,occupation,state,city) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
               
                ps.setInt(1,sn);
                ps.setString(2,code);
                ps.setString(3,email);
                ps.setString(4,pass);
                ps.setString(5,name);
                ps.setString(6,mob);
                ps.setString(7,gender);
                ps.setString(8,dob);
                ps.setString(9,religion);
                ps.setString(10,lang);
                ps.setString(11,caste);
                ps.setString(12,education);
                ps.setString(13,status);
                ps.setString(14,occupation);
                ps.setString(15,state);
                ps.setString(16,city);
                
                
                ps.execute();
                
                response.sendRedirect("login.jsp");
                cn.close();
            
            }catch(Exception e){
                out.println(e.getMessage());
            }
        }
        
    
%>