<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="admin_category.aspx.cs" Inherits="admin_country" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Add Category" Font-Underline="True"></asp:Label>
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
                        Text="Category"></asp:Label>
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
            AutoGenerateColumns="False" DataKeyNames="category_id" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="category_id" HeaderText="category_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="category_id" />
                <asp:BoundField DataField="category_name" HeaderText="category_name" 
                    SortExpression="category_name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\JobportalDB.mdf;Integrated Security=True;User Instance=True" 
            DeleteCommand="DELETE FROM [Category] WHERE [category_id] = @category_id" 
            InsertCommand="INSERT INTO [Category] ([category_name]) VALUES (@category_name)" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Category]" 
            UpdateCommand="UPDATE [Category] SET [category_name] = @category_name WHERE [category_id] = @category_id">
            <DeleteParameters>
                <asp:Parameter Name="category_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="category_name" Type="String" />
                <asp:Parameter Name="category_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="category_name" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Add Area" Font-Underline="True"></asp:Label>
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
                        Text="Category"></asp:Label>
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
                        Text="Area"></asp:Label>
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
            AutoGenerateColumns="False" DataKeyNames="area_id" 
            DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="area_id" HeaderText="area_id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="area_id" />
                <asp:BoundField DataField="category_id" HeaderText="category_id" 
                    SortExpression="category_id" />
                <asp:BoundField DataField="area_name" HeaderText="area_name" 
                    SortExpression="area_name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\JobportalDB.mdf;Integrated Security=True;User Instance=True" 
            DeleteCommand="DELETE FROM [Area] WHERE [area_id] = @area_id" 
            InsertCommand="INSERT INTO [Area] ([category_id], [area_name]) VALUES (@category_id, @area_name)" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Area]" 
            UpdateCommand="UPDATE [Area] SET [category_id] = @category_id, [area_name] = @area_name WHERE [area_id] = @area_id">
            <DeleteParameters>
                <asp:Parameter Name="area_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="category_id" Type="Int32" />
                <asp:Parameter Name="area_name" Type="String" />
                <asp:Parameter Name="area_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="category_id" Type="Int32" />
                <asp:Parameter Name="area_name" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Add Post" Font-Underline="True"></asp:Label>
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
                        Text="Area"></asp:Label>
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
                        Text="Post"></asp:Label>
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
            AutoGenerateColumns="False" DataKeyNames="post_id" 
            DataSourceID="SqlDataSource3">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="post_id" HeaderText="post_id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="post_id" />
                <asp:BoundField DataField="area_id" HeaderText="area_id" 
                    SortExpression="area_id" />
                <asp:BoundField DataField="post_name" HeaderText="post_name" 
                    SortExpression="post_name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\JobportalDB.mdf;Integrated Security=True;User Instance=True" 
            DeleteCommand="DELETE FROM [Post] WHERE [post_id] = @post_id" 
            InsertCommand="INSERT INTO [Post] ([area_id], [post_name]) VALUES (@area_id, @post_name)" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Post]" 
            UpdateCommand="UPDATE [Post] SET [area_id] = @area_id, [post_name] = @post_name WHERE [post_id] = @post_id">
            <DeleteParameters>
                <asp:Parameter Name="post_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="area_id" Type="Int32" />
                <asp:Parameter Name="post_name" Type="String" />
                <asp:Parameter Name="post_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="area_id" Type="Int32" />
                <asp:Parameter Name="post_name" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        &nbsp;</p>
    </form>
</asp:Content>

