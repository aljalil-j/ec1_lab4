

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>SP Cart</title>
    <style>
        .cartItem{
            display: block;
        }
        .cartItem p, .cartItem  button{
            display: inline;
        }
        .cartItem p{
            margin-right: 20px;
        }
        .title{
            margin-bottom: 10px;
        }
         #nav
        {
            margin:0px
        }
        #nav ul
        {
            padding:0;
            list-style:none;
        }
        #nav ul li 
        {
            float:left;
            text-align: center;
            width: 120px;
            margin: 1px;
        }
        #nav ul li a
        {
            color:aliceblue;
            text-decoration:solid;
            font-family:'Agency FB';
            background:#a56d79;
            display:block;
            padding:10px;
        }
        #nav ul li a:hover
        {
            background:#808080;
            color:antiquewhite;
        }
        #nav ul li ul
        {
            display:none;
        }
        #nav ul li:hover ul
        {
            display:block;
        }

        .auto-style3 {
            width: 75px;
            height: 40px;
        }

        .button {
  background-color: #4CAF50; 
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}



.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

        .auto-style4 {
            width: 148px;
            height: 86px;
        }

    </style>
    <script>


</script>
</head>

<body>

    <div align="center" style="background-color: transparent; background-image: url(Images/backgroundi.jpg);">
  
        &nbsp;<img alt="cart" class="auto-style4" src="IMG/cart.png" /></div>

     <div>
            <asp:Label ID="LblWelcome" runat="server" Text="Welcome" Font-Bold="True" Font-Italic="True" Font-Names="Berlin Sans FB" Font-Size="Larger" ForeColor="#CC3399"></asp:Label>
            &nbsp;<asp:Label ID="LblName" runat="server" Text="Guest " Font-Bold="True" Font-Italic="True" Font-Names="Berlin Sans FB" Font-Size="Larger" ForeColor="#CC3399"></asp:Label>
      
        </div>
      <div style="background-image:url(Images/bk3.jpg)" >

     <div id="nav" align="center">
        <ul>
            <li> <a href="Home.aspx"> Home </a> </li>
          <li> <a href="Products.aspx"> Products</a>
                
            </li>
            <li> <a href="ContactUS.html">Contact Us</a></li>
            <li> <a href="Register.aspx">Register</a></li>
             <li> <a href="AboutUs.Html">About Us</a></li>
          <li class="auto-style3"> <a href="Cart.aspx">&nbsp;</a></li>
        </ul>

        
    </div>
    <br />
    <br />

   

    <h1 style="font-family: 'Berlin Sans FB'; font-size: xx-large; color: #993399">Cart</h1>

    <div id="Items">
    </div>
    

   

    <button onclick="clearAll()" class="button button2">
        Clear All</button>
 

   
    <div id="cartItems">
    </div>
    <h2 id="subtotal"></h2>
    </div>
     <footer>  <small>&copy; Copyright 2019, Soccer Pro Corporation</small>  </footer>
</body>

<script>

    populateCart();

    function addToCart(price, name) {
        let products = [];
        if (localStorage.getItem('products')) {
            products = JSON.parse(localStorage.getItem('products'));
        }
        products.push({ 'productId': products.length + 1, 'price': price, 'name': name });
        localStorage.setItem('products', JSON.stringify(products));
        populateCart();
    }


    function logAllProducts() {
        let products = [];
        if (localStorage.getItem('products')) {
            products = JSON.parse(localStorage.getItem('products'));
        }
        console.log(products);
    }

    function clearAll() {
        localStorage.setItem('products', JSON.stringify([]));
        populateCart();
    }

    function removeProduct(productId) {
        let storageProducts = JSON.parse(localStorage.getItem('products'));
        let products = storageProducts.filter(product => product.productId !== productId);
        localStorage.setItem('products', JSON.stringify(products));
        populateCart();
    }

    function populateCart() {
        var cartItems = document.getElementById("cartItems");
        cartItems.innerHTML = "";
        var subtotalComponent = document.getElementById('subtotal');

        let products = [];
        if (localStorage.getItem('products')) {
            products = JSON.parse(localStorage.getItem('products'));
            if (products.length > 0) {
                var subtotal = 0.00;
                for (var i = 0; i < products.length; i++) {
                    subtotal += products[i].price;
                    cartItems.innerHTML += `
                        <div class="cartItem">
                            <h3 class="title">` + products[i].name + `</h3>
                            <p>$` + products[i].price + `.00</p>
                            <button onclick="removeProduct(` + products[i].productId + `)">Remove from Cart</button>
                        </div>
                    `;
                }
                subtotalComponent.innerHTML = "Subtotal: $    " + subtotal;
            } else {
                cartItems.innerHTML = "<h2>Cart Empty</h2>";
                subtotalComponent.innerHTML = "Subtotal: $    0.00";
            }

        } else {
            cartItems.innerHTML = "<h2>Cart Empty</h2>";
            subtotalComponent.innerHTML = "Subtotal: $    0.00";
        }
    }
</script>
</html>

