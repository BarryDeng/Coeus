using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
public partial class Login_VoteDetail : System.Web.UI.Page
{
    XmlDocument doc;
    protected void Page_Load(object sender, EventArgs e)
    {
        doc = new XmlDocument();
        doc.Load(Server.MapPath("~/App_Data/Vote.xml"));
        XmlNodeList nodes = doc.SelectSingleNode("votelist").ChildNodes;
        foreach (XmlNode node in nodes)
            if (node.FirstChild.InnerText == Request.QueryString["VoteID"])
            {
                Votetitle.Text = Request.QueryString["VoteID"];
                XmlNodeList choice = node.LastChild.ChildNodes;
                int counts = choice.Count;
                int i = 1;
                foreach (XmlNode no in choice)
                {
                    TableRow row = new TableRow();
                    TableCell cellHead = new TableCell();
                    TableCell cellContent = new TableCell();
                    RadioButton RadioButtonAuditing = new RadioButton();
                    RadioButtonAuditing.ID = "RadioButtonAuditing" + i.ToString();
                    RadioButtonAuditing.GroupName = "Items";
                    RadioButtonAuditing.Text = no.InnerText +"——————有" +no.Attributes["selected"].Value + "人已选择这一项";
                    cellHead.Controls.Add(RadioButtonAuditing);
                    cellHead.BackColor = System.Drawing.Color.FromName("#EFEFEF");
                    cellHead.BorderWidth = 1;
                    cellHead.BorderColor = System.Drawing.Color.FromName("#CCCCCC");
                    cellHead.HorizontalAlign = HorizontalAlign.Left;
                    cellHead.Width = 60;
                    cellContent.BorderColor = System.Drawing.Color.FromName("#CCCCCC");
                    cellContent.BackColor = System.Drawing.Color.FromName("#EFEFEF");
                    cellContent.BorderWidth = 1;
                    cellContent.HorizontalAlign = HorizontalAlign.Left;
                    cellContent.Width = 100;
                    row.Cells.Add(cellHead);
                    row.Height = 22;
                    this.Table1.BorderColor = System.Drawing.Color.FromName("#CCCCCC");
                    this.Table1.Width = 600;
                    this.Table1.Rows.Add(row);
                    ++i;
                }
                Button1.Visible = true;
            }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        for (int i = 1; i <= Table1.Rows.Count; ++i)
            if (((RadioButton)Master.FindControl("MainContent").FindControl("RadioButtonAuditing" + i.ToString())).Checked == true)
            {
                XmlNode r = doc.SelectSingleNode("votelist/vote[title='" + Request.QueryString["VoteID"] + "']/items/item[" + i + "]");
                r.Attributes["selected"].Value = (int.Parse(r.Attributes["selected"].Value.ToString()) + 1).ToString();
                break;
            }
        doc.Save(Server.MapPath("~/App_Data/Vote.xml"));
        Response.Write("<script>alert('投票成功！');window.location.href = 'UserCenter.aspx';</script>");
    }
}