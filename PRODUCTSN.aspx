       <div class="topnav" id="myTopnav">
            <div class="header">
                <a href="#default"><font color="yellow">&nbsp;<img alt="" class="auto-style4" src="../IMG/e10.png" />Jungle </font></a>
                <div class="header-right">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a class="active" href="Home.aspx">HOME</a>
                <a class="active" href="Contact Us.html">CONTACT US</a>
                <a class="active" href="PRODUCTS.aspx">PRODUCTS</a>
                <a class="active" href="Register.aspx">Register</a>
                <a class="active" href="About US.html">ABOUT </a>
                    <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
                </div>
            </div>
        </div>




                    <br />
                    <br />
                    <br />
                    <br />
                </div>
<style type="text/css">
    .auto-style1 {
        width: 225px;
        height: 225px;
    }
    .auto-style2 {
        width: 274px;
        height: 184px;
    }
    .auto-style3 {
        width: 244px;
    }
    .auto-style4 {
        width: 138px;
        height: 113px;
    }
    </style>
&nbsp;<div class="header">
        <head>
            <script type = "text/javascript" src = https://use.fontawesome.com/1fa2e54b22.js> </script>
            <script type ="text/javascript" src =" https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

            <script type ="text/javascript">
                $(function () {

                    $("#cart-items").slideUp();
                    $(".cart").on("click", function () {
                        $("#cart-items").slideToggle();
                    });

                    $("#items-basket").text("(" + ($("#list-item").children().length) + ")");


                    $(".item").on("click", function () {
                        $("#cart-items").slideDown();
                        setTimeout(function () {
                            $("#cart-items").slideUp();
                        }, 2000)
                        //add items to basket
                        $(this).each(function () {
                            var name = $(this).children(".item-detail").children("h4").text();
                            var remove = "<button class='remove'> X </button>";
                            var cena = "<span class='eachPrice'>" + (parseFloat($(this).children(".item-detail").children(".prices").children(".price").text())) + "</span>";
                            $("#list-item").append("<li>" + name + "&#09; - &#09;" + cena + "$" + remove + "</li>");

                            //number of items in basket
                            $("#items-basket").text("(" + ($("#list-item").children().length) + ")");
                            $("#items-basket").text();

                            //calculate total price
                            var totalPrice = 0;
                            $(".eachPrice").each(function () {
                                var cenaEach = parseFloat($(this).text());
                                totalPrice += cenaEach;
                            });
                            $("#total-price").text(totalPrice + "$");
                        });

                        //remove items from basket
                        $(".remove").on("click", function () {
                            $(this).parent().remove();

                            var totalPrice = 0;
                            $(".eachPrice").each(function () {
                                var cenaEach = parseFloat($(this).text());
                                totalPrice += cenaEach;
                            });
                            $("#total-price").text(totalPrice + "$");
                            $("#items-basket").text("(" + ($("#list-item").children().length) + ")");
                        });
                    });
                })
            </script>
        </head>
        <link rel="stylesheet" href="~/site/css/site.css" />
    <div class="heading" style="background-image: url('site/images/back2.jpg'); height: 58px;" >
			<h1>Shopping Cart</h1>
		</div>
		<div class="cart">
			<i class="fa fa-shopping-basket fa-2x"></i>
      <i class="fa fa-caret-down"></i><br>
			<div class="total-text">
				<p>Items</p>
				<p id="items-basket"></p>
			</div>
		</div>

		<div id="cart-items">
			<ol id="list-item">
			</ol>

			<div class="total-text">
					<p>Total: </p>
			        <p id="total-price"></p>
			</div>
		</div>



	</div>

	<div class="items-container" style="background-image: url('site/images/back2.jpg')" >
		<!-- Item 1 -->
		<div class="item">
			&nbsp;<div class="item-detail">
				<h4>CATEGORY- MEN SHOES</h4>
				<div class="prices">
				</div>
			</div>
		</div>

		<!-- Item 2 -->
		<div class="item">
			<img alt="" class="auto-style2" src="../IMG/clarks2.jpg" />
			<div class="overflow">
				<i class="fa fa-cart-plus fa-5x"></i>
			</div>
			<div class="item-detail">
				<h4>DESERT CLARKS</h4>
				<div class="prices">
					<p class="price">14900</p>
					<p>$</p>
                    <h2 style="margin: 0px 0px 10px; padding: 0px; box-sizing: inherit; font-size: 2.2rem; font-family: Montserrat, sans-serif; font-weight: 400; color: rgb(51, 51, 51); display: block; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">Product description</h2>
                    <p class="product-description__text product-description__text--restricted" itemprop="description" style="margin: 0px 0px 13px; padding: 10px 86.4844px 10px 0px; box-sizing: inherit; font-family: Montserrat, sans-serif; font-weight: 400; font-size: 1.5rem; line-height: 1.42857; color: rgb(51, 51, 51); text-align: left; height: auto; overflow: hidden; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <a href="https://www.clarksusa.com/Mens/Boots/Desert-Boots/c/mo222" style="margin: 0px; padding: 0px; box-sizing: inherit; background-color: transparent; color: rgb(5, 112, 193); text-decoration: none;">Men&#39;s Desert Boots</a>, oak suede - Launched in 1950 by Nathan Clark, the Desert Boot was inspired by a rough boot from Cairo&#39;s Old Bazaar. An instant hit, it became the footwear of choice for off-duty army officers. Crafted from premium oak suede from the Charles F. Stead tannery, its clean lines are teamed with a simple lace fastening and signature crepe sole.</p>
                    <p>&nbsp;</p>
				</div>
			</div>
		</div>

		<!-- Item 3 -->
		<div class="item">
			<img alt="" class="auto-style1" src="../IMG/clarks3.jpg" />
			<div class="overflow">
				<i class="fa fa-cart-plus fa-5x"></i>
			</div>
			<div class="item-detail">
				<h4>WALLABEE</h4>
				<div class="prices">
					<p class="price">1299</p>
					<p>$</p>
                    <h2 style="margin: 0px 0px 10px; padding: 0px; box-sizing: inherit; font-size: 2.2rem; font-family: Montserrat, sans-serif; font-weight: 400; color: rgb(51, 51, 51); display: block; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">Product description</h2>
                    <p class="product-description__text product-description__text--restricted" itemprop="description" style="margin: 0px 0px 13px; padding: 10px 86.5px 10px 0px; box-sizing: inherit; font-family: Montserrat, sans-serif; font-weight: 400; font-size: 1.5rem; line-height: 1.42857; color: rgb(51, 51, 51); text-align: left; height: auto; overflow: hidden; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        The Wallabee has become an iconic classic in our Clarks Originals collection across the globe thanks to its moccasin construction and structural sihouette. In collaboration with Wu Wear, the WallabeeWW Lo features a soft nubuck upper with a marbled design and teamed with a leather piping apron. The design is finished off with our signature crepe sole which continues to stand the test of time as well as dual branded details.</p>
                    <p>&nbsp;</p>
				</div>
			</div>
		</div>

		<!-- Item 4 -->
		<div class="item">
			&nbsp;<div class="item-detail">
				<h4 class="auto-style3">
                    <img alt="" class="auto-style1" src="../IMG/clarks4.jpg" />TREK</h4>
				<div class="prices">
					<div class="overflow">
				<i class="fa fa-cart-plus fa-5x"></i>
			</div>
					<p class="price">169</p>
					<p>$</p>
                    <h2 style="margin: 0px 0px 10px; padding: 0px; box-sizing: inherit; font-size: 2.2rem; font-family: Montserrat, sans-serif; font-weight: 400; color: rgb(51, 51, 51); display: block; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">Product description</h2>
                    <p class="product-description__text product-description__text--restricted" itemprop="description" style="margin: 0px 0px 13px; padding: 10px 86.4844px 10px 0px; box-sizing: inherit; font-family: Montserrat, sans-serif; font-weight: 400; font-size: 1.5rem; line-height: 1.42857; color: rgb(51, 51, 51); text-align: left; height: auto; overflow: hidden; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        Taking design cues from a global cult classic, Trek Heights uses the same distinctive design details as our iconic Desert Trek with the asymmetrical last shape, centre stitched seam and illustrated figure on the heel affectionately dubbed as &#39;Trek man&#39;. For this season, our designers have opted for a contemporary flatform profile and created a higher topline for a sports casual boot. The crepe sole has been swapped for a moulded EVA sole to ensure the style is lightweight and offers exceptional underfoot cushioning. For a premium finish, our designers have gone for a material contrast on the upper, opting for a soft, Italian veg leather on one side and textured suede from the Charles F. Stead tannery on the other.</p>
                    <p>&nbsp;</p>
				</div>
			</div>
		</div>
                    </div>
                    <span class='cdn-user-first-name'/><span class="welcome-text">     <table>         <caption class="size__caption--sizecharts">Mens Clarks shoe sizes</caption>         <thead>             <tr>                 <th scope="col"><span class="size__span--table">CLarks </span>US Size</th>                 <th scope="col"><span class="size__span--table">Clarks </span>UK Size</th>                 <th scope="col">Foot length <span class="size__span--table-cms size__span--table-cms-desktop">(CM)</span> <span class="size__span--table-cms size__span--table-cms-mobile">(CM)</span></th>             </tr>         </thead>         <tbody>             <tr>                 <th scope="row">7</th>                 <td>6</td>                 <td>24.6</td>             </tr>             <tr>                 <th scope="row">7½</th>                 <td>6½</td>                 <td>25.0</td>             </tr>             <tr>                 <th scope="row">8</th>                 <td>7</td>                 <td>25.4</td>             </tr>             <tr>                 <th scope="row">8½</th>                 <td>7½</td>                 <td>25.8</td>             </tr>             <tr>                 <th scope="row">9</th>                 <td>8</td>                 <td>26.3</td>             </tr>             <tr>                 <th scope="row">9½</th>                 <td>8½</td>                 <td>26.7</td>             </tr>             <tr>                 <th scope="row">10</th>                 <td>9</td>                 <td>27.2</td>             </tr>             <tr>                 <th scope="row">10½</th>                 <td>9½</td>                 <td>27.6</td>             </tr>             <tr>                 <th scope="row">11</th>                 <td>10</td>                 <td>28.0</td>             </tr>             <tr>                 <th scope="row">11½</th>                 <td>10½</td>                 <td>28.5</td>             </tr>             <tr>                 <th scope="row">12</th>                 <td>11</td>                 <td>28.9</td>             </tr>             <tr>                 <th scope="row">13</th>                 <td>12</td>                 <td>29.8</td>             </tr>             <tr>                 <th scope="row">14</th>                 <td>13</td>                 <td>30.6</td>             </tr>             <tr>                 <th scope="row">15</th>                 <td>14</td>                 <td>31.4</td>             </tr>         </tbody>     </table>     <div class="size-widths size-widths--mens">         <h3 class="size__heading size__heading--dl">
                    &nbsp;</h3>         <dl class="size-dl size-dl-mens">             <dt class="size__heading size__heading--dt"></dt>         </dl>     </div> 
