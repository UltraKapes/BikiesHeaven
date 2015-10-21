<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Custom.aspx.vb" Inherits="BikiesHeaven.Custom" %>
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
                   <a class="navbar-brand logo" href="Default.aspx"><img src="images/bike.png" alt="logo"></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="scroll"><a href="Default">Home</a></li>
                        <li class="scroll"><a href="#">Our Bikes</a></li>
                        <li class="scroll active"><a href="Custom">Custom</a></li>
                        <li class="scroll"><a href="AuctionHome">Auction</a></li> 
                        <li class="scroll"><a href="#">About</a></li>
                        <li class="scroll"><a href="#">User Manual</a></li>
                        <li class="scroll"><a href="#">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->

    <section class="belowheader">
        <div id="pagecontent" class="row" runat="server">
            <div >
                <h1>Welcome to Custom Page</h1>
                <br />
                <br />
                <div id="selectbox">
                <select id="displayDropList" runat="server"></select><asp:Button  class="btn btn-custom" ID="Button3" runat="server" Text="Search" />
                </div>
                <br />
            </div>
            <div class="container-fluid">
                <div class="row">
                <div class="col-md-4 faketableheader">Name</div>
                <div class="col-md-4 faketableheader">Price</div>
                <div class="col-md-4 faketableheader">Stock</div>
                </div>
            </div>
            
            <div id ="itemresults" runat="server" class="container-fluid">


            </div>
             
        </div>
        
    </section>
    

</asp:Content>
