<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="admin_posted_jobs.aspx.cs" Inherits="admin_posted_jobs" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Posted Jobs" Font-Underline="True"></asp:Label>
        </p>
    <p>
        &nbsp;<asp:GridView ID="GridView1" runat="server" style="margin-left: 41px" 
            AutoGenerateColumns="False" DataKeyNames="jobpost_id" 
            DataSourceID="SqlDataSource1" Height="135px" Width="1129px">
            <RowStyle HorizontalAlign="Center" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="jobpost_id" HeaderText="jobpost_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="jobpost_id" />
                <asp:BoundField DataField="company_id" HeaderText="company_id" 
                    SortExpression="company_id" />
                <asp:BoundField DataField="job_title" HeaderText="job_title" 
                    SortExpression="job_title" />
                <asp:BoundField DataField="area_id" HeaderText="area_id" 
                    SortExpression="area_id" />
                <asp:BoundField DataField="city_id" HeaderText="city_id" 
                    SortExpression="city_id" />
                <asp:BoundField DataField="post" HeaderText="post" SortExpression="post" />
                <asp:BoundField DataField="no_vacancy" HeaderText="no_vacancy" 
                    SortExpression="no_vacancy" />
                <asp:BoundField DataField="start_date" HeaderText="start_date" 
                    SortExpression="start_date" />
                <asp:BoundField DataField="end_date" HeaderText="end_date" 
                    SortExpression="end_date" />
                <asp:BoundField DataField="expr_req" HeaderText="expr_req" 
                    SortExpression="expr_req" />
                <asp:BoundField DataField="skills_req" HeaderText="skills_req" 
                    SortExpression="skills_req" />
                <asp:BoundField DataField="edu_req" HeaderText="edu_req" 
                    SortExpression="edu_req" />
                <asp:BoundField DataField="basic_req" HeaderText="basic_req" 
                    SortExpression="basic_req" />
                <asp:BoundField DataField="salary_min" HeaderText="salary_min" 
                    SortExpression="salary_min" />
                <asp:BoundField DataField="salary_max" HeaderText="salary_max" 
                    SortExpression="salary_max" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\JobportalDB.mdf;Integrated Security=True;User Instance=True" 
            DeleteCommand="DELETE FROM [Job_post] WHERE [jobpost_id] = @jobpost_id" 
            InsertCommand="INSERT INTO [Job_post] ([company_id], [job_title], [area_id], [city_id], [post], [no_vacancy], [start_date], [end_date], [expr_req], [skills_req], [edu_req], [basic_req], [salary_min], [salary_max]) VALUES (@company_id, @job_title, @area_id, @city_id, @post, @no_vacancy, @start_date, @end_date, @expr_req, @skills_req, @edu_req, @basic_req, @salary_min, @salary_max)" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Job_post]" 
            UpdateCommand="UPDATE [Job_post] SET [company_id] = @company_id, [job_title] = @job_title, [area_id] = @area_id, [city_id] = @city_id, [post] = @post, [no_vacancy] = @no_vacancy, [start_date] = @start_date, [end_date] = @end_date, [expr_req] = @expr_req, [skills_req] = @skills_req, [edu_req] = @edu_req, [basic_req] = @basic_req, [salary_min] = @salary_min, [salary_max] = @salary_max WHERE [jobpost_id] = @jobpost_id">
            <DeleteParameters>
                <asp:Parameter Name="jobpost_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="company_id" Type="Int32" />
                <asp:Parameter Name="job_title" Type="String" />
                <asp:Parameter Name="area_id" Type="Int32" />
                <asp:Parameter Name="city_id" Type="String" />
                <asp:Parameter Name="post" Type="String" />
                <asp:Parameter Name="no_vacancy" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="start_date" />
                <asp:Parameter DbType="Date" Name="end_date" />
                <asp:Parameter Name="expr_req" Type="String" />
                <asp:Parameter Name="skills_req" Type="String" />
                <asp:Parameter Name="edu_req" Type="String" />
                <asp:Parameter Name="basic_req" Type="String" />
                <asp:Parameter Name="salary_min" Type="Decimal" />
                <asp:Parameter Name="salary_max" Type="Decimal" />
                <asp:Parameter Name="jobpost_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="company_id" Type="Int32" />
                <asp:Parameter Name="job_title" Type="String" />
                <asp:Parameter Name="area_id" Type="Int32" />
                <asp:Parameter Name="city_id" Type="String" />
                <asp:Parameter Name="post" Type="String" />
                <asp:Parameter Name="no_vacancy" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="start_date" />
                <asp:Parameter DbType="Date" Name="end_date" />
                <asp:Parameter Name="expr_req" Type="String" />
                <asp:Parameter Name="skills_req" Type="String" />
                <asp:Parameter Name="edu_req" Type="String" />
                <asp:Parameter Name="basic_req" Type="String" />
                <asp:Parameter Name="salary_min" Type="Decimal" />
                <asp:Parameter Name="salary_max" Type="Decimal" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    </form>
</asp:Content>

