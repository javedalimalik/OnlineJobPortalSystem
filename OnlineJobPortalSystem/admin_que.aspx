<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="admin_que.aspx.cs" Inherits="admin_que" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Sequrity Question" Font-Underline="True"></asp:Label>
        <table style="width: 100%">
            <tr>
                <td style="width: 179px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 179px">
                    <asp:Label ID="Label20" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Question"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 179px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 179px">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp; 
                    <asp:Button ID="Button1" runat="server" BackColor="#877361" 
                        BorderColor="#FF3300" Text="Add" Width="48px" onclick="Button1_Click" />
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 186px" 
            AutoGenerateColumns="False" DataKeyNames="que_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="que_id" HeaderText="que_id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="que_id" />
                <asp:BoundField DataField="question" HeaderText="question" 
                    SortExpression="question" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\JobportalDB.mdf;Integrated Security=True;User Instance=True" 
            DeleteCommand="DELETE FROM [Question] WHERE [que_id] = @que_id" 
            InsertCommand="INSERT INTO [Question] ([question]) VALUES (@question)" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Question]" 
            UpdateCommand="UPDATE [Question] SET [question] = @question WHERE [que_id] = @que_id">
            <DeleteParameters>
                <asp:Parameter Name="que_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="question" Type="String" />
                <asp:Parameter Name="que_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="question" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    </form>
</asp:Content>

