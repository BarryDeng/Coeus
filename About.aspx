<%@ Page Title="关于" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
            <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="../Content/font-awesome.css">
        <link rel="stylesheet" href="../Content/bootstrap.min.css">
        <link rel="stylesheet" href="../Content/templatemo-style.css">
        <script src="../Scripts/vendor/modernizr-2.6.2.min.js"></script>
         <div id="loader-wrapper">
            <div id="loader"></div>
        </div>
    <style>
        body{
            padding-top:100px;
        }
    </style>
    <body style="background-image:url(../images/bg.jpg)">
    <h2 style="color:#00ffff; font-family:方正舒体; font-size:50px;" class="text-center"><%: Title %></h2>
    <h3 style="color:#00ffff; font-family:方正舒体; font-size:40px;" class="text-center">班级信息互动平台</h3>
    <p style="color:#00ffff; font-family:方正舒体; font-size:25px;" class="text-center">邓理、邹志华、闫珺</p>
    <p style="color:#00ffff; font-family:方正舒体; font-size:25px;" class="text-center">邮箱：<a href="mailto:1337762760@qq.com" >1337762760@qq.com</a></p>
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
