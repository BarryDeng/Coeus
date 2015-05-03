using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using WebSite1;
public partial class Upload : System.Web.UI.Page
{
    public string mode;
    protected void Page_Load(object sender, EventArgs e)
    {
        mode = Request.QueryString["Mode"];
        if (mode == "")
            Response.Redirect(Server.MapPath("~/Login/UserCenter.aspx"));
    }
    protected void FileUpload1_HasFile (object sender,EventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType.Substring(0,5) == "image")
            {
                try
                {
                    string path;
                    if (mode == "head")
                    { 
                        path = Server.MapPath("~/App_img/head/");
                        if (!System.IO.Directory.Exists(path))
                            System.IO.Directory.CreateDirectory(path);
                        string type =  FileUpload1.PostedFile.ContentType.Substring(6, 4);
                        string imgName = HttpContext.Current.User.Identity.Name + "."+ type;
                        string newPath = path + "\\" + imgName;
                        if (System.IO.File.Exists(newPath)) System.IO.File.Delete(newPath); 
                        FileUpload1.SaveAs(newPath);
                        Response.Write("<script>alert('上传成功！');</script>");
                    }
                    else if (mode == "photo")
                    {
                        UserManager manager = new UserManager();
                        var userclass = manager.FindById(User.Identity.GetUserId()).Class;
                        path = Server.MapPath("~/App_img/photos/" + userclass + "/");
                        if (!System.IO.Directory.Exists(path))
                            System.IO.Directory.CreateDirectory(path);
                        string newPath = path + FileUpload1.PostedFile.FileName;
                        FileUpload1.SaveAs(newPath);
                        OperateDataBase opd = new OperateDataBase();
                        opd.ExceSql("insert into Photos (name,datetime,comment,class) values ('" + FileUpload1.PostedFile.FileName + "','" + DateTime.Now.ToString() + "','','" + userclass + "');");
                        Response.Write("<script>alert('上传成功！');</script>");
                    }
                    
                }
                catch
                {
                    Response.Write("<script>alert('上传失败！');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('请上传图像文件！');</script>");
            }
        }
        else
            Response.Write("<script>alert('请添加文件！');</script>");
    }
}