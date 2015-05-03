<%@ Page Title="创建班级通知" Language="C#" AutoEventWireup="true" CodeFile="NewMessage.aspx.cs" MasterPageFile="~/Site.master" Inherits="NewMessage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
            <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="../Content/font-awesome.css">
        <link rel="stylesheet" href="../Content/bootstrap.min.css">
        <link rel="stylesheet" href="../Content/templatemo-style.css">
        <script src="../Scripts/vendor/modernizr-2.6.2.min.js"></script>
    <style>
        .diy{
            font-family :方正舒体; font-size :20px; color :#00ffff;
        }
        .btn{
            font-family :方正舒体; font-size :20px; color :#225594;
        }
    </style>

    <body style=" background-image:url(../../images/bg.jpg);">  
               <div id="loader-wrapper">
            <div id="loader"></div>
        </div>
    <h3 class="text-center" style="font-family :方正舒体; font-size :45px; color :#00ffff;">马上发布班级的最新通知！</h3>
        <center><span style="font-family :方正舒体; font-size :25px; color :#00ffff;">通知标题：</span>
        <asp:TextBox ID="stitle" runat="server" MaxLength="100" style="background-color:rgba(83, 78, 78, 0.35); "></asp:TextBox></center>
        
        
        
        <center><asp:CheckBox ID="important" runat="server" Text="重要通知" CssClass="diy" /></center>
    <p class="text-center" style="font-family :方正舒体; font-size :25px; color :#00ffff;">通知内容：</p>
    <center><textarea id="content" cols="200" rows="20" style="background-color:rgba(83, 78, 78, 0.35); " runat="server" maxlength="500"></textarea></center>
    
       
        
    <br />
        <div class="text-center">
    <asp:Button ID="commit" runat="server" Text="立即发布！"   CssClass="btn btn_default" OnClick="commit_Click" />
    <asp:Button ID="reset" runat="server" Text="重置内容"  CssClass="btn btn_default" OnClick="reset_Click" /></div>
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