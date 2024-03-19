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

public partial class jobseeker_newpw : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        string query = "select username from candidate_basic where ans='" + TextBox1.Text + "' and que_id=" + DropDownList4.SelectedValue;
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        Label23.Text = ds.Tables[0].Rows[0]["username"].ToString();
        TextBox2.Enabled = true;
        TextBox3.Enabled = true;

       // string ansrr = null;
        //string a = null;
        //a = ds.Tables[0].Rows[0]["ansr"].ToString();
        //ansrr = TextBox1.Text;

       // string qid = null;
        //qid = ds.Tables[0].Rows[0]["que_id"].ToString();

       // Label23.Text = DropDownList4.SelectedIndex.ToString();

        /* if (a == ansrr)
         {
             Label23.Text = ds.Tables[0].Rows[0]["username"].ToString();
             TextBox2.Enabled = true;
             TextBox3.Enabled = true;
         }*/
    }
  
    protected void Button2_Click(object sender, EventArgs e)
    {
          con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
          con.Open();

          string query = "select username from candidate_basic where ans='" + TextBox1.Text + "' and que_id=" + DropDownList4.SelectedValue;
          adp = new SqlDataAdapter(query, con);
          DataSet ds = new DataSet();
          adp.Fill(ds);

          string u = null;
          u = ds.Tables[0].Rows[0]["username"].ToString();

        if (TextBox2.Text == TextBox3.Text)
        {
            Label26.Visible = false; 

            string query2 = "update Login set password= '" + TextBox2.Text + "' where username='"+u+"'";
            SqlCommand cmd = new SqlCommand(query2, con);
            cmd.ExecuteNonQuery();
        }

        else
        {
            Label26.Visible = true;
            Label26.Text = "Password did not matched";
        }

    }
}
