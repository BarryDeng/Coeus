<%@ Page Title="照片详情" Language="C#" AutoEventWireup="true" CodeFile="PhotoDetail.aspx.cs" Inherits="Login_PhotoDetail" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="col-md-8 ">
         <center><input type="text" runat="server" id="commentText" class="input-lg" placeholder="在这里输入图片的描述" visible="false" style="text-align:center; " />
            <asp:Button ID="submit" OnClick="submit_Click" runat="server" CssClass="btn btn-lg" Text="提交" Visible="false" /></center>
        </div>
            <asp:Image ID="photo" AlternateText="出错了！" runat="server"/>

    </div>
    </form>
</body>
</html>
