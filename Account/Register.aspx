<%@ Page Title="注册" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

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
    <script>
        function vali() { 
            var it = document.getElementById("<%:UserClass.ClientID%>");
            if (it.value.length != 7) {
                alert("班级号必须为7位！");
                it.value = "";
            }
        };
    </script>
         <div id="loader-wrapper">
            <div id="loader"></div>
        </div>
    <body style="background-image:url(../images/bg.jpg)">
    <h2 style="font-family:华文彩云; color:#00ffff;font-size:50px;"><%: Title %></h2>
    
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4 style="font-family:华文彩云; color:#00ffff;font-size:25px;">创建新用户</h4>
        <hr />

        <center><asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">用户名</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="text-danger" ErrorMessage="用户名必填" />
            </div>
        </div>
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserClass" CssClass="col-md-2 control-label">班级</asp:Label>
            <div class="col-md-10">
                <input type="text" runat="server" ID="UserClass" class="form-control" onblur="vali()" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserClass" ID="userclasserror"
                    CssClass="text-danger" ErrorMessage="班级必填" />
            </div>
        </div>
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserClass" CssClass="col-md-2 control-label">角色</asp:Label>
            <div class="col-md-10">
                <asp:RadioButton ID="RadioButton1" GroupName="role" runat="server" Text="班级管理员" />
                <asp:RadioButton ID="RadioButton2" GroupName="role" runat="server" Text="班级成员" Checked="true" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">密码</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="密码必填" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">确认密码</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="确认密码必填" />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="密码和确认密码不匹配" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="注册" CssClass="btn btn-default" />
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
            $(window).load(function () { // makes sure the whole site is loaded
                $('#loader').fadeOut(); // will first fade out the loading animation
                $('#loader-wrapper').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
                $('body').delay(350).css({ 'overflow-y': 'visible' });
            })
            //]]>
        </script>
        </body>
</asp:Content>

