using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamPreparations
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblErrorMessage.Visible = false;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataAccessLayer loginDAL = new DataAccessLayer();
            string userID = txtLoginUserID.Text;
            string password = txtLoginPassword.Text;

            if (loginDAL.VerifyUser(userID, password))
            {
                HttpCookie cookie = new HttpCookie("user");
                cookie.Values["userID"] = loginDAL.getUserID();
                cookie.Expires = DateTime.Now.AddDays(3);

                Response.Cookies.Add(cookie);
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblErrorMessage.Visible = true;
                lblErrorMessage.Text = "Please Enter Valid UserID/Password";
                lblErrorMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}