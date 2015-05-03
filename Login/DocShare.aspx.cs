using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSite1;
using Microsoft.AspNet.Identity;
public partial class DocShare : System.Web.UI.Page
{
    UserManager manager;
    ApplicationUser user;
    protected void Page_Load(object sender, EventArgs e)
    {
        manager = new UserManager();
        user = new ApplicationUser();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        user = manager.FindById(User.Identity.GetUserId());
        if(FileUpload1.HasFile)
        {
            try
            {
                string username = HttpContext.Current.User.Identity.Name;
                string serverPath = Server.MapPath("~/Upload/");
                if (!System.IO.Directory.Exists(serverPath))
                    System.IO.Directory.CreateDirectory(serverPath);
                string filename = FileUpload1.FileName;
                string path = serverPath + "\\" +filename;
                FileUpload1.SaveAs(path);
                OperateDataBase opd = new OperateDataBase();
                string com = "insert into fileupload (class,name,fname) values ('"+user.Class+"','"+username+"',N'"+filename+"')";
                opd.ExceSql(com);
                ClientScript.RegisterStartupScript(GetType(), "", "alert('上传成功！');window.location.href='UserCenter.aspx';",true);
            }
            catch
            {
                ClientScript.RegisterStartupScript(GetType(), "", "alert('上传失败！');", true);
            }
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "", "alert('请选择你要上传的文件！');", true);
        }
    }
}