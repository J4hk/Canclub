using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Main_Project
{
    public partial class UpdatePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user_ = (User)Session["current_user"];
            if (!IsPostBack)
            {
                if (Session["current_user"] != null)
                {
                   
                    using (var myDb = new ProjectEntities())
                    {
                        var user = (from x in myDb.User where (x.UserId == user_.UserId && x.IsActive == true) select x).SingleOrDefault();

                        imgUser.ImageUrl = "~/images/" + user.UserPhoto;
                        TextBoxName.Text = user.Username;
                        TextBoxPassword.Text = user.Password;
                        TextBoxFirstName.Text = user.FirstName;
                        TextBoxLastName.Text = user.LastName;
                        TextBirtDate.Text = user.BirthDate.ToString();

                        TextBoxEmail.Text = user.Email;
                        TextBoxDepartment.Text = user.Department;
                        
                        
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            using (var myDb = new ProjectEntities())
            {
                User user_ = (User)Session["current_user"];
                var user = (from x in myDb.User where (x.UserId == user_.UserId && x.IsActive == true) select x).SingleOrDefault();

                user.Username = TextBoxName.Text;
                user.Password = TextBoxPassword.Text;
                user.FirstName = TextBoxFirstName.Text;
                user.LastName = TextBoxLastName.Text;
                user.Department = TextBoxDepartment.Text;
                user.BirthDate = Convert.ToDateTime(TextBirtDate.Text);
                user.Email = TextBoxEmail.Text;
                user.IsActive = true;
                

                
                
              
                if (fuUser.HasFile)
                {
                    fuUser.SaveAs(Server.MapPath("~/images/" + fuUser.FileName));
                    user.UserPhoto = fuUser.FileName;
                }

                myDb.SaveChanges();

                Response.Redirect("~/UpdatePage.aspx");
            }
        }

    }
}
