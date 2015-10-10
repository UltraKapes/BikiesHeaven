<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Confirmation.aspx.vb" Inherits="BikiesHeaven.Confirmation" %>
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
        
        <div id="pagecontent" class="row" runat="server">
            <div >
                Bid Confirmation Page<br /><br />
                <asp:Label ID="Label1" runat="server" Text="Customer ID:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Item #"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Item Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Amount" ></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; $
                <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" class='btn btn-primary btn-lg' runat="server" Text="Back to Bikes" />
                <asp:Button ID="Button2" class='btn btn-primary btn-lg' OnClientClick="printpage()" runat="server" Text="Print Form" />
                <br />
            </div>
                
        </div>
        
    </section>
    <script>
        function printpage() {
            window.print();
        }
    </script>
</asp:Content>
