<%-- 
    Document   : deletewishlist
    Created on : 27 Nov, 2023, 3:04:34 PM
    Author     : devan
--%>

<%@page import="connect.DbManager"%>
<%
   String name=request.getParameter("name");
   DbManager dm=new DbManager();
   String query="delete from wishlist where name='"+name+"'";
   if(dm.insertUpdateDelete(query)==true)
   {
       out.print("<script>alert('cofirm order is deleted');window.location.href='Wishlist.jsp';</script>");
   }
   else
   {
     out.print("<script>alert('confirm order is not deleted');window.location.href='Wishlist.jsp';</script>");
   }
%>