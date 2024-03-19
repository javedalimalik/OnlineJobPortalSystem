<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search_job.aspx.cs" Inherits="search_job" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<p>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#E46115" Text="Search Job " Font-Underline="False"></asp:Label>
        </p>
<asp:Panel ID="Panel1" runat="server" Height="194px" style="margin-left: 73px" 
    Width="157px">
    &nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Small" 
        ForeColor="#E46115" NavigateUrl="~/advance_search.aspx">Advance search</asp:HyperLink>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink4" runat="server" Font-Size="Small" 
        ForeColor="#E46115" NavigateUrl="~/search_by_company.aspx">Search by Company</asp:HyperLink>
    <br />
    &nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink5" runat="server" Font-Size="Small" 
        ForeColor="#E46115" NavigateUrl="~/search_by_category.aspx">Search by 
    Category</asp:HyperLink>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink7" runat="server" Font-Size="Small" 
        ForeColor="#E46115" NavigateUrl="~/saved_jobs.aspx">My Jobs
    </asp:HyperLink>
</asp:Panel>
</form>
</asp:Content>

