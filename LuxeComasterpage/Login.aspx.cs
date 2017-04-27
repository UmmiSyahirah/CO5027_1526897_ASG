using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuxeComasterpage
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var identityDbcontext = new IdentityDbContext("IdentityConnectionString");
                var userStore = new UserStore<IdentityUser>(identityDbcontext);
                var userManager = new UserManager<IdentityUser>(userStore);
                var user = userManager.Find(textUsername.Text, textPassword.Text);
                if (user != null)
                {
                    //Login in instructions
                    LogUserIn(userManager, user);
                    Server.Transfer("privatePage.aspx", true);
                }
                else
                {
                    LitText.Text = "Cannot log in due to invalid username or password";

                }
            }
        }

        private void LogUserIn(UserManager<IdentityUser> userManager, IdentityUser user)
        { 
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
        authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
        }
    }
}