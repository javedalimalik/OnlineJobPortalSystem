using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;

public partial class jobseeker_regi1 : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataAdapter adp = null;

    public void que()
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        string query = "select * from Question";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList4.DataSource = ds.Tables[0];
        DropDownList4.DataTextField = "question";
        DropDownList4.DataValueField = "que_id";
        DropDownList4.DataBind();
        DropDownList4.Items.Insert(0, new ListItem("select", "0"));
        con.Close();

    }

    public void country()
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        string query = "select * from Country";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "country_name";
        DropDownList1.DataValueField = "country_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }

    public void state()
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        string query = "select * from State where State.country_id=" + DropDownList1.SelectedValue;
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList2.DataSource = ds.Tables[0];
        DropDownList2.DataTextField = "state_name";
        DropDownList2.DataValueField = "state_id";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("select", "0"));

        con.Close();

    }
    public void city()
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        SqlDataAdapter adp = null;
        string query = "select * from City where City.state_id=" + DropDownList2.SelectedValue;

        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DropDownList3.DataSource = ds.Tables[0];
        DropDownList3.DataTextField = "city_name";
        DropDownList3.DataValueField = "city_id";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, new ListItem("select", "0"));
        con.Close();
    }

    public void category()
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        string query = "select * from Category";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList8.DataSource = ds.Tables[0];
        DropDownList8.DataTextField = "category_name";
        DropDownList8.DataValueField = "category_id";
        DropDownList8.DataBind();
        DropDownList8.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }

    public void area()
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        string query = "select * from Area where Area.category_id=" + DropDownList8.SelectedValue;
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList9.DataSource = ds.Tables[0];
        DropDownList9.DataTextField = "area_name";
        DropDownList9.DataValueField = "area_id";
        DropDownList9.DataBind();
        DropDownList9.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }

    public int getcid(string unm,SqlConnection con)
    {

        int c;

        string query = "select candidate_id from Candidate_basic where username='"+unm+"' ";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        c = Convert.ToInt32(ds.Tables[0].Rows[0]["candidate_id"].ToString());

        return(c);
        
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            que();

            country();
            DropDownList2.Items.Insert(0, new ListItem("select", "0"));
            DropDownList3.Items.Insert(0, new ListItem("select", "0"));

            category();
            DropDownList9.Items.Insert(0, new ListItem("select", "0"));
        }
   
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    

    protected void Button6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }


    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlCommand cmd1 = null;
        SqlCommand cmd2 = null;
        SqlCommand cmd3 = null;
        SqlCommand cmd4 = null;
        SqlCommand cmd5 = null;
        SqlCommand cmd6 = null;
        SqlCommand cmd7 = null;

        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        string gndr = null;
        string email = null;

        if(RadioButton1.Checked == true)
        {
            gndr = RadioButton1.Text;
        }
        else
        {
             gndr = RadioButton2.Text;
        }

        email = TextBox11.Text + "@" + TextBox12.Text + ".com";

        string qry1 = "insert into Login (username, password, role) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','jobseeker')";
        cmd1 = new SqlCommand(qry1, con);
        cmd1.ExecuteNonQuery();

        string qry2 = "insert into Candidate_basic (username, que_id, ans, profile_date, first_name, middle_name, last_name, candidate_addrs, city_id, gender, dob, contact_no, email_id) values ('" + TextBox1.Text + "','" + DropDownList4.SelectedValue + "','" + TextBox14.Text + "','" + TextBox27.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox13.Text + "','" + DropDownList4.SelectedValue + "','" + gndr + "','" + TextBox10.Text + "','" + TextBox9.Text + "','" + email + "')";
        cmd2 = new SqlCommand(qry2, con);
        cmd2.ExecuteNonQuery();

        string unm = null;
        unm = TextBox1.Text;

        int c = getcid(unm,con);
       
        
        string qry3 = "insert into Candidate_education(candidate_id ,per10, per12, graduation, institute_grad, perc_grad, post_grad, institute_post_grad, perc_post_grad, dr_phd, institute_dr_phd, perc_dr_phd, certification) values ("+c+"," + Convert.ToInt32(TextBox15.Text) + "," + Convert.ToInt32(TextBox16.Text) + ",'" + DropDownList6.SelectedItem + "','" + TextBox7.Text + "'," + Convert.ToInt32(TextBox17.Text) + ",'" + DropDownList7.SelectedItem + "','" + TextBox8.Text + "'," + Convert.ToInt32(TextBox18.Text) + ",'" + DropDownList5.SelectedItem + "','" + TextBox19.Text + "'," + Convert.ToInt32(TextBox20.Text) + ",'" + TextBox21.Text + "')";
        cmd3 = new SqlCommand(qry3, con);
        cmd3.ExecuteNonQuery();

        string crnc = null;

        if (RadioButton3.Checked == true)
        {
            crnc = RadioButton3.Text;
        }
        else
        {
            crnc = RadioButton4.Text; 
        }

        string slr = null;
        slr = DropDownList13.Text + " Lacs " + DropDownList14.Text + " Thousands " + crnc;

        string qry4 = "insert into Candidate_professional(candidate_id, area_id, expr_yrs, expr_mth, salary, industry, ind_role, skills) values (" + c + ", '" + DropDownList9.SelectedValue + "', '" + DropDownList11.Text + "', '" + DropDownList12.Text + "', '" + slr + "', '" + TextBox22.Text + "', '" + TextBox28.Text + "', '" + TextBox23.Text + "')";
        cmd4 = new SqlCommand(qry4, con);
        cmd4.ExecuteNonQuery();


        string File1 = File_Upload(FileUpload1);
        string File2 = File_Upload(FileUpload2);
        string File3 = File_Upload(FileUpload3);

        string qry5 = "insert into Resume(candidate_id, resume_headline, path) values (" + c + ", '" + TextBox24.Text + "', '" + File1 + "')";
        cmd5 = new SqlCommand(qry5, con);
        cmd5.ExecuteNonQuery();


        string qry6 = "insert into Resume(candidate_id, resume_headline, path) values (" + c + ", '" + TextBox24.Text + "', '" + File2 + "')";
        cmd6 = new SqlCommand(qry6, con);
        cmd6.ExecuteNonQuery();


        string qry7 = "insert into Resume(candidate_id, resume_headline, path) values (" + c + ", '" + TextBox24.Text + "', '" + File3 + "')";
        cmd7 = new SqlCommand(qry7, con);
        cmd7.ExecuteNonQuery();

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        state();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        city();
    }
    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {
        area();
    }
    

    public string File_Upload(System.Web.UI.WebControls.FileUpload fp)
    {
        string filepath, folderpath, savepath, folderpathnew, savepathnew;
        folderpath = System.Web.HttpContext.Current.Server.MapPath("Resumes");
        folderpathnew = "~\\Resumes";
        filepath = Path.GetFileName(fp.PostedFile.FileName);
        savepath = folderpath + "\\" + filepath;

        savepathnew = folderpathnew + "\\" + filepath;

        fp.SaveAs(savepath);
        return (savepathnew);
    }
}
