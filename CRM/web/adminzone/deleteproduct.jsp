<%-- 
    Document   : deleteproduct
    Created on : 28 Oct, 2023, 3:08:39 PM
    Author     : devro
--%>
<%@page import="connect.DbManager"%>
<%
   int id=Integer.parseInt(request.getParameter("id"));
   DbManager dm=new DbManager();
   String query="delete from product where id='"+id+"'";
   if(dm.insertUpdateDelete(query)==true)
   {
       out.print("<script>alert('Product is deleted');window.location.href='adminhome.jsp';</script>");
   }
   else
   {
     out.print("<script>alert('Product was not deleted');window.location.href='adminhome.jsp';</script>");
   }
%>
