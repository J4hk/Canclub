using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Main_Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (var myDB = new ProjectEntities())
            {
                var loginuser = (from u in myDB.User where u.Username == TextBoxUserName.Text && u.Password == TextBoxPassword.Text select u).SingleOrDefault();
                if (loginuser != null)
                {

                    if (loginuser.UserType == "admin")
                    {
                        Session["current_user"] = loginuser;
                        Response.Redirect("ListEvent.aspx");
                    }
                    else
                    {
                        Session["current_user"] = loginuser;
                        Response.Redirect("ListEvent.aspx");
                    }                     
                }
                else
                {

                    Label4.Visible = true;

                }


            }
        }
    }
}