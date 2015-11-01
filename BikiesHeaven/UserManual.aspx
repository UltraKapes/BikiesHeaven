<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="UserManual.aspx.vb" Inherits="BikiesHeaven.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
                    <a class="navbar-brand logo" href="Default.aspx">
                        <img src="images/bike.png" alt="logo"></a>
                </div>

                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="scroll "><a href="#">Home</a></li>
                        <li class="scroll"><a href="Custom">Custom</a></li>
                        <li class="scroll"><a href="AuctionHome">Auction</a></li>
                        <li class="scroll active"><a href="UserManual">User Manual</a></li>
                    </ul>
                </div>
            </div>
            <!--/.container-->
        </nav>
        <!--/nav-->
    </header>
    <!--/header-->

    <section style="margin-top:50px; text-align:center">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>User Manual</h1>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <h2>Auction Instructions</h2>
                </div>
                <div class="col-md-12">
                    <img src="images/harley.jpg" width="500" height="250">
                </div>

            </div>
            <div class="row">
                <div class="col-md-12">
                    <p>1. Sign up for a new account/Login with an existing one.</p>
                </div>
                <div class="col-md-12">
                    <img src="images/login.jpg" width="500" height="250">
                </div>

            </div>
            <div class="row">
                <div class="col-md-12">
                    <p>2. Choose a manufacturer and participate into ongoing auctions.</p>
                </div>
                <div class="col-md-12">
                    <img src="images/auctionpage.jpg" width="500" height="250">
                </div>

            </div>
        <div class="row">
                <div class="col-md-12">
                    <p>3. Place your bid and finalise the deal.</p>
                </div>
                <div class="col-md-12">
                    <img src="images/bidpage.jpg" width="500" height="250">
                </div>

            </div>
        <div class="row">
                <div class="col-md-12">
                    <p>5. Print the receipt and you're done.</p>
                </div>
                <div class="col-md-12">
                    <img src="images/confirmpage.jpg" width="500" height="250">
                </div>

            </div>
        <div class="row">
                <div class="col-md-12">
                    <p>You can even Customise your own Bikes<br />
                        Instructions:</p>
                </div>
            </div>

        <div class="row">
                <div class="col-md-12">
                    <p>1. Go to the Custom Page.</p>
                </div>
                <div class="col-md-12">
                    <img src="images/custompage.jpg" width="500" height="250">
                </div>

            </div>
             <div class="row">
                <div class="col-md-12">
                    <p>2. Choose a workshop of your preference and start building your own bike!</p>
                </div>
                <div class="col-md-12">
                    <img src="images/customselect.jpg" width="500" height="250">
                </div>

            </div>
        </div>

    </section>
    <!--/#main-slider-->
</asp:Content>
