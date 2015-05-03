<%@ Page Title="照片墙" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Photos.aspx.cs" Inherits="Login_Photos" %>

<asp:Content ContentPlaceHolderID="MainContent" ID="BodyContent" runat="server">
    
        
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="../Content/font-awesome.css">
        <link rel="stylesheet" href="../Content/bootstrap.min.css">
        <link rel="stylesheet" href="../Content/templatemo-style.css">
        <script src="../Scripts/vendor/modernizr-2.6.2.min.js"></script>
    <style>



        body {
            background-color: #ffffff;
            background-image: url(../images/bg.jpg);
            background-attachment:fixed;
            background-position:center;
        }

    </style>
     <div id="loader-wrapper">
            <div id="loader"></div>
        </div>
    <body>
        
       
        

        
            
        <!-- SITE TOP -->
        <div class="site-top">

            <div class="site-banner">
                <div class="container">
                    <div class="row">
                        <div class="col-md-offset-2 col-md-8 text-center">
                            <h2 style="color: #00ffff;">欢迎来到班级照片墙~~~<span class="blue">有没有看到你咩~~</span><span class="green">萌萌哒</span></h2>
                            <p style="color:#00ffff">岁月绵长，我帮你来记录生活的点点滴滴~~</p>
                            <a href="Upload.aspx?Mode=photo"><input class="btn btn-danger" type="button" runat="server" id="newphoto" value="马上提交最新照片"></a>
                        </div>
                    </div>

                </div>
            </div> <!-- .site-banner -->
        </div> <!-- .site-top -->
        
        <!-- MAIN POSTS -->
        <div class="main-posts">
            <div class="container">
                <div class="row">
                    <div class="blog-masonry masonry-true" id="content" runat="server">
                        
                    </div>
                </div>
            </div>
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