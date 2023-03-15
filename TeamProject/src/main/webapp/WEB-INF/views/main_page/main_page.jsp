<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body data-spy="scroll" data-target="#header">
        <section id="slider">
            <div id="carousel-example-generic" class="carousel slide carousel-fade" data-ride="carousel" data-interval="3000">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <div class="slider_overlay">
                            <img src="resources/test_img/img1.jpg" alt="...">
                            <div class="carousel-caption">
                                <div class="slider_text">
                                    <h3>Protect</h3>
                                    <h2>nature the environment</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                    <a href="" class="custom_btn">Read  More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End of item With Active-->
                    <div class="item">
                        <div class="slider_overlay">
                            <img src="resources/test_img/img2.jpg" alt="...">
                            <div class="carousel-caption">
                                <div class="slider_text">
                                    <h3>Protect</h3>
                                    <h2>nature the environment</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                    <a href="" class="custom_btn">Read  More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End of Item-->
                    <div class="item">
                        <div class="slider_overlay">
                            <img src="resources/test_img/img3.jpg" alt="...">
                            <div class="carousel-caption">
                                <div class="slider_text">
                                    <h3>Protect</h3>
                                    <h2>nature the environment</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                    <a href="" class="custom_btn">Read  More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End of item-->
                </div>
                <!--End of Carousel Inner-->
            </div>
        </section>
        
        
        <!--Start of portfolio-->
        <section id="portfolio" class="text-center">
            <div class="col-md-12">
                <div class="portfolio_title">
                    <h2>our latest work</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet consectetur adipiscing elit.</p>
                </div>
            </div>
            <!--End of col-md-2-->
            <div class="colum">
                <div class="container">
                    <div class="row">
                        <form action="/">
                            <ul id="portfolio_menu" class="menu portfolio_custom_menu">
                                <li>
                                    <button data-filter="*" class="my_btn btn_active">Show All</button>
                                </li>
                                <li>
                                    <button data-filter=".blue, .black, .green" class="my_btn">environment</button>
                                </li>
                                <li>
                                    <button data-filter=".red, .green" class="my_btn">climate</button>
                                </li>
                                <li>
                                    <button data-filter=".blue, .yellow, .black" class="my_btn">photography</button>
                                </li>
                                <li>
                                    <button data-filter=".black" class="my_btn">species</button>
                                    <!--
                                </li>
                                <li>
                                    <button data-filter=".black" class="my_btn">Black</button>
                                </li>
                                    -->
                            </ul>
                            <!--End of portfolio_menu-->
                        </form>
                        <!--End of Form-->
                    </div>
                    <!--End of row-->
                </div>
                <!--End of container-->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="notes">
                                <div class="note blue">
                                    <div class="img_overlay">
                                        <p>Sun Homes, Dhaka</p>
                                    </div>
                                    <img src="resources/test_img/environment.jpg" alt="">
                                </div>
                                <div class="note red">
                                    <div class="img_overlay">
                                        <p>Sun Homes, Dhaka</p>
                                    </div>
                                    <img src="resources/test_img/portfolio_1.jpg" alt="">
                                </div>
                                <div class="note green">
                                    <div class="img_overlay">
                                        <p>Sun Homes, Dhaka</p>
                                    </div>
                                    <img src="resources/test_img/cliemate.jpg" alt="">
                                </div>
                                <div class="note yellow">
                                    <div class="img_overlay">
                                        <p>Sun Homes, Dhaka</p>
                                    </div>
                                    <img src="resources/test_img/photography.jpg" alt="">
                                </div>
                                <div class="note black">
                                    <div class="img_overlay">
                                        <p>Sun Homes, Dhaka</p>
                                    </div>
                                    <img src="resources/test_img/species.jpg" alt="">
                                </div>
                            </div>
                            <!--End of notes-->
                        </div>
                        <!--End of col-lg-12-->
                    </div>
                    <!--End of row-->
                </div>
                <!--End of container-->
            </div>
            <!--End of colum-->
        </section>
        <!--end of portfolio-->
        
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <!-- <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>-->
        <script src="resources/test_js/jquery-1.12.3.min.js"></script>

        <!--Counter UP Waypoint-->
        <script src="resources/test_js/waypoints.min.js"></script>
        <!--Counter UP-->
        <script src="resources/test_js/jquery.counterup.min.js"></script>
        
        
        <script src="resources/test_js/isotope/min/scripts-min.js"></script>
        <script src="resources/test_js/isotope/cells-by-row.js"></script>
        <script src="resources/test_js/isotope/isotope.pkgd.min.js"></script>
        <script src="resources/test_js/isotope/packery-mode.pkgd.min.js"></script>
        <script src="resources/test_js/isotope/scripts.js"></script>


        <!--Back To Top-->
        <script src="resources/test_js/backtotop.js"></script>


        <!--JQuery Click to Scroll down with Menu-->
        <script src="resources/test_js/jquery.localScroll.min.js"></script>
        <script src="resources/test_js/jquery.scrollTo.min.js"></script>
        <!--WOW With Animation-->
        <script src="resources/test_js/wow.min.js"></script>
        <script src="resources/test_js/bootstrap.min.js"></script>
        <script src="resources/test_js/main.js"></script>
SEXY BODY
</body>
</html>