<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Product</title>
        <link type="text/css" rel="stylesheet" href="AddProduct.css">
    </head>
    <body>
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
            <div class="heading"><u>ADD A NEW PRODUCT</u><br><P style="font-size: large;font-style: italic;">Welcome Admin!</P></div>
            <div class="form">
            <form action="product" method="post">
                <div class="pid">
                    <label>Product ID</label><br/><input type="text" required name="pid" placeholder="Enter Product ID"/>
                </div>
                <div class="pname">
                    <label>Product Name</label><br/><input type="text" required name="pname" placeholder="Enter Product Name"/>
                </div>
                <div class="pdesc">
                    <label>Product Description</label><br/><input type="text" required name="pdesc" placeholder="Enter Product Description"/>
                </div>
                <div class="pprice">
                    <label>Product Price</label><br/><input type="text" required name="pprice" placeholder="Enter Product Price"/>
                </div>
                <div class="pimg">
                    <label>Product Image</label><br/><input type="text" required name="pimg" placeholder="Enter Product Image"/>
                </div>
                <div class="submit">
                    <input type="submit">
                </div>
            </form>
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