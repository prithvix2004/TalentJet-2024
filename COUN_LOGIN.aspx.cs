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

    string s1 = "", s2 = "";

    int count = 100;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        c.Open();
        String s11a = "select * from counselor where email='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "'";
        SqlCommand cmd11a = new SqlCommand(s11a, c);
        SqlDataReader r11a = cmd11a.ExecuteReader();

        if (r11a.Read() == true)
        {
            Session["coid"] = r11a[0].ToString();
            Session["coname"] = r11a[1].ToString();
           // Session["name123"] = r11a[2].ToString();

            Response.Redirect("counhome.aspx");
        }
        else
        {
            Label1.Visible = true;
        }
        r11a.Close();
        c.Close();
    }
}