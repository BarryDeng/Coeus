using System;
using Microsoft.AspNet.Identity;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSite1;
public partial class NewMessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var manager = new UserManager();
            var user = new ApplicationUser();
            user = manager.FindById(User.Identity.GetUserId());
            if (!manager.IsInRole(user.Id, "Manager"))
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('你不是班级管理员，无法操作!);window.location.href='../UserCenter.aspx';</script>");
        }
    }
    protected void commit_Click(object sender, EventArgs e)
    {
        var user = new ApplicationUser();
        var id = HttpContext.Current.User.Identity.GetUserId();
        var manager = new UserManager();
        user = manager.FindById(id);
        if (manager.IsInRole(id,"Manager"))
        {
            string tit = stitle.Text.Trim();
            string cont = content.Value;
            bool im = important.Checked;
            string com = "insert into Message (class,writer,title,content,isIm,datetime) values ('"+user.Class+"','"+user.UserName+"',N'"+tit+"',N'"+cont+"','"+im+"','"+DateTime.Now.ToString()+"')";
            OperateDataBase opd = new OperateDataBase();
            if (opd.ExceSql(com))
                Response.Write("<script language=javascript>alert('发布成功！');window.location.href='../UserCenter.aspx';</script>");
            else 
                Response.Write("<script lauguage=javascript>alert('发布失败！');</script>");
        }
        else
        {
            Response.Write("<script lauguage=javascript>alert('你不是管理员！无法操作！');</script>");
        }
        
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        stitle.Text = "";
        content.Value = "";
        important.Checked = false;
    }
}