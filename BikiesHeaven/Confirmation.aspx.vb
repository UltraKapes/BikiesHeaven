Imports System
Imports System.Drawing
Imports System.IO
Imports System.Drawing.Printing
Imports System.Windows.Forms


Public Class Confirmation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Session("signedIn") = True Then
            Response.Redirect("AuctionHome.aspx")
        End If

        Dim useridcheck As String = ""
        Dim isAcutalBidder As Boolean = False
        Dim strPath As String = AppDomain.CurrentDomain.BaseDirectory
        Dim currentbid As XDocument = XDocument.Load(strPath + "data/bids.xml")
        For Each node As XElement In currentbid...<bid>
            If node.Element("itemid") = Session("idvalue") Then
                Dim useridnode As XElement = node.Element("userid")
                useridcheck = useridnode.Value
                Exit For

            End If
        Next
        If Not useridcheck = Session("userID") Then
            Response.Redirect("AuctionHome.aspx")
        End If


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("AuctionHome.aspx")
    End Sub



End Class