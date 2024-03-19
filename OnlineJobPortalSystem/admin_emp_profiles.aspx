<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="admin_emp_profiles.aspx.cs" Inherits="admin_emp_profiles" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Employes Profiles" Font-Underline="True"></asp:Label>
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 35px" 
            AutoGenerateColumns="False" DataKeyNames="company_id" 
            DataSourceID="SqlDataSource1" Width="966px">
            <RowStyle HorizontalAlign="Center" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="company_id" HeaderText="company_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="company_id" />
                <asp:BoundField DataField="company_name" HeaderText="company_name" 
                    SortExpression="company_name" />
                <asp:BoundField DataField="username" HeaderText="username" 
                    SortExpression="username" />
                <asp:BoundField DataField="que_id" HeaderText="que_id" 
                    SortExpression="que_id" />
                <asp:BoundField DataField="ansr" HeaderText="ansr" SortExpression="ansr" />
                <asp:BoundField DataField="contact_person" HeaderText="contact_person" 
                    SortExpression="contact_person" />
                <asp:BoundField DataField="company_contact" HeaderText="company_contact" 
                    SortExpression="company_contact" />
                <asp:BoundField DataField="company_addrs" HeaderText="company_addrs" 
                    SortExpression="company_addrs" />
                <asp:BoundField DataField="company_email" HeaderText="company_email" 
                    SortExpression="company_email" />
                <asp:BoundField DataField="company_details" HeaderText="company_details" 
                    SortExpression="company_details" />
            </Columns>
            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\JobportalDB.mdf;Integrated Security=True;User Instance=True" 
            DeleteCommand="DELETE FROM [Company] WHERE [company_id] = @company_id" 
            InsertCommand="INSERT INTO [Company] ([company_name], [username], [que_id], [ansr], [contact_person], [company_contact], [company_addrs], [company_email], [company_details]) VALUES (@company_name, @username, @que_id, @ansr, @contact_person, @company_contact, @company_addrs, @company_email, @company_details)" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Company]" 
            UpdateCommand="UPDATE [Company] SET [company_name] = @company_name, [username] = @username, [que_id] = @que_id, [ansr] = @ansr, [contact_person] = @contact_person, [company_contact] = @company_contact, [company_addrs] = @company_addrs, [company_email] = @company_email, [company_details] = @company_details WHERE [company_id] = @company_id">
            <DeleteParameters>
                <asp:Parameter Name="company_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="company_name" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="que_id" Type="Int32" />
                <asp:Parameter Name="ansr" Type="String" />
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
                <asp:Parameter Name="que_id" Type="Int32" />
                <asp:Parameter Name="ansr" Type="String" />
                <asp:Parameter Name="contact_person" Type="String" />
                <asp:Parameter Name="company_contact" Type="Decimal" />
                <asp:Parameter Name="company_addrs" Type="String" />
                <asp:Parameter Name="company_email" Type="String" />
                <asp:Parameter Name="company_details" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        &nbsp;</p>
    <p>
    </p>
    </form>
</asp:Content>

