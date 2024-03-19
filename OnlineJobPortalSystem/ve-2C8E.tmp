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

public partial class admin_package : System.Web.UI.Page
{
    SqlConnection con = null;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        string qry = "insert into Package(package_cost,no_jobs) values ('" + TextBox1.Text + "','" + TextBox2.Text + "')";

        SqlCommand cmd = new SqlCommand(qry, con);

        cmd.ExecuteNonQuery();

        clear();
    }

    public void clear()
    {

        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}
