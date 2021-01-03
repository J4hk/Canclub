using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Main_Project
{
    public partial class Top5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            
            using (var myDB = new ProjectEntities())
            {
                User loggeduser = (User)Session["current_user"];
                if (loggeduser != null)
                {
                    var Top5 = (from u in myDB.VoteResult
                                orderby u.Result descending
                                select u).Take(5).ToList();
                    List<Proposal> prplst = new List<Proposal>();

                    foreach (VoteResult v in Top5)
                    {
                        var prp = (from x in myDB.Proposal
                                   where (x.EventId == v.PropId && x.IsActive == true)
                                   select x).SingleOrDefault();

                        if (prp != null)
                        {
                            prplst.Add(prp);
                        }
                    }

                    GridView1.DataSource = prplst;
                    GridView1.DataBind();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}