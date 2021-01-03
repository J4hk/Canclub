<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="ListEvent.aspx.cs" Inherits="Main_Project.ListEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <p style="font-size:larger" class="card-title">List Events Page</p>
                    <div id="cash-deposits-chart-legend">
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                                <li><asp:HyperLink ID="HyperLink1" Font-Bold="true" Font-Underline="true" Font-Size="Large" runat="server" NavigateUrl='<%# "~/EventVoteAndComment.aspx?id="+Eval("EventId") %>' Text='<%# Eval("EventType") %>'></asp:HyperLink></li>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
