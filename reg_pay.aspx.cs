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
    SqlConnection cd = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

    string s1 = "", s2 = "";

    int count = 100;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text="Dear "+Session["name"].ToString();
        Label3.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("STUDENT_LOGIN.aspx");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
         if (TextBox10.Text == "5241-9878-9632-1125" && TextBox11.Text == "157" && TextBox12.Text == "10/2025" && TextBox13.Text == "Krishna S")
        {
            string stat = "ACTIVE";
            cd.Open();

            string sdw = "update reg set stat='"+stat.ToString()+"' where uid='" + Session["payid"].ToString() + "'";// where aid='" + Session["aid"].ToString() + "'";// where pwd='" + f.ToString() + "' and pwd='" + TextBox1.Text + "' ";
            SqlCommand cmdw = new SqlCommand(sdw, cd);
            cmdw.ExecuteNonQuery();

            cd.Close();

            Response.Redirect("reg_com.aspx");
        }
         else
         {
             Label3.Visible = true;
         }
    }
}