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
                   <a class="navbar-brand logo" href="Default.aspx"><img src="images/bike.png" alt="logo"></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="scroll"><a href="Default">Home</a></li>                        
                        <li class="scroll"><a href="Custom">Custom</a></li>
                        <li class="scroll active"><a href="AuctionHome">Auction</a></li>                       
                        <li class="scroll"><a href="#">User Manual</a></li>
                                             
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->

    <section class="belowheader">
        
        <div id="pagecontent" class="row" runat="server">

            <h2>Bid Confirmation Page</h2>
     
             <div class="col-md-7 action-info">
           <table class="table table-bordered">
            <tr>
                <th><asp:Label ID="Label1" runat="server" Text="Customer ID:"></asp:Label></th>
                <td><asp:Label ID="TextBox1" runat="server" Enabled="False"></asp:Label></td>
            </tr>
            <tr>
              <th><asp:Label ID="Label2" runat="server" Text="Item #"></asp:Label></th>
              <td><asp:Label ID="TextBox2" runat="server" Enabled="False"></asp:Label></td>
            </tr>
            <tr>
              <th><asp:Label ID="Label3" runat="server" Text="Item Name"></asp:Label></th>
              <td><asp:Label ID="TextBox3" runat="server" Enabled="False"></asp:Label></td>
            </tr>
            <tr>
              <th><asp:Label ID="Label4" runat="server" Text="Amount" ></asp:Label></th>
              <td>$ <asp:Label ID="TextBox4" runat="server" Enabled="False"></asp:Label>
              </td>

            </tr>




           </table>
                <div class="pull-right"><asp:Button ID="Button2" class='btn btn-primary btn-lg' OnClientClick="printpage()" runat="server" Text="Print Form" />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" class='btn btn-primary btn-lg' runat="server" Text="Back to Bikes" />
                </div>
            </div>
                
        </div>
        
    </section>
    <script>
        function printpage() {
            window.print();
        }
    </script>
</asp:Content>
