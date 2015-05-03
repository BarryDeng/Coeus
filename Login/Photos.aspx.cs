using System;
using Microsoft.AspNet.Identity;
using WebSite1;
using System.Linq;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI;
public partial class Login_Photos : System.Web.UI.Page
{
    public string userclass;
    #region 创建新图片节点
    
        /// <summary>
        /// 创建页面上的每一张图片
        /// </summary>
        private void CreateNewPhotoNode(string name,string time,string comment,string id)
        {
            HtmlGenericControl i = new HtmlGenericControl("i");
            i.Attributes.Add("class","fa fa-plus");
            HtmlGenericControl span = new HtmlGenericControl("span");
            span.Attributes.Add("class","date");
            span.InnerText = time;
            HtmlGenericControl h4 = new HtmlGenericControl("h4");
            h4.InnerHtml = "<a href='PhotoDetail.aspx?id=" + id + "'>查看大图</a>";
            HtmlGenericControl hgg1_div = new HtmlGenericControl("div");
            hgg1_div.Attributes.Add("class","inside");
            hgg1_div.Controls.Add(i);
            hgg1_div.Controls.Add(span);
            hgg1_div.Controls.Add(h4);
            HtmlGenericControl hgg2_div = new HtmlGenericControl("div");
            hgg2_div.Attributes.Add("class","post-hover text-center");
            hgg2_div.Controls.Add(hgg1_div);
            HtmlGenericControl hgg3_div = new HtmlGenericControl("div");
            hgg3_div.Attributes.Add("class","title-over");
            hgg3_div.InnerHtml = "<h4><a href='#'>"+comment+"</a></h4>";
            HtmlImage img = new HtmlImage();
            img.Src = "../App_img/photos/" + userclass + "/" + name + "";   
            HtmlGenericControl hgg4_div = new HtmlGenericControl("div");
            hgg4_div.Attributes.Add("class","post-thumb");
            hgg4_div.Controls.Add(img);
            hgg4_div.Controls.Add(hgg3_div);
            hgg4_div.Controls.Add(hgg2_div);
            HtmlGenericControl hgg5_div = new HtmlGenericControl("div");
            hgg5_div.Attributes.Add("class", "post-masonry col-md-4 col-sm-6");
            hgg5_div.Controls.Add(hgg4_div);
            content.Controls.Add(hgg5_div);
        }

        #endregion

    protected void Page_Load(object sender, EventArgs e)
    {
        UserManager manager = new UserManager();
        userclass = manager.FindById(User.Identity.GetUserId()).Class;
        UserInfoDataContext uidc = new UserInfoDataContext();
        var result = from r in uidc.Photos
                     where r.Class == userclass
                     select r;
        foreach (var re in result)
        {
            var filename = re.name;
            var update_time = re.datetime;
            var comment = re.comment;
            var id = re.Id.ToString();
            CreateNewPhotoNode(filename,update_time,comment,id);
        }
    }
}