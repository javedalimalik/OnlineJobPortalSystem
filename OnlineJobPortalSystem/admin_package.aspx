<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="admin_package.aspx.cs" Inherits="admin_package" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Add Package" Font-Underline="True"></asp:Label>
        <table style="width: 100%">
            <tr>
                <td style="width: 142px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 142px">
                    <asp:Label ID="Label20" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Cost"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="97px"></asp:TextBox>
                    &nbsp;&nbsp; Rs.</td>
            </tr>
            <tr>
                <td align="right" style="width: 142px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 142px">
                    <asp:Label ID="Label21" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="No. of Job-postings"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Width="62px"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 142px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 142px">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#877361" 
                        BorderColor="#FF3300" Text="Add" onclick="Button1_Click" />
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 148px" 
            AutoGenerateColumns="False" DataKeyNames="package_id" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="package_id" HeaderText="package_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="package_id" />
                <asp:BoundField DataField="package_cost" HeaderText="package_cost" 
                    SortExpression="package_cost" />
                <asp:BoundField DataField="no_jobs" HeaderText="no_jobs" 
                    SortExpression="no_jobs" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\JobportalDB.mdf;Integrated Security=True;User Instance=True" 
            DeleteCommand="DELETE FROM [Package] WHERE [package_id] = @package_id" 
            InsertCommand="INSERT INTO [Package] ([package_cost], [no_jobs]) VALUES (@package_cost, @no_jobs)" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Package]" 
            UpdateCommand="UPDATE [Package] SET [package_cost] = @package_cost, [no_jobs] = @no_jobs WHERE [package_id] = @package_id">
            <DeleteParameters>
                <asp:Parameter Name="package_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="package_cost" Type="String" />
                <asp:Parameter Name="no_jobs" Type="Decimal" />
                <asp:Parameter Name="package_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="package_cost" Type="String" />
                <asp:Parameter Name="no_jobs" Type="Decimal" />
            </InsertParameters>
        </asp:SqlDataSource>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp; &nbsp;</p>
    </form>
</asp:Content>

