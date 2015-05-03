using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using WebSite1;
public partial class MemberManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var manager = new UserManager();
        var user = new ApplicationUser();
        user = manager.FindById(User.Identity.GetUserId());
        if (!manager.IsInRole(user.Id, "Manager"))
        {
            ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('你不是班级管理员，无法操作!);window.location.href='../UserCenter.aspx';</script>");
            return;
        }
        UserInfoDataContext lqDB = new UserInfoDataContext();
        var result = from r in lqDB.AspNetUsers
                     where (r.Class == user.Class.ToString())
                     select r;
        GridView1.DataSource = result;
        GridView1.DataBind();
        GridView1.DataKeyNames = new string[] { "Id", "UserName", "Class", "role", "Email" };
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        UserInfoDataContext lqdb = new UserInfoDataContext();
        var result = from r in lqdb.AspNetUsers
                     where r.Id == GridView1.DataKeys[e.NewEditIndex][0].ToString()
                     select r;
        var re = result.First();
        var manager = new UserManager();
        var user = new ApplicationUser();
        user = manager.FindById(re.Id);
        if (manager.IsInRole(re.Id,"User"))
        {
            manager.AddToRole(re.Id,"Manager");
            manager.RemoveFromRole(re.Id,"User");
            user.role = "Manager";
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('该用户已经是管理员了！');</script>");
        }
        lqdb.SubmitChanges();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        if (GridView1.DataKeys[e.RowIndex][0].ToString() == User.Identity.GetUserId())
        {
            Response.Write("<script>alert('不能删除自己哦！');</script>");
            return;
        }
        UserInfoDataContext lqdb = new UserInfoDataContext();
        var result = from r in lqdb.AspNetUsers
                     where r.Id == GridView1.DataKeys[e.RowIndex][0].ToString()
                     select r;
        lqdb.AspNetUsers.DeleteAllOnSubmit(result);
        var re = result.First();
        var manager = new UserManager();
        var user = manager.FindById(re.Id);
        manager.Delete(user);
        lqdb.SubmitChanges();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int i;
        //执行循环，保证每条数据都可以更新
        for (i = 0; i < GridView1.Rows.Count; i++)
        {
            //首先判断是否是数据行
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //当鼠标停留时更改背景色
                e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'");
                //当鼠标移开时还原背景色
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=c");
            }
        }
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
            {
                ((LinkButton)e.Row.Cells[6].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除"+e.Row.Cells[1].Text+"吗?')");
                ((LinkButton)e.Row.Cells[5].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要设" + e.Row.Cells[1].Text + "为管理员吗?')");
            }
        }
    }
}