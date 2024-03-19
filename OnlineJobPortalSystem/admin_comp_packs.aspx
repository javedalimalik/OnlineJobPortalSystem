<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="admin_comp_packs.aspx.cs" Inherits="admin_comp_packs" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Company Packages" Font-Underline="True"></asp:Label>
        </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 38px" 
            AutoGenerateColumns="False" DataKeyNames="comp_package_id" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="comp_package_id" HeaderText="comp_package_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="comp_package_id" />
                <asp:BoundField DataField="company_id" HeaderText="company_id" 
                    SortExpression="company_id" />
                <asp:BoundField DataField="package_id" HeaderText="package_id" 
                    SortExpression="package_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\JobportalDB.mdf;Integrated Security=True;User Instance=True" 
            DeleteCommand="DELETE FROM [Company_package] WHERE [comp_package_id] = @comp_package_id" 
            InsertCommand="INSERT INTO [Company_package] ([company_id], [package_id]) VALUES (@company_id, @package_id)" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT * FROM [Company_package]" 
            UpdateCommand="UPDATE [Company_package] SET [company_id] = @company_id, [package_id] = @package_id WHERE [comp_package_id] = @comp_package_id">
            <DeleteParameters>
                <asp:Parameter Name="comp_package_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="company_id" Type="Int32" />
                <asp:Parameter Name="package_id" Type="Int32" />
                <asp:Parameter Name="comp_package_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="company_id" Type="Int32" />
                <asp:Parameter Name="package_id" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    </form>
</asp:Content>

