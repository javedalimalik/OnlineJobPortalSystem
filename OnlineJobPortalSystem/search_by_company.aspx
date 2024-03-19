<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search_by_company.aspx.cs" Inherits="search_by_company" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Search by Company" Font-Underline="True"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width: 100%">
            <tr>
                <td align="right" style="width: 194px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 194px">
                    <asp:Label ID="Label20" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Company"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 194px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 194px">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;
                  <asp:Button ID="Button3" runat="server" BackColor="#877361" BorderColor="#FF3300" 
                        Height="28px" Text="Search" Width="123px" 
            Font-Bold="True" Font-Size="Large" onclick="Button3_Click" />
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 19px" 
            AutoGenerateColumns="False">
        <Columns>
          <asp:TemplateField HeaderText="Save" SortExpression="jobpost_id">
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox2" runat="server" 
                            />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox2" runat="server"   
                            Enabled="true" Checked="<%# false %>" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Apply" SortExpression="jobpost_id">
                     <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox3" runat="server" 
                            />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox3" runat="server"   
                            Enabled="true" Checked="<%# false %>" />
                    </ItemTemplate>
                </asp:TemplateField>
               
                           
        <asp:BoundField DataField="company_name" HeaderText="Company name" />
         <asp:BoundField DataField="job_title" HeaderText="Job title" />
          <asp:BoundField DataField="category_name" HeaderText="Category" />
           <asp:BoundField DataField="area_name" HeaderText="Area" />
            <asp:BoundField DataField="country_name" HeaderText="Country" />
             <asp:BoundField DataField="state_name" HeaderText="State"  />
              <asp:BoundField DataField="city_name" HeaderText="City" />
               <asp:BoundField DataField="post" HeaderText="Post" />
                <asp:BoundField DataField="no_vacancy" HeaderText="Vacancy" />
                 <asp:BoundField DataField="start_date" HeaderText="starting date" />
                  <asp:BoundField DataField="end_date" HeaderText="Ending date" />
                   <asp:BoundField DataField="expr_req" HeaderText="Experience" />
                    <asp:BoundField DataField="skills_req" HeaderText="Skills" />
                     <asp:BoundField DataField="edu_req" HeaderText="Education" />
                      <asp:BoundField DataField="basic_req" HeaderText="Basic" />
                       <asp:BoundField DataField="salary_min" HeaderText="Minimum salary" />
                        <asp:BoundField DataField="salary_max" HeaderText="Maximum salary" />
                         <asp:BoundField  DataField="jobpost_id" HeaderText="jpid" Visible="true"/> 
                      
                      
                         
                      
                      
                         </Columns>
          
        </asp:GridView>
        
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button4" runat="server" BackColor="#877361" BorderColor="#FF3300" 
                        Height="34px" Text="Apply for selected Jobs" Width="216px" 
            Font-Bold="True" Font-Size="Large" onclick="Button4_Click" />
        &nbsp;
        <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
    </p>
    </form>
</asp:Content>

