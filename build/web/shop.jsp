<%-- 
    Document   : shop
    Created on : Oct 14, 2021, 9:47:43 PM
    Author     : Quang Nguyen
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

                        <li><a href="#"><i class="fa fa-shopping-bag"></i> <span></span></a></li>
                    </ul>

                </div>

                <nav class="humberger__menu__nav mobile-menu">
                    <ul>
                        <li class="active"><a href="./index.html">Home</a></li>
                        <li><a href="./shop-grid.html">Shop</a></li>

                    </ul>
                </nav>
                <div id="mobile-menu-wrap"></div>

            </div>
            <!-- Humberger End -->

            <!-- Header Section Begin -->
            <header class="header">
                <div class="header__top">
                    <div class="container">
                        <div class="row">

                            <c:if test="${sessionScope.LOGIN_USER == null}">
                                <div class="col-lg-6">
                                    <div class="header__top__right">                         
                                        <div class="header__top__right__auth">
                                            <a href="MainController?action=login"><i class="fa fa-user"></i> Login</a>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${sessionScope.LOGIN_USER != null}">
                                <div class="col-lg-6">
                                    <div class="header__top__right">                         
                                        <div class="header__top__right__auth">
                                            <h3>Hello ${sessionScope.LOGIN_USER.userName}</h3>
                                            <a href="MainController?action=logout"><i class="fa fa-user"></i> Logout</a>                                           
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
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
                        <div class="col-lg-3">
                            <div class="header__cart">
                                <ul>

                                    <li><a href="cart.jsp"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                                </ul>

                            </div>
                        </div>
                    </div>
                    <div class="humberger__open">
                        <i class="fa fa-bars"></i>
                    </div>
                </div>
            </header>
            <!-- Header Section End -->

            <!-- Hero Section Begin -->
            <section class="hero hero-normal">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="hero__categories">
                                <div class="hero__categories__all">
                                    <i class="fa fa-bars"></i>
                                    <span> All Categories</span>
                                </div>
                                <ul>
                                    <c:forEach items="${requestScope.LIST_CATEGORY}" var="cate" >
                                        <li><a href="MainController?action=category&categoryID=${cate.categoryID}">${cate.categoryName}</a></li>    
                                        </c:forEach>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <div class="hero__search">
                                <div class="hero__search__form">
                                    <form action="SearchController">
                                        <input type="text" name="search" placeholder="What do you need?">
                                        <button type="submit" class="site-btn">SEARCH</button>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Hero Section End -->

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

            <!-- Product Section Begin -->
            <section class="product spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-5">
                            <div class="sidebar">
                                <div class="sidebar__item">
                                    <h4>Categories</h4>
                                    <ul>
                                        <c:forEach items="${requestScope.LIST_CATEGORY}" var="cate" >
                                            <li><a href="MainController?action=category&categoryID=${cate.categoryID}">${cate.categoryName}</a></li>    
                                            </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-9 col-md-7">
                            <div class="product__discount">


                                <div class="row">
                                    <c:forEach items="${requestScope.LIST_PRODUCT}" var="p">
                                        <div class="col-lg-4 col-md-6 col-sm-6">
                                            <div class="product__item">
                                                <div class="product__item__pic set-bg" data-setbg="img/product/${p.image}">
                                                    <ul class="product__item__pic__hover">                                                 
                                                        <li><a href="MainController?action=addToCart&productID=${p.productID}"><i class="fa fa-shopping-cart"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="product__item__text">
                                                    <h6><a href="#">${p.productName}</a></h6>
                                                    <h5>${p.price}$</h5>
                                                </div>
                                            </div>
                                        </div> 
                                    </c:forEach>
                                </div>

                            </div>
                        </div>
                    </div>
            </section>
            <!-- Product Section End -->

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



        </body>

    </html>
</html>
