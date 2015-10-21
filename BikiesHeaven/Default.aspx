<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="BikiesHeaven._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%

%>
    <header id="header">
        <nav id="main-menu" class="navbar navbar-default navbar-fixed-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                     <a class="navbar-brand logo" href="Default.aspx"><img src="images/bike.png" alt="logo"></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="scroll active"><a href="#">Home</a></li>
                        <li class="scroll"><a href="#">Our Bikes</a></li>
                        <li class="scroll"><a href="Custom">Custom</a></li>
                        <li class="scroll"><a href="AuctionHome">Auction</a></li> 
                        <li class="scroll"><a href="#">About</a></li>
                        <li class="scroll"><a href="#">User Manual</a></li>
                        <li class="scroll"><a href="#">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->

    <section id="main-slider">
        <div>
            <div class="item" style="background-image: url(images/slider/motomodel.jpg);">
                <div class="slider-inner">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h2><span>Bike Auctions</span></h2>
                                    <a class="btn btn-primary btn-lg" href="~/AuctionHome" runat="server">Enter Now</a>
                                </div>
                            </div>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/.owl-carousel-->
    </section><!--/#main-slider-->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/mousescroll.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/jquery.inview.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/main.js"></script>


</asp:Content>
