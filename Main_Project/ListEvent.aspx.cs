using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Main_Project
{
    public partial class ListEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime date = DateTime.Now.AddDays(-15);
            using (var myDB = new ProjectEntities())
            {
                User loggeduser = (User)Session["current_user"];
                if (loggeduser != null)
                {
                    
                    var events = (from x in myDB.Proposal where(x.TimeStamp>date) select x).ToList();
                    DataList1.DataSource = events;
                    DataList1.DataBind();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }

            }

        }
    }
}

