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

public partial class jobseeker_login : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataReader dr = null;
    SqlCommand cmd = null;
    SqlDataAdapter adp = null;

    public int getcid(string UserName)
     {
         con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
         con.Open();

         int js;

         string query = "select candidate_id from Candidate_basic where username='" + UserName + "' ";
         adp = new SqlDataAdapter(query, con);
         DataSet ds = new DataSet();
         adp.Fill(ds);

         js = Convert.ToInt32(ds.Tables[0].Rows[0]["candidate_id"].ToString());

         return (js);

     }

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool Flag = false;

        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Login";
        dr = cmd.ExecuteReader();
        string Role = "";

        while (dr.Read())
        {
            string UserName = dr[0].ToString();
            string PassWord = dr[1].ToString();
            int cid = 0;

            

            if (tbjun.Text == UserName && tbjpw.Text == PassWord)
            {
                Session.Add("JName", UserName);
                Role = dr[2].ToString();
                Flag = true;

                cid = getcid(UserName);
                Session.Add("Cid", cid);
            }


        }
        dr.Close();

        if (Flag == false)
        {
            Label5.Visible = true;
            Label5.Text = "Not authorized";
        }
        if (Flag == true)
        {
           
            if (Role == "jobseeker")
            {

                Response.Redirect("~/jobseeker_profile.aspx");


            }
        }
        con.Close();
    }
}
