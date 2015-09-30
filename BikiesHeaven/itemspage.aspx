<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ItemsPage.aspx.vb" Inherits="BikiesHeaven.itemspage" %>
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
                  <%--  <a class="navbar-brand" href="Default.aspx"><img src="images/logo.png" alt="logo" ><span id="logo">Bikies Heaven</span></a>--%>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="scroll active"><a href="Default">Home</a></li>
                        <li class="scroll"><a href="#">Our Bikes</a></li>
                        <li class="scroll"><a href="Custom">Custom</a></li>
                        <li class="scroll"><a href="AuctionHome">Auction</a></li> 
                        <li class="scroll"><a href="#">About</a></li>
                        <li class="scroll"><a href="#">Team</a></li>
                        <li class="scroll"><a href="#">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->

    <section class="belowheader">
        <% Dim itemid As String
            itemid = Request.QueryString("itemid")
        %>
        hello <%= itemid %>
        
    </section>
</asp:Content>
