Public Class Custom
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Session("signedIn") = True Then
            Response.Redirect("AuctionHome.aspx")
        End If

        If Not IsPostBack Then
            LoadWorkshops()
        End If

    End Sub

    Protected Sub LoadWorkshops()
        Dim newListItem As ListItem
        Try
            newListItem = New ListItem("All Workshops", "")
            displayDropList.Items.Add(newListItem)
            Dim strPath As String = AppDomain.CurrentDomain.BaseDirectory
            Dim manufacturerlist As XDocument = XDocument.Load(strPath + "data/workshops.xml")
            For Each node As XElement In manufacturerlist...<workshop>

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

    End Sub

    Protected Sub displayItems(manufuactuerID)

        Dim items As New ArrayList
        Dim id As String = manufuactuerID



        Try
            itemresults.InnerHtml = ""
            Dim strPath As String = AppDomain.CurrentDomain.BaseDirectory
            Dim itemlist As XDocument = XDocument.Load(strPath + "data/customitems.xml")
            If id = "" Then
                For Each node As XElement In itemlist...<item>
                    Dim list As New ArrayList
                    Dim xmlid As String = node.Element("workshopid")
                    Dim idnode As XElement = node.Element("id")
                    Dim namenode As XElement = node.Element("name")
                    Dim pricenode As XElement = node.Element("price")
                    Dim stocknode As XElement = node.Element("stock")
                    list.Add(idnode.Value)
                    list.Add(namenode.Value)
                    list.Add(pricenode.Value)
                    list.Add(stocknode.Value)
                    items.Add(list)

                Next
                For i = 0 To items.Count - 1
                    Dim appendItems As New Literal()



                    appendItems.Text = "<div id=" + "'" + items(i)(0).ToString() + "'" + " class='row faketablerow '><div class='col-md-4 col-xs-4 col-lg-4 faketable'>" + items(i)(1).ToString() + "</div>
                        <div class='col-md-4 faketable'> " + items(i)(2).ToString() + "</div>
                        <div class='col-md-4 faketable'>" + items(i)(3).ToString() + "</div></div>"
                    itemresults.Controls.Add(appendItems)

                Next i
            Else
                For Each node As XElement In itemlist...<item>
                    Dim list As New ArrayList
                    Dim xmlid As String = node.Element("workshopid")
                    If xmlid = id Then
                        Dim idnode As XElement = node.Element("id")
                        Dim namenode As XElement = node.Element("name")
                        Dim pricenode As XElement = node.Element("price")
                        Dim stocknode As XElement = node.Element("stock")
                        list.Add(idnode.Value)
                        list.Add(namenode.Value)
                        list.Add(pricenode.Value)
                        list.Add(stocknode.Value)
                        items.Add(list)
                    End If

                Next
                For i = 0 To items.Count - 1
                    Dim appendItems As New Literal()

                    appendItems.Text = "<div id=" + "'" + items(i)(0).ToString() + "'" + " class='row faketablerow '><div class='col-md-4 col-xs-4 col-lg-4 faketable'>" + items(i)(1).ToString() + "</div>
                        <div class='col-md-4 faketable'> " + items(i)(2).ToString() + "</div>
                        <div class='col-md-4 faketable'>" + items(i)(3).ToString() + "</div></div>"
                    itemresults.Controls.Add(appendItems)
                Next i

            End If


            Session("username") = items(1)(3).ToString()
        Catch errorVariable As Exception
            'Error trapping
            Console.Write(errorVariable.ToString())
        End Try
    End Sub

End Class