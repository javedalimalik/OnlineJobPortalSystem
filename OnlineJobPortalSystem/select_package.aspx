<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="select_package.aspx.cs" Inherits="select_package" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Packages" Font-Underline="True"></asp:Label>
        </p>
    <p>
        &nbsp;<asp:GridView ID="GridView1" runat="server" style="margin-left: 44px" 
            AutoGenerateColumns="False" DataKeyNames="package_id" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="package_cost" HeaderText="Cost (Rs.)" 
                    SortExpression="package_cost" />
                <asp:BoundField DataField="no_jobs" HeaderText="No. of Job post" 
                    SortExpression="no_jobs" />
                <asp:BoundField DataField="package_id" HeaderText="Package code" 
                    InsertVisible="False" ReadOnly="True" SortExpression="package_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\JobportalDB.mdf;Integrated Security=True;User Instance=True" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT [package_cost], [no_jobs], [package_id] FROM [Package]">
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width: 100%">
            <tr>
                <td align="right" style="width: 192px">
                    <asp:Label ID="Label20" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Select Package"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 192px">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label21" runat="server" Font-Size="Small" 
                        Text="Enter Package cost"></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 192px">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#877361" 
                        BorderColor="#FF3300" Height="26px" Text="Buy" Width="54px" 
                        onclick="Button1_Click" />
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    </form>
</asp:Content>

