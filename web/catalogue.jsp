<%-- 
    Document   : catalogue
    Created on : 25/05/2020, 12:44:43 PM
    Author     : mscov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="mypack.UserBean" scope="session"/>
<jsp:setProperty name="user" property="*"/>

<% 
    String bar1 = "Login";
    String bar2 = "Register";
    String logUser = "Welcome!";
    if (user.isValid()) {
        bar1 = "My Account";
        bar2 = "Logout";
        logUser = "Welcome, " + user.getFirstName() + "!";
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <title>IoTBay</title>
        <link href="css/style.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <jsp:include page="/header.jsp"/>
        
        <div class="container">
            <div class="row">
                <div class="col">

                    <h1>Catalogue</h1>
                    <ul>
                        <li><a href="product.jsp">Product one</a></li>
                        <li><a href="product.jsp">Product two</a></li>
                        <li><a href="product.jsp">Product three</a></li>
                    </ul>        

                </div>
            </div>
        </div>
        
    </body>
    <jsp:include page="/footer.jsp"/>
</html>
