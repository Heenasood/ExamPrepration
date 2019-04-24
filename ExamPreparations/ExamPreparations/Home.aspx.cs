using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YellowMotors
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Request.Cookies["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                HttpCookie cookie = Request.Cookies["user"];
                lblWelcome.Text = "Welcome " + cookie["userID"] + "!";
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["user"];
            cookie.Expires = DateTime.Now.AddDays(-3);
            Response.Cookies.Remove("user");
            Response.Redirect("Login.aspx");
        }
    }
}