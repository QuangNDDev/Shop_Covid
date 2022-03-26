<%-- 
    Document   : index
    Created on : Oct 14, 2021, 7:49:42 PM
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
                                    <li class="active"><a href="MainController">Home</a></li>
                                    <li><a href="MainController?action=shop">Shop</a></li>

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
            <section class="hero">
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
                            <div class="hero__item set-bg" data-setbg="img/hero/banner.jpg">
                                <div class="hero__text">
                                    <span>FRUIT FRESH</span>
                                    <h2>Vegetable <br />100% Organic</h2>
                                    <p>Free Pickup and Delivery Available</p>
                                    <a href="MainController?action=shop" class="primary-btn">SHOP NOW</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Hero Section End -->

            <!-- Categories Section Begin -->
            <section class="categories">
                <div class="container">
                    <div class="row">
                        <div class="categories__slider owl-carousel">
                            <c:forEach items="${requestScope.LIST_CATEGORY}" var="cate" >
                                <div class="col-lg-3">
                                    <div class="categories__item set-bg" data-setbg="img/categories/${cate.image}">
                                        <h5><a href="MainController?action=category&categoryID=${cate.categoryID}">${cate.categoryName}</a></h5>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Categories Section End -->

            <!-- Featured Section Begin -->
            <section class="featured spad">
                <div class="container">

                    <div class="row featured__filter">
                        <c:forEach items="${requestScope.LIST_PRODUCT}" var="p">
                            <div class="col-lg-3 col-md-4 col-sm-6 ">
                                <div class="featured__item">
                                    <div class="featured__item__pic set-bg" data-setbg="img/product/${p.image}">
                                        <ul class="featured__item__pic__hover">                                       
                                            <li><a href="MainController?action=addToCart&productID=${p.productID}"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="featured__item__text">
                                        <h6><a href="#">${p.productName}</a></h6>
                                        <h5>${p.price}$</h5>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </section>
            <!-- Featured Section End -->

            <!-- Banner Begin -->
            <div class="banner">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="banner__pic">
                                <img src="img/banner/banner-1.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="banner__pic">
                                <img src="img/banner/banner-2.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Banner End -->


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


            <c:if test="${requestScope.SEARCH_ERROR != null}">
                <script>
                    alert('${requestScope.SEARCH_ERROR}');
                </script>
            </c:if>
            <c:if test="${requestScope.OUT != null}">
                <script>
                    alert('${requestScope.OUT}');
                </script>
            </c:if>
            <c:if test="${requestScope.CHECK_OUT != null}">
                <script>
                    alert('${requestScope.CHECK_OUT}');
                </script>
            </c:if>

        </body>

    </html>
</html>
