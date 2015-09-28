Imports System.IO
Imports System.Xml

Public Class AuctionHome
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("signedIn") = True Then
            login.Visible = False
            pagecontent.Visible = True
            Session.Remove("signedIn")
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


    End Sub

    Protected Sub loginButton_Click(sender As Object, e As EventArgs) Handles loginButton.Click
        'Dim username = usernameTextBox.Text
        'Dim password = passwordTextBox.Text
        'Try
        '    Dim valid As Boolean
        '    Dim xmlusername = "username"
        '    Dim xmlpassword = "password"

        '    Console.WriteLine("in loop")
        '    If (xmlusername = username) And (xmlpassword = password) Then
        '        valid = True
        '    End If
        '    If valid = True Then
        '        Session("signedIn") = True
        '        Response.Redirect("~/AuctionHome")
        '    Else
        '        Session("loginError") = "Incorrect Login Or Password"
        '        Response.Redirect("~/AuctionHome")
        '    End If
        'Catch errorVariable As Exception
        '    'Error trapping
        '    Console.Write(errorVariable.ToString())
        'End Try
        Dim username = usernameTextBox.Text
        Dim password = passwordTextBox.Text

        Try
            Dim valid As Boolean
            Dim strPath As String = AppDomain.CurrentDomain.BaseDirectory
            Dim userlist As XDocument = XDocument.Load(strPath + "data/users.xml")
            For Each node As XElement In userlist...<user>
                Dim xmluser As String = node.Element("username")
                Dim xmlpass As String = node.Element("password")
                If (xmluser = username) And (xmlpass = password) Then
                    valid = True
                    Exit For
                End If
            Next
            If valid = True Then
                Session("signedIn") = True
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
End Class