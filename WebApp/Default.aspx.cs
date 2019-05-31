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
            User login = new User
            {
                email = loginEmail.Text,
                password = loginPassword.Text
            };

            if (DataAccess.UserExists(login))
            {
                System.Diagnostics.Debug.WriteLine("true");
                Response.Redirect("~/Weather");
            }
            else
            {
                System.Diagnostics.Debug.WriteLine("false");
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "<script language='javascript'>alert('Invalid Credentials');</script>");
                
            }



        }

        // String email = Request.Form[]

    }
}