<%-- 
    Document   : deleteenquiry
    Created on : 19 Oct, 2023, 9:16:44 PM
    Author     : devro
--%>

<%@page import="connect.DbManager"%>
<%
   int id=Integer.parseInt(request.getParameter("id"));
   DbManager dm=new DbManager();
   String query="delete from enquiry where id='"+id+"'";
   if(dm.insertUpdateDelete(query)==true)
   {
       out.print("<script>alert('Enquiry is deleted');window.location.href='enquirymgmt.jsp';</script>");
   }
   else
   {
     out.print("<script>alert('Enquiry is not deleted');window.location.href='enquirymgmt.jsp';</script>");
   }
%>