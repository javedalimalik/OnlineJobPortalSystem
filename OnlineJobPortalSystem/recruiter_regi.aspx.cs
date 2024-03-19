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

public partial class recruiter_regi : System.Web.UI.Page
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

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            que();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = null;
        SqlCommand cmd2 = null;

        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        string qry = "insert into Company (company_name, username, que_id, ansr, contact_person, company_contact, company_addrs, company_email, company_details) values ('" + TextBox15.Text + "','" + TextBox1.Text + "','" + DropDownList4.SelectedValue + "','" + TextBox14.Text + "','" + TextBox16.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox11.Text + "','" + TextBox17.Text + "')";
        cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();

        string qry1 = "insert into Login (username,password,role) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','recruiter')";
        cmd2 = new SqlCommand(qry1, con);
        cmd2.ExecuteNonQuery();

        con.Close();
        
        //clear();

       // Response.Redirect("~/examreg.aspx");
    }
}
