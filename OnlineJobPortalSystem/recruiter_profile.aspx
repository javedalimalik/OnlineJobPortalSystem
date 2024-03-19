<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="recruiter_profile.aspx.cs" Inherits="recruiter_profile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="White" Text="Your Active Profile " Font-Underline="False"></asp:Label>
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DetailsView ID="DetailsView1" runat="server" Height="53px" 
            style="margin-left: 109px" Width="214px" AutoGenerateRows="False">
            <Fields>
            <asp:BoundField DataField="Company_name" HeaderText="Company Name" />
            <asp:BoundField DataField="Contact_person" HeaderText="Contact Person" />
            <asp:BoundField DataField="Company_contact" HeaderText="Company Contact" />
            <asp:BoundField DataField="Company_addrs" HeaderText="Company Address" />
            <asp:BoundField DataField="Company_email" HeaderText="Company Email" />
            <asp:BoundField DataField="Company_details" HeaderText="Company Details" />
            </Fields>
        </asp:DetailsView>
        <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\JobportalDB.mdf;Integrated Security=True;User Instance=True" 
            DeleteCommand="DELETE FROM [Company] WHERE [company_id] = @company_id" 
            InsertCommand="INSERT INTO [Company] ([company_name], [username], [contact_person], [company_contact], [company_addrs], [company_email], [company_details]) VALUES (@company_name, @username, @contact_person, @company_contact, @company_addrs, @company_email, @company_details)" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT [company_id], [company_name], [username], [contact_person], [company_contact], [company_addrs], [company_email], [company_details] FROM [Company]" 
            UpdateCommand="UPDATE [Company] SET [company_name] = @company_name, [username] = @username, [contact_person] = @contact_person, [company_contact] = @company_contact, [company_addrs] = @company_addrs, [company_email] = @company_email, [company_details] = @company_details WHERE [company_id] = @company_id">
            <DeleteParameters>
                <asp:Parameter Name="company_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="company_name" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="contact_person" Type="String" />
                <asp:Parameter Name="company_contact" Type="Decimal" />
                <asp:Parameter Name="company_addrs" Type="String" />
                <asp:Parameter Name="company_email" Type="String" />
                <asp:Parameter Name="company_details" Type="String" />
                <asp:Parameter Name="company_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="company_name" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="contact_person" Type="String" />
                <asp:Parameter Name="company_contact" Type="Decimal" />
                <asp:Parameter Name="company_addrs" Type="String" />
                <asp:Parameter Name="company_email" Type="String" />
                <asp:Parameter Name="company_details" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>--%>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    </form>
</asp:Content>

