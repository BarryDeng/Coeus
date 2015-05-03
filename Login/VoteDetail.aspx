<%@ Page Title="投票详情" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="VoteDetail.aspx.cs" Inherits="Login_VoteDetail" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label CssClass="h2" ID="Votetitle" runat="server"></asp:Label>
            <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="../Content/font-awesome.css">
        <link rel="stylesheet" href="../Content/bootstrap.min.css">
        <link rel="stylesheet" href="../Content/templatemo-style.css">
        <script src="../Scripts/vendor/modernizr-2.6.2.min.js"></script>
    <style>
        body{
            padding-top:70px;
        }
    </style>
    <body style="background-image:url(../images/bg.jpg)">
                <div id="loader-wrapper">
            <div id="loader"></div>
        </div>
     <div>
        <br />
        <asp:Table ID="Table1" runat="server" CellPadding="0" CellSpacing="0" Height="56px"
            Width="142px" BorderWidth="1px" >
        </asp:Table>
        <asp:Label ID="LabelMsg" runat="server"></asp:Label>
        <br />
    </div>
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
    <asp:Button CssClass="btn btn-danger" ID="Button1" runat="server" Text="提交" Visible="false" OnClick="Button1_Click1" />
</asp:Content>