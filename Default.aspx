<%@ Page Title="主页" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
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
    <body style="background-image:url(../images/bg.jpg);">
    <div class="container theme-showcase" role="main" />
           
    <div class="jumbotron" style="background-image:url(../images/bg.jpg);">
        
    <h1 style="color:#0ed3c1 ; font-family:Bradley Hand ITC ; font-size :75px">Hey,boys and girls!</h1>
       
    <p style="color:#0ed3c1 ; font-family:方正舒体">欢迎来到班级互动交流平台，我们将为您提供最优质的服务，一切只为了最美的那个您，么么哒O(∩_∩)O</p>
      
    </div>      
    <div class="page-header" style="width:1140px; height:600px; left:380px; top:260px; ">

    <h1 style="font-size:75px ; color:#00ff90; font-family:方正舒体 " class="text-center"><marquee direction=up onmouseover=this.stop() onmouseout=this.start()>We are acquainted with each other not long,</br>we are really one family</marquee></h1>
    <h3 style="color:#1165b5; font-family:方正舒体; font-size:36px;" class="text-left">一切都只因你我曾经相遇在这个令人怀念的地方</h3>
        <br />
    <h2 style="color:#1165b5 ; font-family:方正舒体; font-size:36px;" class="text-left">--校园</h2>      
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
</asp:Content>
