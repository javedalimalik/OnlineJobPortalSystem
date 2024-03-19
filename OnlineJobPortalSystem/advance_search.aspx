<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="advance_search.aspx.cs" Inherits="advance_search" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Advance Search" Font-Underline="True"></asp:Label>
        <br />
        <table style="width: 100%">
            <tr>
                <td align="right" style="width: 160px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    <asp:Label ID="Label20" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Category"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    &nbsp;&nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    <asp:Label ID="Label21" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Area"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    <asp:Label ID="Label22" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Post"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    <asp:Label ID="Label23" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Expected Salary"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList4" runat="server">
                    </asp:DropDownList>
                    &nbsp; <asp:Label ID="Label9" runat="server" Font-Size="Medium" Text="To"></asp:Label>
                    &nbsp;<asp:DropDownList ID="DropDownList5" runat="server">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:Label ID="Label25" runat="server" Font-Size="Small" ForeColor="#877361" 
                        Text=" Rs. per month"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 160px" align="right">
                    <asp:Label ID="Label24" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Location"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label17" runat="server" Font-Size="Small" ForeColor="#877361" 
                        Text="Country"></asp:Label>
                    &nbsp;
                    <asp:DropDownList ID="DropDownList6" runat="server">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label18" runat="server" Font-Size="Small" ForeColor="#877361" 
                        Text="State"></asp:Label>
                    &nbsp;
                    <asp:DropDownList ID="DropDownList7" runat="server">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label19" runat="server" Font-Size="Small" ForeColor="#877361" 
                        Text="City"></asp:Label>
                    &nbsp;<asp:DropDownList ID="DropDownList8" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 160px" align="right">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 160px" align="right">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp; &nbsp;<asp:Button ID="Button3" runat="server" BackColor="#877361" BorderColor="#FF3300" 
                        Height="28px" Text="Search" Width="123px" 
            Font-Bold="True" Font-Size="Large" onclick="Button3_Click" />
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 162px">
            <Columns>
                <asp:CheckBoxField DataField="ad_search" HeaderText="Apply" 
                    SortExpression="ad_search" />
                <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Save Job" 
                    ShowHeader="True" Text="Save" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button4" runat="server" BackColor="#877361" BorderColor="#FF3300" 
                        Height="34px" Text="Apply for selected Jobs" Width="216px" 
            Font-Bold="True" Font-Size="Large" />
        &nbsp;</p>
    </form>
</asp:Content>

