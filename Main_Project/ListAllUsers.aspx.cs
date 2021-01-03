using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Main_Project
{
    public partial class ListAllUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user = (User)Session["current_user"];
            User loggeduser = (User)Session["current_user"];
            if (user != null)
            {
                using (var mydb = new ProjectEntities())
                {

                    var allusers = (from u in mydb.User
                                    where (u.IsActive == true)
                                    select u).ToList();

                    GridView1.DataSource = allusers;
                    GridView1.DataBind();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }


    

         

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        
            
          

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            using (var myDB = new ProjectEntities())
            {

                int id = Int32.Parse(TextBoxDELETE.Text);
                var USER = (from x in myDB.User
                            where (id == x.UserId)
                            select x).SingleOrDefault();

                USER.IsActive = false;
                myDB.SaveChanges();

            }


        }
    }
}

