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


        'Dim appendItems As New Literal()
        'appendItems.Text = "<div>Item Id:" + idvalue + "<br>
        '                    Item name:" + namevalue + "<br>
        '                    Price:" + pricevalue + "<br>
        '                    Stock:" + stockvalue + "<br>
        '                    <img src='images/" + picvalue + ".jpg'  alt='bike picture' height='200' width='200'><br/>
        '                    Bid Amount: $<input id='bidamount'runat='server' type='text'><br/>
        '                    <a class='btn btn-primary btn-lg' onclick='placebidclick();'>Place Bid</a><br>
        '                    *minimum bid must be $5000
        '                    </div>"

        'info.Controls.Add(appendItems)




    End Sub


    Protected Function ProcessIT(id As String, amount As String)

        Dim result As String = "You bid" + amount + ". on item '" + id + "'."
        Return result

    End Function

    Protected Sub placebid_Click(sender As Object, e As EventArgs) Handles placebid.Click

        Try

            Dim amount As String = bidamount.Text
            Dim check As Boolean = True
            If Not Integer.TryParse(amount, check) Then
                check = False
            End If
            If check = True Then
                Dim value As Integer = Integer.Parse(amount)
                If value > 5000 Then
                    If Session("highestbid") = Nothing Then
                        Dim result1 = MsgBox("Finalise bid of $" + amount, MsgBoxStyle.YesNo, "Confirm Bid")
                        If result1 = MsgBoxResult.Yes Then
                            Dim strPath As String = AppDomain.CurrentDomain.BaseDirectory
                            Dim location As String = strPath + "data/bids.xml"
                            If File.Exists(location) Then
                                Dim xmlfile As New ConfigXmlDocument
                                xmlfile.Load(location)
                                Dim root As XmlNode = xmlfile.DocumentElement
                                Dim bid As XmlElement = xmlfile.CreateElement("bid")
                                Dim itemid As XmlElement = xmlfile.CreateElement("itemid")
                                Dim userid As XmlElement = xmlfile.CreateElement("userid")
                                Dim bidamount As XmlElement = xmlfile.CreateElement("bidamount")



                                Dim itemidtext As XmlText = xmlfile.CreateTextNode(Session("idvalue"))
                                Dim useridtext As XmlText = xmlfile.CreateTextNode(Session("userID"))
                                Dim bidtext As XmlText = xmlfile.CreateTextNode(amount)

                                itemid.AppendChild(itemidtext)
                                userid.AppendChild(useridtext)
                                bidamount.AppendChild(bidtext)

                                bid.AppendChild(itemid)
                                bid.AppendChild(userid)
                                bid.AppendChild(bidamount)


                                root.InsertBefore(bid, root.FirstChild)

                                xmlfile.Save(location)
                                MsgBox("Your bid of $" + amount + " has been accepted", , "Completed Bid")

                            End If
                        End If
                    ElseIf value > Integer.Parse(Session("highestBid")) Then
                        Dim result1 = MsgBox("Finalise bid of $" + amount, MsgBoxStyle.YesNo, "Confirm Bid")
                        If result1 = MsgBoxResult.Yes Then
                            Dim strPath As String = AppDomain.CurrentDomain.BaseDirectory
                            Dim location As String = strPath + "data/bids.xml"
                            If File.Exists(location) Then
                                Dim xmlfile As New ConfigXmlDocument
                                xmlfile.Load(location)
                                Dim root As XmlNode = xmlfile.DocumentElement
                                Dim bid As XmlElement = xmlfile.CreateElement("bid")
                                Dim itemid As XmlElement = xmlfile.CreateElement("itemid")
                                Dim userid As XmlElement = xmlfile.CreateElement("userid")
                                Dim bidamount As XmlElement = xmlfile.CreateElement("bidamount")



                                Dim itemidtext As XmlText = xmlfile.CreateTextNode(Session("idvalue"))
                                Dim useridtext As XmlText = xmlfile.CreateTextNode(Session("userID"))
                                Dim bidtext As XmlText = xmlfile.CreateTextNode(amount)

                                itemid.AppendChild(itemidtext)
                                userid.AppendChild(useridtext)
                                bidamount.AppendChild(bidtext)

                                bid.AppendChild(itemid)
                                bid.AppendChild(userid)
                                bid.AppendChild(bidamount)


                                root.InsertBefore(bid, root.FirstChild)

                                xmlfile.Save(location)
                                MsgBox("Your bid of $" + amount + " has been accepted", , "Completed Bid")

                            End If
                        End If
                    Else MsgBox("Sorry your bid of $" + amount + " was not highest", , "Failed Bid")
                        bidamount.Text = ""
                    End If
                Else MsgBox("Sorry your bid of $" + amount + " was not enough", , "Failed Bid")
                    bidamount.Text = ""
                End If
            Else
                MsgBox("Your bid was not a number, please try again", , "Failed Bid")
                bidamount.Text = ""
            End If
            bidamount.Text = ""
        Catch ex As Exception
            ' Write exception to screen.
            Console.WriteLine(ex)
        End Try


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("AuctionHome.aspx")
    End Sub
End Class