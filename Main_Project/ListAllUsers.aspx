<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="ListAllUsers.aspx.cs" Inherits="Main_Project.ListAllUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <p style="font-size: larger" class="card-title">List All Users Page</p>
                    <div id="cash-deposits-chart-legend">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="1179px">
                            <Columns>
                                <asp:TemplateField HeaderText="User ID">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBoxUserId" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" Text='<%#Eval("UserId") %>' runat="server"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Username">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBoxUserUserName" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" Text='<%#Eval("Username") %>' runat="server"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="First Name">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBoxUserFirstName" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" Text='<%#Eval("FirstName") %>' runat="server"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Last Name">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBoxUserLastName" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" Text='<%#Eval("LastName") %>' runat="server"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        </asp:GridView>
                        <br />
                        <br />
                        ENTER USERID TO DELETE CLUB MEMBER<br />
                        <asp:TextBox ID="TextBoxDELETE" runat="server" Width="1050px"></asp:TextBox>
                        <asp:Button ID="Button1" ForeColor="White" BackColor="Red" BorderColor="Red" runat="server" Text="DELETE" Width="123px" OnClick="Button1_Click1" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
