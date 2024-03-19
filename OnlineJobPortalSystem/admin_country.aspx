<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="admin_country.aspx.cs" Inherits="admin_country" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Add Country" Font-Underline="True"></asp:Label>
        &nbsp;<table style="width: 100%">
            <tr>
                <td style="width: 136px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    <asp:Label ID="Label20" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Country"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;</td>
                <td>
                    &nbsp; &nbsp;<asp:Button ID="Button1" runat="server" BackColor="#877361" 
                        BorderColor="#FF3300" Text="Add" Width="48px" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 137px" 
            AutoGenerateColumns="False" DataKeyNames="country_id" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="country_id" HeaderText="country_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="country_id" />
                <asp:BoundField DataField="country_name" HeaderText="country_name" 
                    SortExpression="country_name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\JobportalDB.mdf;Integrated Security=True;User Instance=True" 
            DeleteCommand="DELETE FROM [Country] WHERE [country_id] = @country_id" 
            InsertCommand="INSERT INTO [Country] ([country_name]) VALUES (@country_name)" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Country]" 
            UpdateCommand="UPDATE [Country] SET [country_name] = @country_name WHERE [country_id] = @country_id">
            <DeleteParameters>
                <asp:Parameter Name="country_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="country_name" Type="String" />
                <asp:Parameter Name="country_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="country_name" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Add State" Font-Underline="True"></asp:Label>
        &nbsp;<table style="width: 100%">
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    <asp:Label ID="Label23" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Country"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    <asp:Label ID="Label22" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="State"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;</td>
                <td>
                    &nbsp; &nbsp;<asp:Button ID="Button2" runat="server" BackColor="#877361" 
                        BorderColor="#FF3300" Text="Add" Width="48px" onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView2" runat="server" style="margin-left: 141px" 
            AutoGenerateColumns="False" DataKeyNames="state_id" 
            DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="state_id" HeaderText="state_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="state_id" />
                <asp:BoundField DataField="country_id" HeaderText="country_id" 
                    SortExpression="country_id" />
                <asp:BoundField DataField="state_name" HeaderText="state_name" 
                    SortExpression="state_name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\JobportalDB.mdf;Integrated Security=True;User Instance=True" 
            DeleteCommand="DELETE FROM [State] WHERE [state_id] = @state_id" 
            InsertCommand="INSERT INTO [State] ([country_id], [state_name]) VALUES (@country_id, @state_name)" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [State]" 
            UpdateCommand="UPDATE [State] SET [country_id] = @country_id, [state_name] = @state_name WHERE [state_id] = @state_id">
            <DeleteParameters>
                <asp:Parameter Name="state_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="country_id" Type="Int32" />
                <asp:Parameter Name="state_name" Type="String" />
                <asp:Parameter Name="state_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="country_id" Type="Int32" />
                <asp:Parameter Name="state_name" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Add City" Font-Underline="True"></asp:Label>
        &nbsp;<table style="width: 100%">
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    <asp:Label ID="Label25" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="State"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    <asp:Label ID="Label26" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="City"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;</td>
                <td>
                    &nbsp; &nbsp;<asp:Button ID="Button3" runat="server" BackColor="#877361" 
                        BorderColor="#FF3300" Text="Add" Width="48px" onclick="Button3_Click" />
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView3" runat="server" style="margin-left: 133px" 
            AutoGenerateColumns="False" DataKeyNames="city_id" 
            DataSourceID="SqlDataSource3">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="city_id" HeaderText="city_id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="city_id" />
                <asp:BoundField DataField="state_id" HeaderText="state_id" 
                    SortExpression="state_id" />
                <asp:BoundField DataField="city_name" HeaderText="city_name" 
                    SortExpression="city_name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\JobportalDB.mdf;Integrated Security=True;User Instance=True" 
            DeleteCommand="DELETE FROM [City] WHERE [city_id] = @city_id" 
            InsertCommand="INSERT INTO [City] ([state_id], [city_name]) VALUES (@state_id, @city_name)" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [City]" 
            UpdateCommand="UPDATE [City] SET [state_id] = @state_id, [city_name] = @city_name WHERE [city_id] = @city_id">
            <DeleteParameters>
                <asp:Parameter Name="city_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="state_id" Type="Int32" />
                <asp:Parameter Name="city_name" Type="String" />
                <asp:Parameter Name="city_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="state_id" Type="Int32" />
                <asp:Parameter Name="city_name" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        &nbsp;</p>
    </form>
</asp:Content>

