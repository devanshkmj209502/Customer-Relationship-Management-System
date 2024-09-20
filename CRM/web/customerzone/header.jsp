<%-- 
    Document   : header
    Created on : 13 Oct, 2023, 8:26:38 PM
    Author     : devans
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
        <link href="../css/bootstrap.css" rel="stylesheet">
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="row">
                <div class="col-sm-2" style=" background-color:white; min-height:80px;">
                    <img src="../images/log.png" height="100%" width="100%">
                </div> 
            <div class="col-sm-10"style=" background-color:lightcoral;min-height:150px;color:black;font-size:60px;text-align:center;line-height:150px;">Customer Relationship</div>
            </div>
                <div class="row">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light">
                        <a class="navbar-brand" href="customerhome.jsp"><img src="../images/log.png"height="40px"width="40px"/></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
          <a class="nav-link" href="products.jsp">Products</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="customerhome.jsp">Wishlist</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="response.jsp">Response</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="changepassword.jsp">Change Password</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout.jsp">Logout</a>
      </li>
    </ul>
    
  </div>
</nav>
                    
                </div>
    </body>
</html>
