using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamPreparations
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblErrorMessage.Visible = false;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            DataAccessLayer DAL = new DataAccessLayer();
            string userID = txtUserID.Text;
            string name = txtName.Text;
            string password = txtPassword.Text;
            string country = ddlCountry.SelectedValue;
            string emailID = txtEmaiID.Text;


            if (DAL.UserIDExists(userID))
            {
                lblErrorMessage.Visible = true;
                lblErrorMessage.Text = "Username Already Exists!";
                lblErrorMessage.ForeColor = System.Drawing.Color.Red;


            }
            else if (DAL.EmailIDExists(emailID))
            {
                lblErrorMessage.Visible = true;
                lblErrorMessage.Text = "Email-ID Already Exists!";
                lblErrorMessage.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                lblErrorMessage.Visible = true;
                lblErrorMessage.Text = "Username available!";
                lblErrorMessage.ForeColor = System.Drawing.Color.Green;
                DAL.InsertUser(userID, name, password, country, emailID);
                Response.Redirect("Login.aspx");

            }

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUserID.Text = "";
            txtName.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
            txtEmaiID.Text = "";
            

        }
    }
}