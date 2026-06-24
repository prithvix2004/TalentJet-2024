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
        if (!IsPostBack)
        {

            c.Open();
            String s11a = "select * from reg where uid='" + Session["cid2"].ToString() + "'";
            SqlCommand cmd11a = new SqlCommand(s11a, c);
            SqlDataReader r11a = cmd11a.ExecuteReader();

            if (r11a.Read() == true)
            {
                Label6.Text = "Student Id " + r11a[0].ToString();
                Label1.Text = r11a[1].ToString();
                TextBox1.Text = r11a[1].ToString();
                TextBox8.Text = r11a[2].ToString();
                TextBox9.Text = r11a["loc"].ToString();
                TextBox2.Text = r11a["email"].ToString();
                TextBox10.Text = r11a["exp"].ToString();
                
                //  Label1.Text = r11a[2].ToString();
                ImageButton1.ImageUrl = "student.ashx?id=" + r11a[0].ToString();

            }
            r11a.Close();
            c.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cd.Open();

        string sdw = "delete from reg where uid='" + Session["cid2"].ToString() + "'";// where pwd='" + f.ToString() + "' and pwd='" + TextBox1.Text + "' ";
        SqlCommand cmdw = new SqlCommand(sdw, cd);
        cmdw.ExecuteNonQuery();

        cd.Close();

        Response.Redirect("admin_view_student.aspx");
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton1_Command1(object sender, CommandEventArgs e)
    {

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        //string gg = "a100";
       
    }
}