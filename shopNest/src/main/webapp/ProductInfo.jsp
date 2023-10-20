<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@page import="com.shopNest.dbHandler.DataFetcher"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.shopNest.dbHandler.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Product Info Page</title>
        <link type="text/css" rel="stylesheet" href="ProductInfo.css">
    </head>
    <body>
		<%List prodList=DataFetcher.fetchProductsInfo(); %>
        <div>
        <div>
        <div class="title-bar"><h1>ShopNest</h1></div>
        </div>
        <div class="combine">
            <div>
                <div class="button-bar">
                    <button id="button1">View Customers Info</button>
                    <button id="button2">View Products Info</button>
                    <button id="button3">Add New Product</button>
                </div>
            </div>
       <div class="out-container">
        <div class="container">
            <div class="heading"><u>PRODUCT INFORMATION</u><br><P style="font-size: large;font-style: italic;">Welcome Admin!</P></div>
            <div class="table">
                <table>
                <thead><tr>
                    <th>PRODUCT ID</th>
                    <th>PRODUCT NAME</th>
                    <th>PRODUCT DESCRIPTION</th>
                    <th>PRODUCT PRICE</th>
                    <th>PRODUCT IMAGE</th></tr></thead>
                <tbody>
                <%for(int i=0;i<prodList.size();i++){
                	String prodArr[]=((String)prodList.get(i)).split(":");
                	%>
                    <tr><td><%=prodArr[0] %></td>
                    <td><%=prodArr[1] %></td>
                    <td><%=prodArr[2] %></td>
                    <td><%=prodArr[3] %></td>
                    <td><img src="productImages/<%=prodArr[4] %>"></td></tr>
                    <%} %>
                </tbody>
                </table>
                </div>
            </div>
            </div>
            <div class="footer-container">
            <footer class="footer">@copyright2023</footer>
            </div>
        </div>
        </div>
        
        </div>
        
        </div>
        
        <script>
            const button1=document.getElementById("button1");
            const button2=document.getElementById("button2");
            const button3=document.getElementById("button3");
            button1.addEventListener("click",function(){window.location.href="admin.jsp";});
            button2.addEventListener("click",function(){window.location.href="ProductInfo.jsp";});
            button3.addEventListener("click",function(){window.location.href="AddProduct.jsp";});
        </script>
    </body>
</html>