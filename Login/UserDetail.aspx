<%@ Page Title="UserDetail" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UserDetail.aspx.cs" Inherits="UserDetail" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" > 
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="../Content/font-awesome.css">
        <link rel="stylesheet" href="../Content/bootstrap.min.css">
        <link rel="stylesheet" href="../Content/templatemo-style.css">
        <script src="../Scripts/vendor/modernizr-2.6.2.min.js"></script>
    
<style>
body#contain{
	padding-top:70px;
}

hr.divider{
	margin:90px;
}

#information .col-md-4{
text-align:center;
}
h1{
    color:#4DFFFF;
    font-family:华文彩云;
    font-size:30px;
}
</style>

<body id="contain" style="background-image:url(../images/bg.jpg)">
        <div id="loader-wrapper">
            <div id="loader"></div>
        </div>

<div class="header">
<p class="text-center" style="font-family :方正舒体; font-size :72px; color :#4DFFFF;">个人信息</p>
</div>
    <br />
    <br />

<center><div class="container">
<p class="text-center" style="font-family :华文行楷; font-size :30px; color :#4DFFFF;">
班级:
<asp:Label runat="server" ID="userclass"></asp:Label>
</p>

<div class="form-group">
  <label class="sr-only" for="exampleInputEmail2">个性签名</label><h1>个性签名</h1>
  <textarea runat="server" id="Motto" class="form-control" rows="3" style="background-color:rgba(83, 78, 78, 0.35); " placeholder="个性签名（20字以内）"></textarea>
</div>
    <br />
 

<div class="form-group">
  <label class="sr-only" for="exampleInputEmail2">手机号码</label><h1>手机号码</h1>
  <textarea runat="server" id="Phone" class="form-control" rows="3" style="background-color:rgba(83, 78, 78, 0.35); " placeholder="手机号码"></textarea>
</div>
    <br />
 

<div class="form-group">
    
<label class="sr-only" for="Email">邮箱</label><h1>邮箱地址</h1>
    
<input type="email" class="form-control" id="Email" style="background-color:rgba(83, 78, 78, 0.35); " placeholder="请输入你的邮箱地址" runat="server">
  
</div>
    <br />
    
<asp:Button class="btn btn-success" type="button" style="color:#4DFFFF" runat="server" onclick="save" Text="保存"></asp:Button> 

</div></center>
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
