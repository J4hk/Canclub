using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Main_Project
{
    public partial class AddEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user = (User)Session["current_user"];

            if (user == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void ButtonAddEvent_Click(object sender, EventArgs e)
        {
            User user = (User)Session["current_user"];

            using (var myDB = new ProjectEntities())
            {
                Proposal p = new Proposal();
                p.EventType = TextBoxEventType.Text;
                p.EventDetail = TextBoxDetails.Text;
                p.IsActive = true;
                p.TimeStamp = DateTime.Now;
                p.OwnerId = user.UserId;
                myDB.Proposal.Add(p);
                myDB.SaveChanges();
                Response.Redirect("AddEvent.aspx");
            }

        }
    }
}