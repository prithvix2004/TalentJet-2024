using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class BLANK : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlConnection cd = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

    string s1 = "", s2 = "";

    int count = 100;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c.Open();
        String s = "select * from reg";// where uid='" + Session["sid"].ToString()+ "'";
        SqlCommand cmd = new SqlCommand(s, c);
        SqlDataReader r = cmd.ExecuteReader();

        if (r.Read() == true)
        {

            if (TextBox2.Text == r["pwd"].ToString())
            {
                cd.Open();

                string sdw = "update reg set pwd='" + TextBox5.Text + "' where uid='" + Session["sid"].ToString() + "'";// where pwd='" + f.ToString() + "' and pwd='" + TextBox1.Text + "' ";
                SqlCommand cmdw = new SqlCommand(sdw, cd);
                cmdw.ExecuteNonQuery();

                cd.Close();

                Response.Redirect("HOME.aspx");
            }
            else
            {
                Label1.Visible = true;

            }
        }
    }
}