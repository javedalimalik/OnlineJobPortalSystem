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

public partial class post_job : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataAdapter adp = null;

     public void country()
     {
         con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
         con.Open();

         string query = "select * from Country";
         adp = new SqlDataAdapter(query, con);
         DataSet ds = new DataSet();
         adp.Fill(ds);

         DropDownList6.DataSource = ds.Tables[0];
         DropDownList6.DataTextField = "country_name";
         DropDownList6.DataValueField = "country_id";
         DropDownList6.DataBind();
         DropDownList6.Items.Insert(0, new ListItem("select", "0"));

         con.Close();
     }

     public void state()
     {
         con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
         con.Open();

         string query = "select * from State where State.country_id="+DropDownList6.SelectedValue;
         adp = new SqlDataAdapter(query, con);
         DataSet ds = new DataSet();
         adp.Fill(ds);

         DropDownList7.DataSource = ds.Tables[0];
         DropDownList7.DataTextField = "state_name";
         DropDownList7.DataValueField = "state_id";
         DropDownList7.DataBind();
         DropDownList7.Items.Insert(0, new ListItem("select", "0"));

         con.Close();

     }
     public void city()
     {
         con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
         con.Open();

         SqlDataAdapter adp = null;
         string query = "select * from City where City.state_id=" + DropDownList7.SelectedValue;

         adp = new SqlDataAdapter(query, con);
         DataSet ds = new DataSet();
         adp.Fill(ds);
         DropDownList8.DataSource = ds.Tables[0];
         DropDownList8.DataTextField = "city_name";
         DropDownList8.DataValueField = "city_id";
         DropDownList8.DataBind();
         DropDownList8.Items.Insert(0, new ListItem("select", "0"));
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

         DropDownList1.DataSource = ds.Tables[0];
         DropDownList1.DataTextField = "category_name";
         DropDownList1.DataValueField = "category_id";
         DropDownList1.DataBind();
         DropDownList1.Items.Insert(0, new ListItem("select", "0"));

         con.Close();
     }

      public void area()
      {
          con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
          con.Open();

          string query = "select * from Area where Area.category_id=" + DropDownList1.SelectedValue;
          adp = new SqlDataAdapter(query, con);
          DataSet ds = new DataSet();
          adp.Fill(ds);

          DropDownList2.DataSource = ds.Tables[0];
          DropDownList2.DataTextField = "area_name";
          DropDownList2.DataValueField = "area_id";
          DropDownList2.DataBind();
          DropDownList2.Items.Insert(0, new ListItem("select", "0"));

          con.Close();
      }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            country();
            DropDownList7.Items.Insert(0, new ListItem("select", "0"));

            DropDownList8.Items.Insert(0, new ListItem("select", "0"));

            category();
            DropDownList2.Items.Insert(0, new ListItem("select", "0"));
        }
    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        state();
    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {
        city();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string exprnc = null;
        exprnc = DropDownList4.Text + " Years and " + DropDownList5.Text + " Months";

        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        string qry = "insert into job_post (company_id, job_title, area_id, city_id, post, no_vacancy, start_date, end_date, expr_req, skills_req, edu_req, basic_req, salary_min, salary_max) values ('1','" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "','2','" + TextBox2.Text + "','" + DropDownList12.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + exprnc + "','" + TextBox3.Text + "','" + DropDownList11.SelectedItem + "','" + TextBox4.Text + "','" + DropDownList9.SelectedItem + "','" + DropDownList10.SelectedItem + "')";
        SqlCommand cmd = new SqlCommand(qry, con);

        cmd.ExecuteNonQuery();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        area();
    }
}
