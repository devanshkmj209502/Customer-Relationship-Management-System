<%-- 
    Document   : controller
    Created on : 10-Oct-2023, 2:04:40?pm
    Author     : devro
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
 
 //Contact Us page backend   
 if(request.getParameter("page").equals("contactus"))
 {
 String name = request.getParameter("name");
 String gender = request.getParameter("gender");
 String address = request.getParameter("address");
 String contactno = request.getParameter("contactno");
 String emailaddress = request.getParameter("emailaddress");
 String enquirytext = request.getParameter("enquirytext");
 DbManager dm = new DbManager();
 String query="insert into enquiry(name,gender,address,contactno,emailaddress,enquirytext,enquirydate) values('"+name+"','"+gender+"','"+address+"','"+contactno+"','"+emailaddress+"','"+enquirytext+"', curdate())";
 boolean res = dm.insertUpdateDelete(query);
 if(res==true)
 {
 out.print("<script>alert('Enquiry is submitted');window.location.href='contactus.jsp';</script>");
 }
 else
 {
 out.print("<script>alert('Enquiry is not submitted');window.location.href='contactus.jsp';</script>");
 }
 }
 //Registration page backend
  else if(request.getParameter("page").equals("registration"))
 {
 String name = request.getParameter("name");
 String gender = request.getParameter("gender");
 String address = request.getParameter("address");
 String contactno = request.getParameter("contactno");
 String emailaddress = request.getParameter("emailaddress");
 String password = request.getParameter("password");
 String confirmpassword = request.getParameter("confirmpassword");
 DbManager dm = new DbManager();
 String query1="insert into customer values('"+name+"','"+gender+"','"+address+"','"+contactno+"','"+emailaddress+"',curdate())";
 String query2="insert into login values('"+contactno+"','"+password+"','customer')";
 boolean res1 = dm.insertUpdateDelete(query1);
 if(res1)
 {
 boolean res2 = dm.insertUpdateDelete(query2);
 if(res2)
 {
     out.print("<script>alert('Registered Sucessfully!');window.location.href='registration.jsp';</script>");
 }
 }
 else
 {
 out.print("<script>alert('Registration Unsucessfully!');window.location.href='registration.jsp';</script>");
 }
 }
 // login page backend
 else if(request.getParameter("page").equals("login"))
 {
 String userid = request.getParameter("userid");
 String password = request.getParameter("password");
 DbManager dm = new DbManager();
 String query3="select * from login where userid='"+userid+"' and password='"+password+"'";
 ResultSet rs = dm.select(query3);
 if(rs.next())
 {
     String usertype = rs.getString("usertype");
     if(usertype.equalsIgnoreCase("customer"))
     {
         session.setAttribute("custid", userid);
         
         response.sendRedirect("customerzone/customerhome.jsp");
     }
     else if(usertype.equalsIgnoreCase("admin"))
     {
         session.setAttribute("adminid", userid);
         
         response.sendRedirect("adminzone/adminhome.jsp"); 
     }
     else
     {
         out.print("<script>alert('Invalid User!');window.location.href='login.jsp';</script>");
     
     }
 }
 
 }

 
%>