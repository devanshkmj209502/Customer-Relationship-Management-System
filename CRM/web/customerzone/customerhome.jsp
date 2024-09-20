<%-- 
    Document   : customerhome
    Created on : 12 Oct, 2023, 8:15:14 PM
    Author     : devro
--%>

<%

    if (session.getAttribute("custid") == null) {
        response.sendRedirect("../login.jsp");
    } else {


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Zone</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container">          


            <jsp:include page="header.jsp"/>
            <div class="row">
                <div class="col-sm-12" style="background-color: pink;min-height: 600px;">
                    <h2 style="color:blue;text-align:center;">Wishlist</h2>
                    <form class="form-group" method="post" action="custcontroller.jsp">
                        <table class=" table table-bordered">
                            <input type="hidden" name="page" value="wishlist" />
                            <tr>
                                <td>Name</td>  
                                <td>
                                    <input type="text" name="name" class="form-control" placeholder="Enter Your Name" required/>
                                </td>
                            </tr>

                            <tr>
                                <td>Address</td>
                                <td>
                                    <textarea name="address" class="form-control" placeholder="Enter Your Address" required></textarea> 
                                </td>
                            </tr>
                            <tr>
                                <td>Contact No</td>
                                <td>
                                    <input type="number" name="contactno" class="form-control" placeholder="Enter Your Contact No" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}"required/>  
                                </td>
                            </tr>
                            <tr>
                                <td>Email Address</td> 
                                <td>
                                    <input type="email" name="emailaddress" class="form-control" placeholder="Enter Your Email Address" required/> 
                                </td>
                            </tr>
                            <tr>
                                <td>Product Name</td>
                                <td>
                                    <input type="text" name="productname" class="form-control"placeholder="Enter Product Name" required/>  
                                </td>
                            </tr>
                            <tr>
                                <td>Quantity</td>
                                <td>
                                    <input type="number" name="qty" class="form-control"placeholder="Enter Quantity"  />  
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success">Submit</button>  
                                </td>
                            </tr>
                        </table>
                    </form>
                    <div style="background-color:pink; min-height: 200px; text-align:center">
                        <h1 style="font-style:italic"><u>Payment<u></h1>
                                    <img src="../images/pay.png">
                              <br>
                              <a href="../images/payment.jpg">"Google Pay"</a>
                                    </div> 
                                    </div>
                                                    <jsp:include page="footer.jsp"/>
                                                    </div>

                                                    </div>
                                                    </body>
                                                    </html>
                                                    <%    }

                                                    %>