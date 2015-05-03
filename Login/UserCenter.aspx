<%@ Page Title="用户中心" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="UserCenter.aspx.cs" Inherits="UserCenter" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
    #information .col-md-4
    {
    text-align:center;
    }
    img
    {
        height:auto;
    }
        .carousel {
            height: 500px;
        }
        .carousel .item {
            height: 500px;
        }
        .carousel .item img {
            width: 100%;
        }
    </style>

<body id="container" style="background-image:url(../images/bg.jpg)">
<div class="header">
        <span class="text-center" style="font-family :方正舒体; font-size :72px; color :#00ffff">欢迎，<%: HttpContext.Current.User.Identity.Name %> </span>
        <asp:Label ID="classnum" runat="server" Text=""></asp:Label>
        <asp:image CssClass="img-circle" runat="server" ID="picture" ImageUrl="~/images/头像.png" AlternateText="还未添加头像哦^_^" Width="100px" />
        <hr>
</div>
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      <li data-target="#carousel-example-generic" data-slide-to="3"></li>
      <li data-target="#carousel-example-generic" data-slide-to="4"></li>
      <li data-target="#carousel-example-generic" data-slide-to="5"></li>
  </ol>


  <div class="carousel-inner" role="listbox">
    <div class="item active">
      
      <div class="carousel-caption" style="color:#28e68f; font-family:方正舒体; font-size:50px;">
         当你孤独时，风儿就是我的歌声，愿它能使你得到片刻的安慰；当你骄傲时，雨点就是我的警钟，愿它能使你获得永恒的谦逊。
      </div>
    </div>
    <div class="item">
      
      <div class="carousel-caption"  style="color:#28e68f; font-family:方正舒体; font-size:50px;">
        当你眼泪忍不住要流出来的时候，睁大眼睛，千万别眨眼！你会看到世界由清晰变模糊的全过程，心会在你   泪水落下的那一刻变得清澈明晰。盐。注定要融化的，也许是用眼泪的方式。
      </div>
    </div>
    <div class="item">
      
      <div class="carousel-caption"  style="color:#28e68f; font-family:方正舒体; font-size:50px;">
        花开花落，四年的时间，并不长。此时的我们，又伫立在十字路口，也只有此时的我们，才真正尝到别离的滋味。
      </div>
    </div>
          <div class="item">
      
      <div class="carousel-caption"  style="color:#28e68f; font-family:方正舒体; font-size:50px;">
        挥手告别，扬帆远航，忘不了的，是你抛出的那根友谊的缆绳，无形中牢牢地系在我的心上。
      </div>
    </div>
                <div class="item">
      
      <div class="carousel-caption"  style="color:#28e68f; font-family:方正舒体; font-size:50px;">
        离别时，希望你能记住我。不要问，善变的世界，明天是否依然如故。 
      </div>
    </div>
               <div class="item">
      
      <div class="carousel-caption"  style="color:#28e68f; font-family:方正舒体; font-size:50px;">
        让我们开开心心的毕业吧!我的同学们.忘掉不高兴的事,保留最完美的回忆。
      </div>
    </div>
  </div>

  <div>
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
    </div>
        <hr />
</div>

    <br />
    <br />
    <div class="content" id="information"  style="background-image:url(../images/usercenter_bg.png)">
        <div class="row">
        <div class="col-md-4">
        <img class="img-circle" src="../images/信息.png" alt="信息"><br />
 
        <div class="btn-group">
            <button class="btn btn-lg btn-default dropdown-toggle" data-toggle="dropdown" type="button">信息<span class="caret"></span></button>
            <ul class="dropdown-menu">
    	        <li><a href="UserDetail.aspx">完善资料</a></li>
    	        <li><a href="Upload.aspx?mode=head">上传头像</a></li>
    	   </ul>
        </div>
        </div>
    <div class="col-md-4">
        <img class="img-circle" src="../images/管理.png" alt="功能"><br />
        <div class="btn-group">
            <button class="btn btn-lg btn-default dropdown-toggle" data-toggle="dropdown" type="button">功能<span class="caret"></span></button>
            <ul class="dropdown-menu">
    	        <li><a href="ClassMessage.aspx">班级消息、投票、下载</a></li>
    	        <li><a href="Vote.aspx">发起投票</a></li>
                <li><a href="DocShare.aspx">文档共享</a></li>
                <li><a href="Photos.aspx">班级照片墙</a></li>
            </ul>
        </div>
    </div>

    <div class="col-md-4">
        <img class="img-circle" src="../images/功能.png" alt="管理"><br />

        <div class="btn-group">
      
        <button id="admin" class="btn btn-lg btn-default dropdown-toggle" data-toggle="dropdown" type="button" disabled="disabled">管理<span class="caret"></span></button>
    
        <ul class="dropdown-menu">
    	
            <li><a href="Manage/MemberManage.aspx">人员管理</a></li>
    	
            <li><a href="Manage/NewMessage.aspx">消息发布</a></li>
    	   
        </ul>
        </div>
    </div>
</div>
</div>

</body>
</asp:Content>
