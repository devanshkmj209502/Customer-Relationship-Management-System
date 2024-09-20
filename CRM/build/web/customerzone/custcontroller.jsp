<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    if(request.getParameter("page").equals("changepassword"))
    {
        String oldpassword=request.getParameter("oldpassword");
        String newpassword=request.getParameter("newpassword");
        String confirmpassword=request.getParameter("confirmpassword");
        String userid=session.getAttribute("custid").toString();
        if(newpassword.equals(confirmpassword))
        {
            DbManager dm=new DbManager();
            String query="update login set password='"+newpassword+"' where userid='"+userid+"' and password='"+oldpassword+"'";
            if(dm.insertUpdateDelete(query)==true)
            {
                response.sendRedirect("logout.jsp");
            }
            else
            {
                out.print("<script>alert('Oldpassword is not matched');window.location.href='changepassword.jsp';</script>");
            }
        }
        else
        {
            out.print("<script>alert('Newpassword and confirmpassword are not matched');window.location.href='changepassword.jsp';</script>");
        }
    }
    else if(request.getParameter("page").equals("response"))
    {
        String responsetype=request.getParameter("responsetype");
        String subject=request.getParameter("subject");
        String responsetext=request.getParameter("responsetext");
        String custid=session.getAttribute("custid").toString();
        DbManager dm=new DbManager();
        String query="select * from customer where contactno='"+custid+"'";
        ResultSet rs=dm.select(query);
        if(rs.next())
        {
            String name=rs.getString("name");
            String contactno=rs.getString("contactno");
            String emailaddress=rs.getString("emailaddress");
            query="insert into response(name, contactno, emailaddress, responsetype, subject, responsetext, responsedate) values('"+name+"', '"+contactno+"', '"+emailaddress+"', '"+responsetype+"', '"+subject+"', '"+responsetext+"', curdate())";
            boolean res=dm.insertUpdateDelete(query);
            if(res==true)
            {
                out.print("<script>alert('Response is saved');window.location.href='response.jsp';</script>");
            }
            else
            {
                out.print("<script>alert('Response is not saved');window.location.href='response.jsp';</script>");
            }
        }
        
    }
    else if(request.getParameter("page").equals("wishlist"))
 {
 String name = request.getParameter("name");
 String address = request.getParameter("address");
 String contactno = request.getParameter("contactno");
 String emailaddress = request.getParameter("emailaddress");
 String productname = request.getParameter("productname");
 String qty = request.getParameter("qty");
 DbManager dm = new DbManager();
 String query1="insert into wishlist values('"+name+"','"+address+"','"+contactno+"','"+emailaddress+"','"+productname+"','"+qty+"',curdate())";
 boolean res1 = dm.insertUpdateDelete(query1);
 if(res1)
 {

 {
     out.print("<script>alert('Order Confirm Successfully!');window.location.href='customerhome.jsp';</script>");
 }
 }
 else
 {
 out.print("<script>alert('Order Not Confirm Sucessfully!!');window.location.href='customerhome.jsp';</script>");
 }
 }
        
%>