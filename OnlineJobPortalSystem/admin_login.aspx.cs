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

public partial class admin_login : System.Web.UI.Page
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

        while (dr.Read())
        {
            string UserName = dr[0].ToString();
            string PassWord = dr[1].ToString();

            if (tbaun.Text == UserName && tbapw.Text == PassWord)
            {
                Role = dr[2].ToString();
                Flag = true;
            }


        }
        dr.Close();

        if (Flag == false)
        {
            Label4.Visible = true;
            Label4.Text = "Not authorized";
        }
        if (Flag == true)
        {

            if (Role=="admin")
            {
                Label4.Visible = true;
                Label4.Text = "Authorized";
                Response.Redirect("~/admin_unpw.aspx");

            }

        }
        con.Close();
    }
}
