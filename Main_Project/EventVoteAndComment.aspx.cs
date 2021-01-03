using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Main_Project
{
    public partial class EventVoteAndComment : System.Web.UI.Page
    {
        ProjectEntities myDB;
        protected void Page_Load(object sender, EventArgs e)
        {
            User loggeduser = (User)Session["current_user"];

            if (!IsPostBack)
            {
                if (Session["current_user"] != null)
                {
                    if (Request["id"] != null)
                    {
                        int qId = Convert.ToInt32(Request["id"]);
                        using (myDB = new ProjectEntities())
                        {
                            var p = (from x in myDB.Proposal where (x.EventId == qId) select x).SingleOrDefault();
                            LabelEventType.Text = p.EventType;
                            LabelEventDetail.Text = p.EventDetail;
                            var c = (from x in myDB.Comment where (x.EventId == qId && x.IsActive == true) select x).ToList();
                            DataList.DataSource = c;
                            DataList.DataBind();
                            var k = (from i in myDB.Vote where (i.PropId == qId && i.UserId == loggeduser.UserId) select i).SingleOrDefault();
                            if(k != null)
                            {
                                Button1.Visible = false;
                                Button2.Visible = false;
                                Label4.Text = "You voted already!";
                            }

                        }
                    }
                    else
                    {
                        Response.Redirect("ListEvent.aspx");
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (var myDB = new ProjectEntities())
            {
                User loggeduser = (User)Session["current_user"];
                int qId = Convert.ToInt32(Request["id"]);

                var vote = new Vote();
                vote.PropId = qId;
                vote.UserId = loggeduser.UserId;
                vote.IsActive = true;

                var voteresult = (from x in myDB.VoteResult where (x.PropId == qId) select x).SingleOrDefault();

                if (voteresult != null)
                {
                    voteresult.Result += 1;
                    myDB.Vote.Add(vote);
                    myDB.SaveChanges();
                }
                else
                {
                    var newvrslt = new VoteResult();
                    newvrslt.PropId = qId;
                    newvrslt.Result = 1;
                    myDB.VoteResult.Add(newvrslt);
                    myDB.Vote.Add(vote);
                    myDB.SaveChanges();
                }


                Response.Redirect("~/EventVoteAndComment.aspx?id=" + qId);

            }



        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            using (var myDB = new ProjectEntities())
            {
                User loggeduser = (User)Session["current_user"];
                int qId = Convert.ToInt32(Request["id"]);

                var vote = new Vote();
                vote.PropId = qId;
                vote.UserId = loggeduser.UserId;
                vote.IsActive = true;

                var voteresult = (from x in myDB.VoteResult where (x.PropId == qId) select x).SingleOrDefault();

                if (voteresult != null)
                {
                    voteresult.Result -= 1;
                    myDB.Vote.Add(vote);
                    myDB.SaveChanges();
                }
                else
                {
                    var newvrslt = new VoteResult();
                    newvrslt.PropId = qId;
                    newvrslt.Result = -1;
                    myDB.VoteResult.Add(newvrslt);
                    myDB.Vote.Add(vote);
                    myDB.SaveChanges();
                }

                Response.Redirect("~/EventVoteAndComment.aspx?id=" + qId);


            }

        }

        protected void ButtonComment_Click(object sender, EventArgs e)
        {
            using (var myDB = new ProjectEntities())
            {
                User loggeduser = (User)Session["current_user"];
                int qId = Convert.ToInt32(Request["id"]);

                var newcmmnt = new Comment();

                newcmmnt.EventId = qId;
                newcmmnt.UserId = loggeduser.UserId;
                newcmmnt.CommentText = TextBoxComment.Text;
                newcmmnt.IsActive = true;



                myDB.Comment.Add(newcmmnt);
                myDB.SaveChanges();

                Response.Redirect("~/EventVoteAndComment.aspx?id=" + qId);

            }
        }
    }
}