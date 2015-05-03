<%@ Page Title="登录" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" Async="true" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
             <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="../Content/font-awesome.css">
        <link rel="stylesheet" href="../Content/bootstrap.min.css">
        <link rel="stylesheet" href="../Content/templatemo-style.css">
        <script src="../Scripts/vendor/modernizr-2.6.2.min.js"></script>
    <style>
        body{
            padding-top:100px;
        }
    </style>
    <body style="background-image:url(../images/bg.jpg); width:100%;  height:100%">
    <div id="loader-wrapper">
            <div id="loader"></div>
        </div>
    <h2 class="text-center" style="font-family :方正舒体; font-size :50px; color :#4DFFFF;"><%: Title %></h2>

    <div class="row"> <hr />
        <div class="col-md-7">
            <section id="loginForm">
                <div class="form-horizontal">
                   
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" ><h style="font-family :方正舒体; font-size :25px; color :#155fb0;">用户名</h></asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                CssClass="text-danger" ErrorMessage="用户名必填哦！" />
                        </div>
                    </div>
                    <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label" ><h style="font-family :方正舒体; font-size :25px; color :#155fb0;">密码</h></asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="密码必填哦！" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe"><h style="font-family :方正舒体; font-size :20px; color :#155fb0;">记住我？</h></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div style="font-family :方正舒体; font-size :50px; color :#DB70DB;"><asp:Button runat="server" OnClick="LogIn" Text="登录" CssClass="btn btn-default" /></div>
                        </div>
                    </div>
                </div>
                <p>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">没有账号？快来注册吧^_^</asp:HyperLink>
                </p>
            </section>
        </div>
         
        <div class="col-md-5">
               <p style="color:#4DFFFF; font-family:方正舒体; font-size:20px;" class="text-center">梦里，谁的单车穿过校园的白桦林<br />梦里，谁的笔记本煽动着一页页的情思<br />梦里，我们穿着黑白相间的校服<br />在校园的角落飞快穿梭着<br />还记得偷偷看自己喜欢的女生<br />还记得想了很多想说的又不敢说的话！
               </p>
        <center><img src="../images/besides.jpg" style="width:350px; height:250px;"/></center>
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

