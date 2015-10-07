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
        <%

            Dim itemid As String = Request.QueryString("itemid")
            Dim strPath As String = AppDomain.CurrentDomain.BaseDirectory
            Dim itemlist As XDocument = XDocument.Load(strPath + "data/items.xml")


            For Each node As XElement In itemlist...<item>
                If node.Element("id") = itemid Then
                    Dim idnode As XElement = node.Element("id")
                    Dim namenode As XElement = node.Element("name")
                    Dim pricenode As XElement = node.Element("price")
                    Dim stocknode As XElement = node.Element("stock")
                    Dim picnode As XElement = node.Element("pic")
                    Session("idvalue") = idnode.Value
                    Session("namevalue") = namenode.Value
                    Session("pricevalue") = pricenode.Value
                    Session("stockvalue") = stocknode.Value
                    Session("picvalue") = picnode.Value
                End If
            Next


            Dim currentbid As XDocument = XDocument.Load(strPath + "data/bids.xml")
            For Each node As XElement In currentbid...<bid>
                If node.Element("itemid") = itemid Then
                    Dim bidnode As XElement = node.Element("bidamount")
                    Session("highestBid") = bidnode.Value
                    Exit For
                Else Session("highestBid") = ""
                End If
            Next

        %>
        <div id="info" runat="server" class="holder">
           
            
            <br />
           
            Highest bid:$<% Response.Write(Session("highestBid"))%><br>
            Item Id:<% Response.Write(Session("idvalue"))%><br>
            Item name: <% Response.Write(Session("namevalue"))%><br>
            Price: <% Response.Write(Session("pricevalue"))%> <br>
            Stock: <% Response.Write(Session("stockvalue"))%><br>
            <img src='images/<% Response.Write(Session("picvalue"))%>.jpg'  alt='bike picture' height='200' width='200'><br/>
            Bid Amount: $<asp:TextBox ID="bidamount" runat="server"></asp:TextBox><br/>
            <asp:Button ID="Button1" class='btn btn-primary btn-lg' runat="server" Text="Back to Bikes" /><asp:Button ID="placebid" class='btn btn-primary btn-lg' runat="server" Text="Place a Bid" />
            <br>
            
            *minimum bid must be over $5000
                           
            
        </div>
       
    </section>
</asp:Content>
