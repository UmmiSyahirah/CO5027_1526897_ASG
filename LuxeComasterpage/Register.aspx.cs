using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuxeComasterpage
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");

            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);

            var user = new IdentityUser() { UserName = textUsername.Text, Email = textEmail.Text };
            IdentityResult result = manager.Create(user, textPassword.Text);

            IdentityRole endUserRole = new IdentityRole("admin");

            roleManager.Create(endUserRole);
            manager.AddToRole(user.Id, "admin");

            if (result.Succeeded)
            {
                Server.Transfer("Login.aspx", true);
            }
            else
            {
                LtrError.Text = "An error has occured: " + result.Errors.FirstOrDefault();
           }
        }
    }
}