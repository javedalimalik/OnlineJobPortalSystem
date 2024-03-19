﻿using System;
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

public partial class search_by_company : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataAdapter adp = null;
    SqlCommand cmd = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            company();
        }
    }

    public void company()
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        string query = "select * from Job_post j1, Company c1 where j1.company_id = c1.company_id";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "company_name";
        DropDownList1.DataValueField = "company_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        int cid = 0;
        cid = Convert.ToInt32(Session["Cid"].ToString());

        int rws = 0;
        rws = Convert.ToInt32(GridView1.Rows.Count.ToString());
        // Label22.Text = GridView1.Rows.Count.ToString();

        for (int i = 0; i < rws; i++)
        {
            CheckBox chk = (CheckBox)GridView1.Rows[i].FindControl("CheckBox3");

            if (chk.Checked == true)
            {
                String a = GridView1.Rows[i].Cells[19].Text;
                string query = "insert into Saved_jobs (candidate_id,jobpost_id) values (" + cid + "," + a + ")";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        string query = "select Jobpost_id,company_name,job_title,category_name,area_name,country_name,state_name,city_name,post,no_vacancy,start_date,end_date,expr_req,skills_req,edu_req,basic_req,salary_min,salary_max from job_post,Area,Category,City,State,Country,Company where Job_post.area_id=Area.area_id and Area.category_id=Category.category_id and Job_post.city_id=City.city_id and State.state_id=City.state_id and Country.country_id=State.country_id and Job_post.company_id=Company.company_id and Job_post.company_id="+  DropDownList1.SelectedValue;
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
