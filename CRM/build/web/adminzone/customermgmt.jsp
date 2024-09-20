<%-- 
    Document   : customermgmt
    Created on : 17 Oct, 2023, 8:30:59 PM
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
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Management</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container">
            
            <jsp:include page="header.jsp"/>
                <div class="row">
                    <div class="col-sm-12" style="background-color:lightsteelblue;min-height: 600px;">
                        <h2 style="color:blue;text-align: center;">Customer Management</h2>
                        <table class="table table-bordered">
                            <tr>
                                <th>Name</th>
                                
                                <th>Gender</th>
                                
                                <th>Address</th>
                                
                                <th>Contact No.</th>
                                
                                <th>Email Address</th>
                                
                                <th>Registration Date</th>
                                
                                
                            </tr>
                            <%
    
                                  DbManager dm = new DbManager();
                                  String query="select * from customer";
                                  ResultSet rs = dm.select(query);
                                  while(rs.next())
                                  {
                                      
                                  
                                  
                            %>
                            <tr style="color: black">
                                <td><%out.print(rs.getString("name"));%></td>
                                <td><%out.print(rs.getString("gender"));%></td>
                                <td><%out.print(rs.getString("address"));%></td>
                                <td><%out.print(rs.getString("contactno"));%></td>
                                <td><%out.print(rs.getString("emailaddress"));%></td>
                                <td><%out.print(rs.getString("regdate"));%></td>
                                
                            </tr>
                            <%
                                  }
                            %>
                            
                        </table>
                        
                    </div> 
                    
                </div>
              <jsp:include page="footer.jsp"/>
            
        </div>
    </body>
</html>
<%
}
%>