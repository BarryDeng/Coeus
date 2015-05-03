using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;
using WebSite1;
using System.Configuration;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity.EntityFramework;

public partial class Account_Register : Page
{   
    RoleManager rolemanager = new RoleManager();
    UserManager manager = new UserManager();
    protected void Page_Load(object sender,EventArgs e)
    {   
        if (!rolemanager.RoleExists("User"))
            rolemanager.Create(new IdentityRole("User"));
        if (!rolemanager.RoleExists("Manager"))
            rolemanager.Create(new IdentityRole("Manager"));
    }
    protected void CreateUser_Click(object sender, EventArgs e)
    {
        var user = new ApplicationUser() { UserName = UserName.Text, Class = UserClass.Value,role = RadioButton1.Checked?"Manager":"User" };
        IdentityResult result = manager.Create(user, Password.Text);
        if (result.Succeeded)
        {
            IdentityHelper.SignIn(manager, user, isPersistent: false);
            if (RadioButton1.Checked == true)
                manager.AddToRole(user.Id, "Manager");
            else
                manager.AddToRole(user.Id, "User");
            IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);  
        }
        else
        {
            ErrorMessage.Text = result.Errors.FirstOrDefault();
        }
    }
}