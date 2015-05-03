using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using WebSite1;
using System.Xml;

public partial class Vote : System.Web.UI.Page
{
    ApplicationUser user;
    UserManager manager;
    XmlDocument doc;
    protected void Page_Load(object sender, EventArgs e)
    {
        manager = new UserManager();
        user = manager.FindById(User.Identity.GetUserId());
        doc = new XmlDocument();
        doc.Load(Server.MapPath("~/App_Data/Vote.xml"));
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Response.Write("<script>alert('内容不能为空o(>﹏<)o');</script>");
            return;
        }
        ListItemCollection it = ListBox1.Items;
        foreach (ListItem i in it)
            if (i.ToString() == TextBox1.Text)
            {
                Response.Write("<script>alert('已经有这一项了o(>﹏<)o');</script>");
                return;
            }
        ListBox1.Items.Add(TextBox1.Text);
        TextBox1.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (votetitle.Text == "")
        {
            Response.Write("<script>alert('标题不能为空o(>﹏<)o');</script>");
            return;
        }
        if (ListBox1.Items.Count < 2 )
        {
            Response.Write("<script>alert('选项太少o(>﹏<)o');</script>");
            return;
        }
        string sTitle = votetitle.Text;
        ListItemCollection it = ListBox1.Items;
        XmlElement votenode = doc.CreateElement("vote");
        doc.DocumentElement.PrependChild(votenode);
        XmlElement VoteTitleNode = doc.CreateElement("title");
        XmlElement VoteUserNode = doc.CreateElement("user");
        XmlElement VoteTimeNode = doc.CreateElement("time");
        XmlElement VoteClassNode = doc.CreateElement("class");
        XmlElement VoteItemsNode = doc.CreateElement("items");
        VoteTitleNode.AppendChild(doc.CreateTextNode(sTitle));
        VoteClassNode.AppendChild(doc.CreateTextNode(user.Class));
        VoteUserNode.AppendChild(doc.CreateTextNode(user.UserName));
        VoteTimeNode.AppendChild(doc.CreateTextNode(DateTime.Now.ToString()));
        foreach (var str in it)
        {
            XmlElement VoteItemNode = doc.CreateElement("item");
            VoteItemNode.AppendChild(doc.CreateTextNode(str.ToString()));
            VoteItemNode.SetAttribute("selected", "0");
            VoteItemsNode.AppendChild(VoteItemNode);
        }
        votenode.AppendChild(VoteTitleNode);
        votenode.AppendChild(VoteUserNode);
        votenode.AppendChild(VoteTimeNode);
        votenode.AppendChild(VoteClassNode);
        votenode.AppendChild(VoteItemsNode);
        doc.Save(Server.MapPath("~/App_Data/Vote.xml"));
        Response.Write("<script>alert('提交成功！');window.location.href = 'UserCenter.aspx';</script>");
    }
}