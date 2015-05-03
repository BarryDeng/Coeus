using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_PhotoDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var imgId = Request.QueryString["id"];
        UserInfoDataContext uidc = new UserInfoDataContext();
        var result = from re in uidc.Photos
                     where re.Id.ToString() == Request.QueryString["id"]
                     select re;
        try
        {
            var r = result.First();
            photo.ImageUrl = "../App_img/photos/" + r.Class + "/" + r.name + "";
            if (r.comment == "")
            {
                commentText.Visible = true;
                submit.Visible = true;
            }
        }
        catch
        {
            
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        UserInfoDataContext uidc = new UserInfoDataContext();
        var result = from re in uidc.Photos
                     where re.Id.ToString() == Request.QueryString["id"]
                     select re;
        try
        {
            result.First().comment = commentText.Value;
            uidc.SubmitChanges();
            Response.Write("<script>alert('修改成功！');</script>");
        }
        catch
        {
            Response.Write("<script>alert('修改失败！');</script>");
        }
    }
}