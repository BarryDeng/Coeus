<%@ Page Title="班级通知" Language ="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ClassMessage.aspx.cs" Inherits="ClassMessage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
            <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="../Content/font-awesome.css">
        <link rel="stylesheet" href="../Content/bootstrap.min.css">
        <link rel="stylesheet" href="../Content/templatemo-style.css">
        <script src="../Scripts/vendor/modernizr-2.6.2.min.js"></script>
    <style>
        body{
            padding-top:75px;
        }
        .h2{
            font-family :方正舒体; font-size :40px; color :#4DFFFF;
        }
        .border{
            color:#0f42e6;
        }
    </style>
         <div id="loader-wrapper">
            <div id="loader"></div>
        </div>
    <body style="background-image:url(../images/bg.jpg)">
        <hr />
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                     <center><h2 style="font-family :方正舒体; font-size :72px; color :#4DFFFF;">文档分享</h2></center>




    <center><asp:DataList ID="DataList1" runat="server" BorderColor="Black" CellPadding="4" ForeColor="#333333" GridLines="Both" RepeatLayout="Flow">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <ItemTemplate>
            <table border="4">
                <tr>
                    <td style="width:58px; color:#0f42e6;"><label style="color:#DB70DB">由<%# Eval("name") %>上传</label></td>
                    <td style="width:58px; color:#0f42e6;">文件名:</td>
                    <td>
                        <i class="glyphicon glyphicon-download"></i>
                        <a style="color:#0f42e6;" href="../Upload/<%# Eval("fname") %>"><%# Eval("fname") %></a><br />
                    </td>
                    
                </tr>
            </table>      
        </ItemTemplate>
    </asp:DataList></center>






                </div>




                <div class="col-md-4">
                    <center><asp:Label CssClass="h2" ID="Label1" runat="server" Text="班的通知列表" ></asp:Label></center>
        <br />
    <div>
        <center><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
             OnRowDataBound="GridView1_RowDataBound" BackColor="White" BorderColor="#333333" 
             Font-Names="Verdana" Font-Size="X-Small" ForeColor="#333333" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowPaging="true" AllowSorting="true" EmptyDataText="班级好像还没有通知呢( ⊙ o ⊙ )" >
            <Columns>
                <asp:BoundField DataField="id" Visible="false" />
                <asp:BoundField DataField="class" HeaderText="班级" />
                <asp:BoundField DataField="writer" HeaderText="作者" />
                <asp:HyperLinkField DataTextField="title" HeaderText="标题" DataNavigateUrlFields="id" DataNavigateUrlFormatString="MessageDetail.aspx?MessageID={0}" Target="_blank" NavigateUrl="~/Login/MessageDetail.aspx" />
                <asp:BoundField DataField="datetime" HeaderText="发布时间"/>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView></center>
    </div>
                </div>
                <div class="col-md-4">
                     <center><h2 style="font-family :方正舒体; font-size :72px; color :#4DFFFF;">班级投票</h2style="font-family></center>
    <center><asp:GridView ID="GridView2" runat="server" EmptyDataText="班级好像还没有投票哦" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            <Columns>
            <asp:BoundField DataField="class" HeaderText="班级" />
            <asp:HyperLinkField DataTextField="title" HeaderText="标题" DataNavigateUrlFields="title" DataNavigateUrlFormatString="VoteDetail.aspx?VoteID={0}" Target="_blank" NavigateUrl="~/Login/VoteDetail.aspx" />
            <asp:BoundField DataField="user" HeaderText="发起人" />
            <asp:BoundField DataField="time" HeaderText="发起时间" />
            </Columns>
    </asp:GridView>
        </center>
                </div>
            </div>
        </div>
    
<hr />
   
        <script src="../Scripts/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="../Scripts/vendor/jquery-1.10.2.min.js"><\/script>')</script>
        <script src="../Scripts/min/plugins.min.js"></script>
        <script src="../Scripts/min/main.min.js"></script>

        <!-- Preloader -->
        <script type="text/javascript">
            //<![CDATA[
            $(window).load(function() { // makes sure the whole site is loaded
                $('#loader').fadeOut(); // will first fade out the loading animation
                    $('#loader-wrapper').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
                $('body').delay(350).css({'overflow-y':'visible'});
            })
            //]]>
        </script>
   

    </body>
</asp:Content>
