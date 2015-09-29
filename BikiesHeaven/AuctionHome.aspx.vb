Imports System.IO
Imports System.Xml
Imports System.Text
Imports System.Xml.Linq

Public Class AuctionHome
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("signedIn") = True Then
            login.Visible = False
            pagecontent.Visible = True
            'Session.Remove("signedIn")
        Else
            login.Visible = True
            pagecontent.Visible = False
        End If

        If Session("loginError") = "Incorrect Login Or Password" Then
            errorLabel.Text = Session("loginError")
            Session.Remove("loginError")

        Else
            errorLabel.Text = ""
        End If
        If Not IsPostBack Then
            LoadManufacturers()
        End If



    End Sub

    Protected Sub loginButton_Click(sender As Object, e As EventArgs) Handles loginButton.Click

        Dim username = usernameTextBox.Text
        Dim password = passwordTextBox.Text
        Dim xmlid As String = ""
        Dim xmuser As String = ""
        Try
            Dim valid As Boolean
            Dim strPath As String = AppDomain.CurrentDomain.BaseDirectory
            Dim userlist As XDocument = XDocument.Load(strPath + "data/users.xml")
            For Each node As XElement In userlist...<user>
                Dim xmluser As String = node.Element("username")
                Dim xmlpass As String = node.Element("password")
                xmlid = node.Element("id")
                If (xmluser = username) And (xmlpass = password) Then
                    valid = True
                    Exit For
                End If
            Next
            If valid = True Then
                Session("signedIn") = True
                Session("userID") = xmlid
                'uncomment
                'Session("username") = xmuser
                Response.Redirect("~/AuctionHome")
            Else
                Session("loginError") = "Incorrect Login Or Password"
                Response.Redirect("~/AuctionHome")
            End If

        Catch errorVariable As Exception
            'Error trapping
            Console.Write(errorVariable.ToString())
        End Try
    End Sub



    Protected Sub LoadManufacturers()
        Dim newListItem As ListItem
        Try
            Dim strPath As String = AppDomain.CurrentDomain.BaseDirectory
            Dim manufacturerlist As XDocument = XDocument.Load(strPath + "data/manufacturers.xml")
            For Each node As XElement In manufacturerlist...<manufacturer>

                Dim xmlid As String = node.Element("id")
                Dim xmlname As String = node.Element("name")
                newListItem = New ListItem(xmlname, xmlid)
                displayDropList.Items.Add(newListItem)

            Next

        Catch errorVariable As Exception
            'Error trapping
            Console.Write(errorVariable.ToString())
        End Try
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim selectedID As String = displayDropList.Value
        displayItems(selectedID)
        'Session("username") = selectedID
    End Sub

    Protected Sub displayItems(manufuactuerID)

        Dim items As New ArrayList
        Dim id As String = manufuactuerID



        Try
            itemresults.InnerHtml = ""
            Dim strPath As String = AppDomain.CurrentDomain.BaseDirectory
            Dim itemlist As XDocument = XDocument.Load(strPath + "data/items.xml")
            For Each node As XElement In itemlist...<item>
                Dim list As New ArrayList
                Dim xmlid As String = node.Element("manid")
                If xmlid = id Then

                    List.Add(node.Element("id"))
                    list.Add(node.Element("name"))
                    list.Add(node.Element("price"))
                    list.Add(node.Element("stock"))
                    items.Add(list)
                End If
            Next
            For i = 0 To items.Count - 1
                Dim appendItems As New Literal()
                appendItems.Text = "<div id=" + "'" + items(i)(0).ToString() + "'" + " class='try'> Name :  " + items(i)(1).ToString() + "<br/>
                Price : " + items(i)(2).ToString() + "<br/>
                Stock : " + items(i)(3).ToString() + "</div>"
                itemresults.Controls.Add(appendItems)
            Next i

            Session("username") = items(1)(1).ToString()
        Catch errorVariable As Exception
            'Error trapping
            Console.Write(errorVariable.ToString())
        End Try
    End Sub

End Class