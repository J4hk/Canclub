<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="AddEvent.aspx.cs" Inherits="Main_Project.AddEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <p style="font-size: larger" class="card-title">Add Event Page</p>
                    <div id="cash-deposits-chart-legend">
                        <center><asp:Label ID="Label2" runat="server" ForeColor="Red" Text="EVENT TYPE"></asp:Label></center>
                        <br />
                        <center><asp:TextBox ID="TextBoxEventType" runat="server" Width="539px"></asp:TextBox></center>
                        <center> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxEventType" ErrorMessage="Please Enter Event Type"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  </center>
                        <br />
                        <br />
                        <center><asp:Label ID="Label3" runat="server" ForeColor="Red" Text="EVENT DETAIL"></asp:Label></center>
                        <br />
                        <center><asp:TextBox ID="TextBoxDetails" runat="server" Width="539px"></asp:TextBox></center>
                        <center> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxDetails" ErrorMessage="Please Enter Event Detail"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  </center>    
                        <br />
                        <br />
                        <br />
                        <center><asp:Button ID="ButtonAddEvent" BackColor="Red" ForeColor="White" BorderColor="Red" runat="server" Text="ADD EVENT" OnClick="ButtonAddEvent_Click" Width="539px" /></center>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
