using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using WebSite1;
using System.IO;
public partial class UserCenter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var username = HttpContext.Current.User.Identity.Name;
        System.IO.DirectoryInfo dir = new System.IO.DirectoryInfo(Server.MapPath("~/App_img/head/"));
        System.IO.FileInfo[] fs = dir.GetFiles(username+".*");
        foreach (FileInfo f in fs)
            picture.ImageUrl = "../App_img/head/"+ f.Name;
        var id = HttpContext.Current.User.Identity.GetUserId();
        var manager = new UserManager();
        var user = new ApplicationUser();
        user = manager.FindById(id);
        if (manager.IsInRole(id, "Manager"))
            ClientScript.RegisterStartupScript(GetType(), "", "<script>document.getElementById('admin').removeAttribute('disabled');</script>");
    }   


}