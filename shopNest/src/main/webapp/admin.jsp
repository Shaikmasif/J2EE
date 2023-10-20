<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.shopNest.dbHandler.DataFetcher"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin-User Info Page</title>
        <link type="text/css" rel="stylesheet" href="AdminStyle.css">
    </head>
    <body>
    <%List ulist=DataFetcher.fetchUserInfo(); %>
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
            <div class="heading"><u>USER INFORMATION</u><br><P style="font-size: large;font-style: italic;">Welcome Admin!</P></div>
            <div class="table">
            <table>
            <thead><tr>
                <th>NAME</th>
                <th>EMAIL</th>
                <th>GENDER</th>
                <th>ADDRESS</th></tr></thead>
            <tbody>
            <%for(int i=0;i<ulist.size();i++){
            	String custArr[]=((String)ulist.get(i)).split(":");
    				if(custArr[0].equalsIgnoreCase("admin")){
    					continue;
    				}
            	%>
   
                <tr><td><%=custArr[0] %></td>
                <td><%=custArr[1] %></td>
                <td><%=custArr[2] %></td>
                <td><%=custArr[3] %></td></tr>
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