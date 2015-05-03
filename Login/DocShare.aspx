<%@ Page Title="文档分享" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="DocShare.aspx.cs" Inherits="DocShare" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <link href="../Content/fileinput.css" media="all" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="../Content/font-awesome.css">
        <link rel="stylesheet" href="../Content/bootstrap.min.css">
        <link rel="stylesheet" href="../Content/templatemo-style.css">
        <script src="../Scripts/vendor/modernizr-2.6.2.min.js"></script>
    <style>
        body {
            padding-top: 100px;
        }
    </style>
<script src="../Scripts/fileinput.js" type="text/javascript"></script>
<body style="background-image:url(../images/bg.jpg)">
        <div id="loader-wrapper">
            <div id="loader"></div>
        </div>

<div class="header">
<p class="text-center" style="font-family :方正舒体; font-size :72px; color :#DB70DB;">文件分享</p>
</div>
    <br /><br />
<asp:FileUpload CssClass="file" ID="FileUpload1" type="file" runat="server" data-show-upload="false" />
<div class="well" style="text-align:right;border:hidden;background-color:transparent;">
<asp:Button CssClass="btn btn-danger" ID="Button1" runat="server" Text="上传" OnClick="Button1_Click1"  />
</div>



    <script src="../Scripts/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="../Scripts/vendor/jquery-1.10.2.min.js"><\/script>')</script>
        <script src="../Scripts/min/plugins.min.js"></script>
        <script src="../Scripts/min/main.min.js"></script>

        <!-- Preloader -->
        <script type="text/javascript">
            //<![CDATA[
            $(window).load(function () { // makes sure the whole site is loaded
                $('#loader').fadeOut(); // will first fade out the loading animation
                $('#loader-wrapper').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
                $('body').delay(350).css({ 'overflow-y': 'visible' });
            })
            //]]>
        </script>



</body>
</asp:Content>