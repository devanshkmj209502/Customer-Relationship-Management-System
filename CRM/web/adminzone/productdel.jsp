<%-- 
    Document   : enquirymgmt
    Created on : 17 Oct, 2023, 8:47:53 PM
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
        <title>Enquiry Management</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container">
            
            <jsp:include page="header.jsp"/>
                <div class="row">
                    <div class="col-sm-12" style="background-color:lightsteelblue;min-height: 600px;">
                        <h2 style="color:blue;text-align: center;">Enquiry Management</h2>
                        <table class="table table-bordered">
                            <tr>
                                <th>ID</th>
                                
                                <th>Product Name</th>
                                
                                <th>Mfg Date</th>
                                
                                <th>Exp Date</th>
                                
                                <th>Qty.</th>
                                
                                <th>Price Per Unit</th>
                                                                                                
                                <th>Product Image</th>    
                                <th>Delete Product</th>
                            </tr>
                            <%
    
                                  DbManager dm = new DbManager();
                                  String query="select * from product;";
                                  ResultSet rs = dm.select(query);
                                  while(rs.next())
                                  {
                                      
                                  
                                  
                            %>
                            <tr>
                                <td><%out.print(rs.getString("id"));%></td>
                                <td><%out.print(rs.getString("pname"));%></td>
                                <td><%out.print(rs.getString("mfgdate"));%></td>
                                <td><%out.print(rs.getString("expdate"));%></td>
                                <td><%out.print(rs.getString("qty"));%></td>
                                <td><%out.print(rs.getString("priceperunit"));%></td>
                                <td><%out.print(rs.getString("productimage"));%></td>
                                <td>
                                     <a href="deleteproduct.jsp?id=<%=rs.getInt("id")%>">
                                        <button type="button" class="btn btn-outline-danger">Delete</button>
                                     </a>
                                </td>

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