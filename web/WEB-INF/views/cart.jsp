<%-- 
    Document   : cart
    Created on : 26/05/2020, 6:03:33 PM
    Author     : mscov
--%>

<%@page import="uts.isd.model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
    //Cart Handling
    Cart cart = (Cart) session.getAttribute("cart");
    
%>

<jsp:include page="/header.jsp"/> 
            
<div class="container mt-4">
    <div class="row">
        <div class="col-12">
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col"> </th>
                            <th scope="col">Product</th>
                            <th scope="col">Available</th>
                            <th scope="col" class="text-center">Quantity</th>
                            <th scope="col" class="text-right">Price</th>
                            <th> </th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Loop through each item in the cart -->
                        <% for (CartItem cartItem : cart.getItems()) { %>
                        <form method="post" action="cart">
                            <input type="hidden" name="cartItemID" value="<%= cartItem.getItemID() %>">
                            <tr>
                                <td></td>
                                <td><%= cartItem.getProductID() %></td>
                                <td>In stock</td>
                                <td><input class="form-control" type="text" name="quantity" value="<%= cartItem.getQuantity() %> " /></td>
                                <td class="text-right">$ <%= cartItem.getPrice() %> </td>
                                <td class="text-right"><button class="btn btn-sm btn-info" type="submit" name="action" value="update"><i class="fa fa-save"></i> </button> </td>
                                <td class="text-right"><button class="btn btn-sm btn-danger" type="submit" name="action" value="remove"><i class="fa fa-trash"></i> </button> </td>
                            </tr>
                        </form>
                        <% } %>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>Sub-Total</td>
                            <td class="text-right">$</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>Shipping</td>
                            <td class="text-right">$</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><strong>Total</strong></td>
                            <td class="text-right"><strong>$ <%= cart.getCartTotal() %> </strong></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col-12">
            <div class="row">
                <div class="col-sm-12  col-md-6">
                    <form action="cart" method="post">
                        <button class="btn btn-lg btn-block btn-secondary text-uppercase" type="submit" name="action" value="continue">Continue Shopping</button>
                    </form>
                </div>
                <div class="col-sm-12 col-md-6 text-right">
                    <form action="checkout" method="post">
                        <button class="btn btn-lg btn-block btn-success text-uppercase" type="submit" name="action" value="checkout">Checkout</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>    

<jsp:include page="/footer.jsp"/> 

