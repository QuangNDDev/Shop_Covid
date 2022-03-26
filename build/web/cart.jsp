<%-- 
    Document   : cart
    Created on : Oct 20, 2021, 2:49:40 PM
    Author     : Quang Nguyen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Ogani Template">
        <meta name="keywords" content="Ogani, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Ogani | Template</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>

    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <!-- Humberger Begin -->
        <div class="humberger__menu__overlay"></div>
        <div class="humberger__menu__wrapper">
            <div class="humberger__menu__logo">
                <a href="#"><img src="img/logo.png" alt=""></a>
            </div>
            <div class="humberger__menu__cart">
                <ul>
                    <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                    <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                </ul>
                <div class="header__cart__price">item: <span>$150.00</span></div>
            </div>
            <div class="humberger__menu__widget">
                <div class="header__top__right__language">
                    <img src="img/language.png" alt="">
                    <div>English</div>
                    <span class="arrow_carrot-down"></span>
                    <ul>
                        <li><a href="#">Spanis</a></li>
                        <li><a href="#">English</a></li>
                    </ul>
                </div>
                <div class="header__top__right__auth">
                    <a href="#"><i class="fa fa-user"></i> Login</a>
                </div>
            </div>
            <nav class="humberger__menu__nav mobile-menu">
                <ul>
                    <li class="active"><a href="MainController">Home</a></li>
                    <li><a href="MainController?action=shop">Shop</a></li>

                </ul>
            </nav>

        </div>
        <!-- Humberger End -->

        <!-- Header Section Begin -->
        <header class="header">

            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="header__logo">
                            <a href="MainController"><img src="img/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <nav class="header__menu">
                            <ul>
                                <li><a href="MainController">Home</a></li>
                                <li class="active"><a href="MainController?action=shop">Shop</a></li>

                            </ul>
                        </nav>
                    </div>

                </div>
                <div class="humberger__open">
                    <i class="fa fa-bars"></i>
                </div>
            </div>
        </header>
        <!-- Header Section End -->



        <!-- Breadcrumb Section Begin -->
        <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="breadcrumb__text">
                            <h2>Organi Shop</h2>
                            <div class="breadcrumb__option">
                                <a href="MainController">Home</a>
                                <span>Shop</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->


        <!-- Shoping Cart Section Begin -->
        <section class="shoping-cart spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="shoping__cart__table">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="shoping__product">Products</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${sessionScope.CART}" var="c">
                                    <form action="UpdateCartController" method="POST">
                                        <tr>
                                            <td class="shoping__cart__item">
                                                <img src="img/product/${c.product.image}" alt="">
                                                <h5>${c.product.productName}</h5>
                                            </td>
                                            <td class="shoping__cart__price">
                                                ${c.price}$
                                            </td>
                                            <td class="shoping__cart__quantity">
                                                <input type="text" name="quantity" value="${c.quantity}"/>
                                            </td>
                                            <td class="shoping__cart__total">
                                                ${c.quantity*c.price}$
                                                <c:set var="amount" value="${c.quantity*c.price}"/>
                                            </td>
                                            <td>
                                                <input type="submit" value="Update"/>
                                                <input type="hidden" name="productID" value="${c.product.productID}"/>
                                            </td>
                                            <td class="shoping__cart__item__close">

                                                <a class="icon_close" href="MainController?action=deleteCart&productID=${c.product.productID}" onclick="return confirm('Are you sure delete Item?'"></a>
                                            </td>

                                        </tr> 
                                        <c:set var="total" value="${total+amount}"/>
                                    </form>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="shoping__cart__btns">
                            <a href="MainController?action=shop" class="primary-btn cart-btn">CONTINUE SHOPPING</a>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="shoping__checkout">
                            <h5>Cart Total</h5>
                            <ul>
                                <li>Total <span>${total}$</span></li>
                            </ul>
                            <a href="checkout.jsp" class="primary-btn">PROCEED TO CHECKOUT</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Shoping Cart Section End -->

        <!-- Footer Section Begin -->
        <footer class="footer spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer__about">
                            <div class="footer__about__logo">
                                <a href="Maincontroller"><img src="img/logo.png" alt=""></a>
                            </div>
                            <ul>
                                <li>Address: Chung cư SKY 9, phường Phú Hữu, quận 9 , TP. Hồ Chí Minh</li>
                                <li>Phone: 0356449764</li>
                                <li>Email: quangdnse140898@fpt.edu.vn</li>
                            </ul>
                        </div>
                    </div>                      
                </div>          
            </div>
        </footer>
        <!-- Footer Section End -->

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>

        <c:if test="${requestScope.OUT != null}">
            <script>
                  alert('${requestScope.OUT}');
            </script>
        </c:if>
        <c:if test="${requestScope.ERR != null}">
            <script>
                alert('${requestScope.ERR}');
            </script>
        </c:if>
    </body>

</html>
