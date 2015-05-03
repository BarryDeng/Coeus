<%@ Page Title="消息详情" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="MessageDetail.aspx.cs" Inherits="Login_MessageDetail" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
            <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="../Content/font-awesome.css">
        <link rel="stylesheet" href="../Content/bootstrap.min.css">
        <link rel="stylesheet" href="../Content/templatemo-style.css">
        <script src="../Scripts/vendor/modernizr-2.6.2.min.js"></script>
    <style>
        body{
            padding-top:70px;
        }
        .tiy{
            font-family :方正舒体; font-size :25px; color :#DB70DB;
        }
    </style>
         <div id="loader-wrapper">
            <div id="loader"></div>
        </div>
    <body style="background-image:url(../images/bg.jpg)">
    <center><asp:TextBox CssClass="h1" ID="messagetitle" runat="server" MaxLength="100" ReadOnly="true" Font-Names="方正舒体" ForeColor="YellowGreen" BorderStyle="None"></asp:TextBox></center>
    <center><asp:CheckBox ID="important" runat="server" Text="重要通知" CssClass="tiy" Visible="false"/></center>
    <center><textarea id="content" cols="200" rows="20" runat="server" maxlength="500" style="border:none;" onblur="changevalue()"></textarea></center>
        <br />
    <center><asp:Button ID="commit" runat="server" Text="确认！" CssClass="btn btn_default" Visible="false" OnClick="commit_Click"/></center>
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