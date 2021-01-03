<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="EventVoteAndComment.aspx.cs" Inherits="Main_Project.EventVoteAndComment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <p style="font-size: larger" class="card-title">Event Detail Page</p>
                    <div id="cash-deposits-chart-legend">
                        <center><asp:Label ID="LabelEventType" runat="server" Text=""></asp:Label></center>
                        <br />
                        <center><asp:Label ID="LabelEventDetail" runat="server" Text=""></asp:Label></center>
                        <br />
                        <center><asp:Label ID="Label3" runat="server" ForeColor="Red" Text="VOTE!!!"></asp:Label></center>
                        <br />
                        <center><asp:Button ID="Button1" runat="server" BackColor="Green" ForeColor="White" BorderColor="Green" Text="YES" OnClick="Button1_Click" /><asp:Button ID="Button2" BackColor="Red" ForeColor="Wheat" BorderColor="Red" runat="server" Text="NO" OnClick="Button2_Click" /></center>
                        <br />
                        <center><asp:Label ID="Label4" runat="server" ForeColor="Red" Text=""></asp:Label></center>
                        <hr />
                        <br />
                        <center><h3 style="font-weight: bolder;color:red; ">ADD COMMENT</h3></center>
                        <br />
                        <center><asp:TextBox ID="TextBoxComment" Width="539px" Height="100px" runat="server"></asp:TextBox>
                            <br />
                            <br />
                        <asp:Button ID="ButtonComment" Width="539px" BackColor="Red" BorderColor="Red" ForeColor="White" runat="server" Text="Enter Comment" OnClick="ButtonComment_Click" /></center>
                        <br />
                        <hr />
                        <br />
                        <center><h3 style="font-weight: bolder;color:red; ">COMMENTS</h3></center>
                        <br />
                        <center><asp:DataList ID="DataList" runat="server" Width="750px">
                            <ItemTemplate>
                                <li>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("User.Username") %>'></asp:Label>:&nbsp;&nbsp;&nbsp; 
                <asp:Label ID="Label2" runat="server" Text='<%#Eval("CommentText") %>'></asp:Label>
                                    <br />
                                </li>
                            </ItemTemplate>
                        </asp:DataList></center>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
