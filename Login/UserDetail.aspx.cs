using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using WebSite1;
using Microsoft.AspNet.Identity;
public partial class UserDetail : System.Web.UI.Page
{
    ApplicationUser user;
    UserManager manager;
    protected void Page_Load(object sender, EventArgs e)
    {
        user = new ApplicationUser();
        manager = new UserManager();
        user = manager.FindById(User.Identity.GetUserId());
    }
    protected void save(object sender, EventArgs e)
    {
        try
        {
            user.Email = Email.Value;
            user.motto = Motto.Value;
            user.PhoneNumber = Phone.Value;
            Response.Write("<script language=javascript>alert('修改成功！');</script>");
        }
        catch
        {
            Response.Write("<script language=javascript>alert('修改失败！');</script>");
        }
    }
}