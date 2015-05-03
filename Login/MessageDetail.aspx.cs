using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Linq;
using Microsoft.AspNet.Identity;
using WebSite1;
public partial class Login_MessageDetail : System.Web.UI.Page
{
    private string getParam(string strHref, string strName)//解析网址
    {
        int intPos = strHref.IndexOf("?");
        if (intPos < 1)
            return "";
        string strRight = strHref.Substring(intPos + 1);
        string[] arrPram = strRight.Split('&');
        for (int i = 0; i < arrPram.Length; i++)
        {
            string[] arrPramName = arrPram[i].Split('=');
            if (arrPramName[0].ToLower() == strName.ToLower()) return arrPramName[1];
        }
        return "";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["MessageID"];
        UserInfoDataContext dcdc = new UserInfoDataContext();
        var result = from r in dcdc.Message
                     where r.Id.ToString() == id
                     select r;
        if (result.Count() != 0)
            foreach (var r in result)
            {
                messagetitle.Text = r.title;
                content.InnerText = r.content;
            }
        else
            messagetitle.Text = "显示错误！";
        var manager = new UserManager();
        if (manager.IsInRole(User.Identity.GetUserId(),"Manager"))
        {
            messagetitle.ReadOnly = false;
            important.Visible = true;
            commit.Visible = true;
        }
    }
    protected void commit_Click(object sender, EventArgs e)
    {
        UserInfoDataContext lqdb = new UserInfoDataContext();
        string id = Request.QueryString["MessageID"];
        UserInfoDataContext dcdc = new UserInfoDataContext();
        var result = from r in dcdc.Message
                     where r.Id.ToString() == id
                     select r;
        if (result.Count() != 0)
            foreach (var r in result)
            {
                r.title = messagetitle.Text;
                r.content = content.Value;
                r.isIm = important.Checked ? true : false;
            }
        lqdb.SubmitChanges();
    }
}