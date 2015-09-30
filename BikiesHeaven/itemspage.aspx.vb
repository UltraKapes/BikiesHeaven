Imports System.IO
Imports System.Xml
Imports System.Text
Imports System.Xml.Linq

Public Class itemspage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Session("signedIn") = True Then
            Response.Redirect("AuctionHome.aspx")
        End If
    End Sub

End Class