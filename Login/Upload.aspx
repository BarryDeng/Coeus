<%@ Page Title="上传照片" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Upload.aspx.cs" Inherits="Upload" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<link href="../Content/fileinput.css" media="all" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="../Content/font-awesome.css">
        <link rel="stylesheet" href="../Content/bootstrap.min.css">
        
        <script src="../Scripts/vendor/modernizr-2.6.2.min.js"></script>
<script src="../Scripts/fileinput.js" type="text/javascript"></script>
         <div id="loader-wrapper">
            <div id="loader"></div>
        </div>
<body style="background-image:url(../images/bg.jpg)">
<div class="header">
<p class="text-center" style="font-family :方正舒体; font-size :72px; color :#4DFFFF;">快来上传你的靓照吧</p>
</div>
<div style="background-color:rgba(83, 78, 78, 0.35); ">
<asp:FileUpload CssClass="file" ID="FileUpload1" type="file" runat="server" data-show-upload="false" />
</div>
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