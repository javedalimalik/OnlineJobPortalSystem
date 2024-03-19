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

public partial class recruiter_login : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataReader dr = null;
    SqlCommand cmd = null;

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
        string UserName = "";
        string PassWord = "";

        while (dr.Read())
        {
            UserName = dr[0].ToString();
            PassWord = dr[1].ToString();

            if (tbrun.Text == UserName && tbrpw.Text == PassWord)
            {
                Session.Add("RName", UserName);
                Role = dr[2].ToString();
                Flag = true;
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

            if (Role == "recruiter")
            {
                
                Response.Redirect("~/recruiter_profile.aspx");

            }
          
        }
        con.Close();
    }
}
