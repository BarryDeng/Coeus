<%@ Page Title="发起投票" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Vote.aspx.cs" Inherits="Vote" %>

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
    </style>
         <div id="loader-wrapper">
            <div id="loader"></div>
        </div>
    <body style="background-image:url(../images/bg.jpg)">
    <center><h2 style="font-family :方正舒体; font-size :72px; color :#4DFFFF;">发起投票</h2></center>
    <center><span style="font-family :方正舒体; font-size :25px; color :#4DFFFF;">投票标题：</span>
    <asp:TextBox ID="votetitle" runat="server" style="background-color:rgba(83, 78, 78, 0.35); "></asp:TextBox></center>
    <hr />
    <p class="text-center" style="font-family :方正舒体; font-size :25px; color :#4DFFFF;" style="background-color:rgba(83, 78, 78, 0.35); ">投票选项：</p>
    <center><asp:TextBox ID="TextBox1" runat="server" Width="200px" style="background-color:rgba(83, 78, 78, 0.35); "></asp:TextBox>
    <asp:Button CssClass="btn btn_default" ID="Button1" runat="server" Text="添加这一项" OnClick="Button1_Click" /></center> <br />
    <center><asp:ListBox ID="ListBox1" runat="server" Width="200px" style="background-color:rgba(83, 78, 78, 0.35); "></asp:ListBox> <br />
    <asp:Button  CssClass="btn btn_default" ID="Button2" runat="server" Text="提交投票" OnClick="Button2_Click" /></center>
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