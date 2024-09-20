<%-- 
    Document   : index
    Created on : 05-Oct-2023, 8:09:21 pm
    Author     : devro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Relationship Management</title>
        <link href="css/bootstrap.css" rel="stylesheet">
        <script src="js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            
            
            <div class="row">
                <div class="col-sm-4" style=" background-color:lightskyblue; min-height:600px;">
                    <jsp:include page="news.jsp"/>
                </div> 
                <div class="col-sm-8"style=" background-color:pink; min-height:600px;">
                    <h2 style="color:blue;text-align:center;">Registration Form</h2>
                    <form class="form-group" method="post" action="controller.jsp">
                        <table class=" table table-bordered">
                            <input type="hidden" name="page" value="registration" />
                            <tr>
                                <td>Name</td>  
                                <td>
                                    <input type="text" name="name" class="form-control" placeholder="Enter Your Name" required/>
                                </td>
                            </tr>
                            <tr>
                                <td>Gender</td>  
                                <td>
                                    <input type="radio"name="gender" value="Male" class="form-check-input" required>male  
                                    <input type="radio"name="gender" value="Female" class="form-check-input">female
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
                            <td>Password</td>
                            <td>
                                <input type="password" name="password" class="form-control"placeholder="Enter Your Password" required/>  
                            </td>
                            </tr>
                            <tr>
                            <td>Confirm Password</td>
                            <td>
                                <input type="password" name="confirmpassword" class="form-control"placeholder="Enter Your Confirm Password" required />  
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
                </div>
   </div>
            <jsp:include page="footer.jsp"/>      
   </div>
    </body>
</html>
