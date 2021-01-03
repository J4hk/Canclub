<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="UpdatePage.aspx.cs" Inherits="Main_Project.UpdatePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <p style="font-size: larger" class="card-title">User Information Page</p>
                    <div id="cash-deposits-chart-legend">
                         <center><asp:Label ForeColor="Red" ID="Label1" runat="server" Text="User Name"></asp:Label></center>
                        <br />
                        <center><asp:TextBox ID="TextBoxName" Width="539px" runat="server"></asp:TextBox></center>
                        <center> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxName" ErrorMessage="You have to Enter again!"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  </center>
                        <br />
                         <center><asp:Label ForeColor="Red" ID="Label2" runat="server" Text="Password"></asp:Label></center>
                        <br />
                         <center><asp:TextBox ID="TextBoxPassword" Width="539px" TextMode="Password" runat="server"></asp:TextBox></center>
                        <center> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="You have to Enter again!"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  </center>
                        <br />
                         <center><asp:Label ID="Label3" ForeColor="Red" runat="server" Text="First Name"></asp:Label></center>
                        <br />
                        <center><asp:TextBox ID="TextBoxFirstName" Width="539px" runat="server"></asp:TextBox></center>
                        <center> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxFirstName" ErrorMessage="You have to Enter again!"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  </center>
                        <br />
                         <center><asp:Label ID="Label4" runat="server" ForeColor="Red" Text="Last Name"></asp:Label></center>
                        <br />
                        <center><asp:TextBox ID="TextBoxLastName" Width="539px" runat="server"></asp:TextBox></center>
                        <center> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxLastName" ErrorMessage="You have to Enter again!"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  </center>
                        <br />
                         <center><asp:Label ID="Label5" runat="server" ForeColor="Red" Text="BirthDate"></asp:Label></center>
                        <br />
                         <center><asp:TextBox ID="TextBirtDate" Width="539px" TextMode="Date" runat="server"></asp:TextBox></center>
                        <center> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBirtDate" ErrorMessage="You have to Enter again!"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  </center>
                        <br />
                         <center><asp:Label ID="Label6" runat="server" ForeColor="Red" Text="Email"></asp:Label></center>
                        <br />
                         <center><asp:TextBox ID="TextBoxEmail" Width="539px" runat="server"></asp:TextBox></center>
                        <center> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You have to Enter again!"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  </center>
                        <br />
                         <center><asp:Label ID="Label7" ForeColor="Red" runat="server" Text="Department"></asp:Label></center>
                        <br />
                         <center><asp:TextBox ID="TextBoxDepartment" Width="539px" runat="server"></asp:TextBox></center>
                        <center> <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxDepartment" ErrorMessage="You have to Enter again!"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  </center>
                        <br />
                         <center><asp:Label ID="Label8" ForeColor="Red" runat="server" Text="Profile Picture"></asp:Label></center>
                        <br />
                         <center><asp:Image ID="imgUser" CssClass="img-bordered img-responsive" Width="200px" Height="250px" runat="server" /></center>
                        <br />
                         <center><asp:Label ID="Label10" ForeColor="Red" runat="server" Text="Select Profile Picture"></asp:Label></center>
                        <br />
                         <center><asp:FileUpload ID="fuUser" Width="539px" runat="server" /></center>
                        <center> <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="fuUser" ErrorMessage="You have to Enter again!"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  </center>
                        <br />
                        <br />
                         <center><asp:Button ForeColor="White" BackColor="Red" BorderColor="Red" ID="ButtonUpdate" Width="539px" runat="server" Text="Update" OnClick="ButtonUpdate_Click" /></center>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
