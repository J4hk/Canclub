using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Main_Project
{
    public partial class Project : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User us = (User)Session["current_user"];
            using (var myDB = new ProjectEntities())
            {
                var user = (from u in myDB.User where (u.IsActive == true && u.UserId == us.UserId) select u).SingleOrDefault();
                Label1.Text = user.FirstName + " " + user.LastName;
                Image1.ImageUrl = "~/images/" + user.UserPhoto;
                if (user.UserType=="admin")
                {
                    lblWel.Text = "Welcome " + user.FirstName;
                }
                else
                {
                    lblWel.Text = "Welcome" + user.FirstName;
                    HyperLink1.Visible = false;
                }
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("current_user");
            Response.Redirect("Login.aspx");
        }
    }
}