<%@ Page Title="成员管理" MasterPageFile="~/Site.master" Language="C#" AutoEventWireup="true" CodeFile="MemberManage.aspx.cs" Inherits="MemberManage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
            <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="../Content/font-awesome.css">
        <link rel="stylesheet" href="../Content/bootstrap.min.css">
        <link rel="stylesheet" href="../Content/templatemo-style.css">
        <script src="../Scripts/vendor/modernizr-2.6.2.min.js"></script>
    <style>
        body{
            padding-top:70px;
        }
    </style>
         <div id="loader-wrapper">
            <div id="loader"></div>
        </div>
    <body style=" background-image:url(../../images/bg.jpg);">  

    <h2 class="text-center" style="font-family :方正舒体; font-size :36px; color :#4DFFFF;">班级成员管理</h2>

        <hr />
    <center><asp:GridView ID="GridView1" runat="server" CellPadding="4" Font-Names="Verdana" Font-Size="X-Small" ForeColor="#333333" GridLines="None" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" OnRowDataBound="GridView1_RowDataBound" AutoGenerateColumns="false">
        
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
        <Columns>
            <asp:BoundField Visible="false" DataField="Id" />
            <asp:BoundField DataField="UserName" HeaderText="姓名" />
            <asp:BoundField DataField="Class" HeaderText="班级" />
            <asp:BoundField DataField="role" HeaderText="用户类型" />
            <asp:BoundField DataField="Email" HeaderText="email" />
            <asp:CommandField ShowEditButton="true" EditText="设为管理员" />
            <asp:CommandField ShowDeleteButton="true" />
        </Columns>
    </asp:GridView>
        </center>
 
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