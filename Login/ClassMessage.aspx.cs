using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using Microsoft.AspNet.Identity;
using WebSite1;
using System.Data;
public partial class ClassMessage : System.Web.UI.Page
{
    UserManager manager = new UserManager();
    ApplicationUser user = new ApplicationUser();
    protected void Page_Load(object sender, EventArgs e)
    {
        user = manager.FindById(HttpContext.Current.User.Identity.GetUserId());
        Label1.Text = user.Class + "班的通知列表";
        UserInfoDataContext lqDB = new UserInfoDataContext();
        var result = from r in lqDB.Message
                     where (r.@class == user.Class.ToString())
                     select r ;
        GridView1.DataSource = result.OrderByDescending(p => p.datetime).ToList();
        GridView1.DataBind();
        GridView1.DataKeyNames = new string[] { "id", "class", "writer", "datetime" };
        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        {
            var re = result.OrderByDescending(p => p.datetime).ToList();
            if (re[i].isIm == true)
            {
                GridView1.Rows[i].BackColor = System.Drawing.Color.Red;
            }
        }
        var result2 = from r in lqDB.fileupload
                      where (r.@class == user.Class.ToString())
                      select r;
        DataList1.DataSource = result2;
        DataList1.DataBind();
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("~/App_Data/Vote.xml"));
        GridView2.DataSource = ds;
        GridView2.DataBind();

    }

    protected void GridView1_RowDataBound(object sender,GridViewRowEventArgs e)
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
    }
}