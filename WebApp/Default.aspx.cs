using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Models;

namespace WebApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //get user input
            User login = new User
            {
                email = loginEmail.Text,
                password = loginPassword.Text
            };
            //Check if the account exists
            if (DataAccess.UserExists(login))
            {
                Response.Redirect("~/Weather");
            }
            //Notify the user if incorrect
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "<script language='javascript'>alert('Invalid Credentials');</script>"); 
            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            //get user input
            User signup = new User
            {
                email = signUpEmail.Text,
                password = signUpPassword.Text,
                permissions = ddPermissions.SelectedItem.Value
            };
            //Create the user
            DataAccess.createUser(signup);
            //Display feedback to user
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "<script language='javascript'>alert('Successfully Created a new User');</script>");
            //preopulate and Set focus to login
            signUpEmail.Text = "";
            loginEmail.Text = signup.email;
            loginPassword.Focus();
        }

    }
}