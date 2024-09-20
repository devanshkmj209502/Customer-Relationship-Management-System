<%-- 
    Document   : admincontroller
    Created on : 19 Oct, 2023, 8:08:57 PM
    Author     : devro
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>

<%
    if(session.getAttribute("adminid")== null)
{
    response.sendRedirect("../login.jsp");
}
else
{
    String adminid = (String)session.getAttribute("adminid");
 
 if(request.getParameter("page").equals("changepassword"))
 {
 String oldpassword=request.getParameter("oldpassword");
 String newpassword=request.getParameter("newpassword");
 String confirmpassword=request.getParameter("confirmpassword");
 String userid=session.getAttribute("adminid").toString();
 if(newpassword.equals(confirmpassword))
 {
 DbManager dm=new DbManager();
 String query="update login set password='"+newpassword+"' where userid='"+userid+"' and password='"+oldpassword+"'";
 if(dm.insertUpdateDelete(query)==true)
 {
     
 out.print("<script>alert('Password changes sucessfully!');window.location.href='logout.jsp';</script>");
 
 response.sendRedirect("logout.jsp");
 }
 else
 {
 out.print("<script>alert('Old Password is not matched');window.location.href='changepassword.jsp';</script>");
 }
 }
 else
 {
 out.print("<script>alert('New Password and Confirm Password are not matched');window.location.href='changepassword.jsp';</script>");
 }
 }
 
 //adminhome
 else if(request.getParameter("page").equals("adminhome"))
 {
 String newstext=request.getParameter("newstext");
 String userid=session.getAttribute("adminid").toString();
 
 DbManager dm=new DbManager();
 String query1="insert into news(newstext,posteddate) values('"+newstext+"',curdate()) ";
 if(dm.insertUpdateDelete(query1))
 {
 out.print("<script>alert('News is Added!');window.location.href='adminhome.jsp';</script>");
 }
 else
 {
     out.print("<script>alert('News is Not Added!');window.location.href='adminhome.jsp';</script>");
 }
 }
 

 
 
 
 }
%>
