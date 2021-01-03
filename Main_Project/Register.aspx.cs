using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Main_Project
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label11.Visible = false;
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            using (var myDB = new ProjectEntities()) { 
            var newuser = new User();
            newuser.Username = TextBoxName.Text;
            newuser.Password = TextBoxPassword.Text;
            newuser.FirstName = TextBoxFirstName.Text;
            newuser.LastName = TextBoxLastName.Text;
            newuser.BirthDate = Convert.ToDateTime(TextBirtDate.Text);
            newuser.Email = TextBoxEmail.Text;
            newuser.Department = TextBoxDepartment.Text;
            if (fuUser.HasFile)
            {
                fuUser.SaveAs(Server.MapPath("~/images/" + fuUser.FileName));
                newuser.UserPhoto = fuUser.FileName;
            }
            newuser.IsActive = true;
            newuser.UserType = "user";

            myDB.User.Add(newuser);
            myDB.SaveChanges();

            Response.Redirect("Login.aspx");
                
        }
    }

    }
}