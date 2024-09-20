<%-- 
    Document   : index
    Created on : 05-Oct-2023, 8:09:21 pm
    Author     : devan
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
                <div class="col-sm-4" style=" background-color:lightskyblue; min-height:600px;"><jsp:include page="news.jsp"/>  </div> 
                <div class="col-sm-8"style=" background-color:pink; min-height:600px;">
                    <div class="row">
                        <p style="text-align:center;font-style:italic; font-size:40px;">
                            <b> “The body is like a piano, and happiness is like music. It is needful to have the instrument in good order.” – Henry Ward Beecher</b>
                        </p>
                    </div>
                    <div class="row">
                        <p style="text-align:left;font-style:italic; font-size:35px;">
                            <b><u>Who we are </u></b>       
                        </p> 
                        <p style="text-align:left;font-style:italic; font-size:30px;">
                            CRM tools help you manage customer relationships across the entire customer lifecycle, at every marketing, sales, e-commerce, and customer service  interaction since 1988.
                        </p>
                    </div>
                    <div class="row">
                        <p style="text-align:left;font-style:italic; font-size:30px;">
                            <b> <u>Social Handle:<u></b>
                                        </p>    
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-sm-4"style="background-color:pink; min-height: 200px; text-align:center">
                                                <img src="images/facebook.png">
                                                <br>
                                                <a href="https://www.facebook.com/devansh.gangwar.167?mibextid=ZbWKwL">"https://www.facebook.com"</a>
                                            </div>
                                            <div class="col-sm-4"style="background-color:pink; min-height: 200px; text-align:center">
                                                <img src="images/instagram.png">
                                                <br>
                                                <a href="https://instagram.com/rehan.firoz?igshid=OGQ5ZDc2ODk2ZA==">"https://instagram.com"</a>
                                            </div>
                                            <div class="col-sm-4"style="background-color:pink; min-height: 200px; text-align:center">
                                                <img src="images/link.png">
                                                <br>
                                                <a href="https://www.linkedin.com/in/devansh-gangwar-51a707241?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app">"https://www.linkedin.com</a> 
                                            </div>
                                        </div>

                                        </div>
                                        </div>
                                        <jsp:include page="footer.jsp"/>      
                                        </div>
                                        </body>
                                        </html>
