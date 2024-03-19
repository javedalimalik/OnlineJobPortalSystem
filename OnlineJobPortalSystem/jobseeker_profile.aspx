<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="jobseeker_profile.aspx.cs" Inherits="jobseeker_profile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="White" Text="Your Active Profile " Font-Underline="False"></asp:Label>
        </p>
    <p>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Basic Details" Font-Underline="True"></asp:Label>
        &nbsp;<asp:DetailsView ID="DetailsView5" runat="server" AutoGenerateRows="False" 
            DataKeyNames="candidate_id" DataSourceID="SqlDataSource1" Height="50px" 
            style="margin-left: 90px" Width="186px">
            <Fields>
                <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="candidate_id" 
                    Visible="False" />
                <asp:BoundField DataField="username" HeaderText="username" 
                    SortExpression="username" Visible="False" />
                <asp:BoundField DataField="que_id" HeaderText="que_id" 
                    SortExpression="que_id" Visible="False" />
                <asp:BoundField DataField="ans" HeaderText="ans" SortExpression="ans" 
                    Visible="False" />
                <asp:BoundField DataField="profile_date" HeaderText="Profile date" 
                    SortExpression="profile_date" />
                <asp:BoundField DataField="first_name" HeaderText="First name" 
                    SortExpression="first_name" />
                <asp:BoundField DataField="middle_name" HeaderText="Middle name" 
                    SortExpression="middle_name" />
                <asp:BoundField DataField="last_name" HeaderText="Last name" 
                    SortExpression="last_name" />
                <asp:BoundField DataField="candidate_addrs" HeaderText="Address" 
                    SortExpression="candidate_addrs" />
                <asp:BoundField DataField="city_id" HeaderText="city_id" 
                    SortExpression="city_id" Visible="False" />
                <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" Visible="False" />
                <asp:BoundField DataField="dob" HeaderText="dob" 
                    SortExpression="Date of birth" />
                <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                    SortExpression="Contact number" />
                <asp:BoundField DataField="email_id" HeaderText="email_id" 
                    SortExpression="email id" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\JobportalDB.mdf;Integrated Security=True;User Instance=True" 
            DeleteCommand="DELETE FROM [Candidate_basic] WHERE [candidate_id] = @candidate_id" 
            InsertCommand="INSERT INTO [Candidate_basic] ([username], [que_id], [ans], [profile_date], [first_name], [middle_name], [last_name], [candidate_addrs], [city_id], [gender], [dob], [contact_no], [email_id]) VALUES (@username, @que_id, @ans, @profile_date, @first_name, @middle_name, @last_name, @candidate_addrs, @city_id, @gender, @dob, @contact_no, @email_id)" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT * FROM [Candidate_basic] WHERE ([candidate_id] = @candidate_id)" 
            UpdateCommand="UPDATE [Candidate_basic] SET [username] = @username, [que_id] = @que_id, [ans] = @ans, [profile_date] = @profile_date, [first_name] = @first_name, [middle_name] = @middle_name, [last_name] = @last_name, [candidate_addrs] = @candidate_addrs, [city_id] = @city_id, [gender] = @gender, [dob] = @dob, [contact_no] = @contact_no, [email_id] = @email_id WHERE [candidate_id] = @candidate_id">
            <SelectParameters>
                <asp:SessionParameter Name="candidate_id" SessionField="Cid" Type="Int32" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="candidate_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="que_id" Type="Int32" />
                <asp:Parameter Name="ans" Type="String" />
                <asp:Parameter DbType="Date" Name="profile_date" />
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="middle_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter Name="candidate_addrs" Type="String" />
                <asp:Parameter Name="city_id" Type="Int32" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter DbType="Date" Name="dob" />
                <asp:Parameter Name="contact_no" Type="Decimal" />
                <asp:Parameter Name="email_id" Type="String" />
                <asp:Parameter Name="candidate_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="que_id" Type="Int32" />
                <asp:Parameter Name="ans" Type="String" />
                <asp:Parameter DbType="Date" Name="profile_date" />
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="middle_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter Name="candidate_addrs" Type="String" />
                <asp:Parameter Name="city_id" Type="Int32" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter DbType="Date" Name="dob" />
                <asp:Parameter Name="contact_no" Type="Decimal" />
                <asp:Parameter Name="email_id" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Educational Details" Font-Underline="True"></asp:Label>
        <asp:DetailsView ID="DetailsView6" runat="server" AutoGenerateRows="False" 
            DataKeyNames="candidate_edu_id" DataSourceID="SqlDataSource2" Height="50px" 
            style="margin-left: 100px" Width="201px">
            <Fields>
                <asp:BoundField DataField="candidate_edu_id" HeaderText="candidate_edu_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="candidate_edu_id" 
                    Visible="False" />
                <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" 
                    SortExpression="candidate_id" Visible="False" />
                <asp:BoundField DataField="per10" HeaderText="10 %" SortExpression="per10" />
                <asp:BoundField DataField="per12" HeaderText="12 %" SortExpression="per12" />
                <asp:BoundField DataField="graduation" HeaderText="Graduation" 
                    SortExpression="graduation" />
                <asp:BoundField DataField="institute_grad" HeaderText="Institute" 
                    SortExpression="institute_grad" />
                <asp:BoundField DataField="perc_grad" HeaderText="Percentage" 
                    SortExpression="perc_grad" />
                <asp:BoundField DataField="post_grad" HeaderText="Post graduation" 
                    SortExpression="post_grad" />
                <asp:BoundField DataField="institute_post_grad" 
                    HeaderText="Institute" SortExpression="institute_post_grad" />
                <asp:BoundField DataField="perc_post_grad" HeaderText="Percentage" 
                    SortExpression="perc_post_grad" />
                <asp:BoundField DataField="dr_phd" HeaderText="Dr. / Ph.D" 
                    SortExpression="dr_phd" />
                <asp:BoundField DataField="institute_dr_phd" HeaderText="Institute" 
                    SortExpression="institute_dr_phd" />
                <asp:BoundField DataField="perc_dr_phd" HeaderText="Percentage" 
                    SortExpression="perc_dr_phd" />
                <asp:BoundField DataField="certification" HeaderText="Certification" 
                    SortExpression="certification" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\JobportalDB.mdf;Integrated Security=True;User Instance=True" 
            DeleteCommand="DELETE FROM [Candidate_education] WHERE [candidate_edu_id] = @candidate_edu_id" 
            InsertCommand="INSERT INTO [Candidate_education] ([candidate_id], [per10], [per12], [graduation], [institute_grad], [perc_grad], [post_grad], [institute_post_grad], [perc_post_grad], [dr_phd], [institute_dr_phd], [perc_dr_phd], [certification]) VALUES (@candidate_id, @per10, @per12, @graduation, @institute_grad, @perc_grad, @post_grad, @institute_post_grad, @perc_post_grad, @dr_phd, @institute_dr_phd, @perc_dr_phd, @certification)" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT * FROM [Candidate_education] WHERE ([candidate_id] = @candidate_id)" 
            UpdateCommand="UPDATE [Candidate_education] SET [candidate_id] = @candidate_id, [per10] = @per10, [per12] = @per12, [graduation] = @graduation, [institute_grad] = @institute_grad, [perc_grad] = @perc_grad, [post_grad] = @post_grad, [institute_post_grad] = @institute_post_grad, [perc_post_grad] = @perc_post_grad, [dr_phd] = @dr_phd, [institute_dr_phd] = @institute_dr_phd, [perc_dr_phd] = @perc_dr_phd, [certification] = @certification WHERE [candidate_edu_id] = @candidate_edu_id">
            <SelectParameters>
                <asp:SessionParameter Name="candidate_id" SessionField="Cid" Type="Int32" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="candidate_edu_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="candidate_id" Type="Int32" />
                <asp:Parameter Name="per10" Type="Decimal" />
                <asp:Parameter Name="per12" Type="Decimal" />
                <asp:Parameter Name="graduation" Type="String" />
                <asp:Parameter Name="institute_grad" Type="String" />
                <asp:Parameter Name="perc_grad" Type="Decimal" />
                <asp:Parameter Name="post_grad" Type="String" />
                <asp:Parameter Name="institute_post_grad" Type="String" />
                <asp:Parameter Name="perc_post_grad" Type="Decimal" />
                <asp:Parameter Name="dr_phd" Type="String" />
                <asp:Parameter Name="institute_dr_phd" Type="String" />
                <asp:Parameter Name="perc_dr_phd" Type="Decimal" />
                <asp:Parameter Name="certification" Type="String" />
                <asp:Parameter Name="candidate_edu_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="candidate_id" Type="Int32" />
                <asp:Parameter Name="per10" Type="Decimal" />
                <asp:Parameter Name="per12" Type="Decimal" />
                <asp:Parameter Name="graduation" Type="String" />
                <asp:Parameter Name="institute_grad" Type="String" />
                <asp:Parameter Name="perc_grad" Type="Decimal" />
                <asp:Parameter Name="post_grad" Type="String" />
                <asp:Parameter Name="institute_post_grad" Type="String" />
                <asp:Parameter Name="perc_post_grad" Type="Decimal" />
                <asp:Parameter Name="dr_phd" Type="String" />
                <asp:Parameter Name="institute_dr_phd" Type="String" />
                <asp:Parameter Name="perc_dr_phd" Type="Decimal" />
                <asp:Parameter Name="certification" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Professional Details" Font-Underline="True"></asp:Label>
        &nbsp;<asp:DetailsView ID="DetailsView7" runat="server" AutoGenerateRows="False" 
            DataKeyNames="candidate_prof_id" DataSourceID="SqlDataSource3" Height="50px" 
            style="margin-left: 94px" Width="208px">
            <Fields>
                <asp:BoundField DataField="candidate_prof_id" HeaderText="candidate_prof_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="candidate_prof_id" 
                    Visible="False" />
                <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" 
                    SortExpression="candidate_id" Visible="False" />
                <asp:BoundField DataField="area_id" HeaderText="area_id" 
                    SortExpression="area_id" Visible="False" />
                <asp:BoundField DataField="expr_yrs" HeaderText="Experience (years)" 
                    SortExpression="expr_yrs" />
                <asp:BoundField DataField="expr_mth" HeaderText="Experience (months)" 
                    SortExpression="expr_mth" />
                <asp:BoundField DataField="salary" HeaderText="Salary" 
                    SortExpression="salary" />
                <asp:BoundField DataField="industry" HeaderText="Industry" 
                    SortExpression="industry" />
                <asp:BoundField DataField="ind_role" HeaderText="Industry role" 
                    SortExpression="ind_role" />
                <asp:BoundField DataField="skills" HeaderText="Skills" 
                    SortExpression="skills" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\JobportalDB.mdf;Integrated Security=True;User Instance=True" 
            DeleteCommand="DELETE FROM [Candidate_professional] WHERE [candidate_prof_id] = @candidate_prof_id" 
            InsertCommand="INSERT INTO [Candidate_professional] ([candidate_id], [area_id], [expr_yrs], [expr_mth], [salary], [industry], [ind_role], [skills]) VALUES (@candidate_id, @area_id, @expr_yrs, @expr_mth, @salary, @industry, @ind_role, @skills)" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT * FROM [Candidate_professional] WHERE ([candidate_id] = @candidate_id)" 
            UpdateCommand="UPDATE [Candidate_professional] SET [candidate_id] = @candidate_id, [area_id] = @area_id, [expr_yrs] = @expr_yrs, [expr_mth] = @expr_mth, [salary] = @salary, [industry] = @industry, [ind_role] = @ind_role, [skills] = @skills WHERE [candidate_prof_id] = @candidate_prof_id">
            <SelectParameters>
                <asp:SessionParameter Name="candidate_id" SessionField="Cid" Type="Int32" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="candidate_prof_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="candidate_id" Type="Int32" />
                <asp:Parameter Name="area_id" Type="Int32" />
                <asp:Parameter Name="expr_yrs" Type="Int32" />
                <asp:Parameter Name="expr_mth" Type="Int32" />
                <asp:Parameter Name="salary" Type="String" />
                <asp:Parameter Name="industry" Type="String" />
                <asp:Parameter Name="ind_role" Type="String" />
                <asp:Parameter Name="skills" Type="String" />
                <asp:Parameter Name="candidate_prof_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="candidate_id" Type="Int32" />
                <asp:Parameter Name="area_id" Type="Int32" />
                <asp:Parameter Name="expr_yrs" Type="Int32" />
                <asp:Parameter Name="expr_mth" Type="Int32" />
                <asp:Parameter Name="salary" Type="String" />
                <asp:Parameter Name="industry" Type="String" />
                <asp:Parameter Name="ind_role" Type="String" />
                <asp:Parameter Name="skills" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    </form>
</asp:Content>

