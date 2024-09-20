<%-- 
    Document   : deletecomplaint
    Created on : 19 Oct, 2023, 9:21:23 PM
    Author     : devro
--%>

<%@page import="connect.DbManager"%>
<%
   int id=Integer.parseInt(request.getParameter("id"));
   DbManager dm=new DbManager();
   String query="delete from response where id='"+id+"'";
   if(dm.insertUpdateDelete(query)==true)
   {
       out.print("<script>alert('Complaint is deleted');window.location.href='complaint.jsp';</script>");
   }
   else
   {
     out.print("<script>alert('Complaint is not deleted');window.location.href='complaint.jsp';</script>");
   }
%>