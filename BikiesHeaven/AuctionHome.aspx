<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AuctionHome.aspx.vb" Inherits="BikiesHeaven.AuctionHome" %>

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
                        <li class="scroll active"><a href="Default">Home</a></li>
                        <li class="scroll"><a href="Custom">Custom</a></li>
                        <li class="scroll"><a href="AuctionHome">Auction</a></li>                        
                        <li class="scroll"><a href="#">User Manual</a></li>
                                               
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->

    <section class="belowheader">
       
        <div id="login" class="row" runat="server">
            <div  class="loginwrapper" >
                <div class="login"></div>
                Please Enter Login
                <br /><br />
                <asp:Label ID="usernameLabel" runat="server" Text="Username "></asp:Label>
                <br />
                <asp:TextBox ID="usernameTextBox" runat="server"></asp:TextBox>&nbsp;
                <br />
                <asp:Label ID="passwordLabel" runat="server" Text="Password"></asp:Label><br />
                <asp:TextBox ID="passwordTextBox" runat="server"></asp:TextBox><br />
                <br />
                <asp:Button ID="loginButton" class="btn btn-primary btn-lg" runat="server" Text="Login" /><br />
                <asp:Label ID="errorLabel" runat="server" Text=""></asp:Label>
          </div>

        </div>
        <div id="pagecontent" class="row" runat="server">
            <div>
                <h1>Welcome to Auction Page</h1>
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
