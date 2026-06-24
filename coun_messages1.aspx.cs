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
        c.Open();
        String s11a = "select * from message where mid='" + Session["mid"].ToString() + "'";
        SqlCommand cmd11a = new SqlCommand(s11a, c);
        SqlDataReader r11a = cmd11a.ExecuteReader();

        if (r11a.Read() == true)
        {
            Label4.Text = r11a["sname"].ToString();
            Label7.Text = r11a["msg"].ToString();
            Label8.Text = r11a["dat"].ToString();
            ImageButton1.ImageUrl = "counselor.ashx?id=" + r11a["sid"].ToString();

        }
        r11a.Close();
        c.Close();
        //Label8.Text=Session["sname"].ToString();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cd.Open();

        string sdw = "update message set reply ='" + TextBox8.Text + "' where mid='" + Session["mid"].ToString() + "'";// where pwd='" + f.ToString() + "' and pwd='" + TextBox1.Text + "' ";
        SqlCommand cmdw = new SqlCommand(sdw, cd);
        cmdw.ExecuteNonQuery();

        cd.Close();

        Response.Redirect("coun_messages.aspx");
      
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton1_Command1(object sender, CommandEventArgs e)
    {
        Session["cid2"] = e.CommandArgument.ToString();
        Response.Redirect("student_counselor_full.aspx");
    }
    protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton1_Command(object sender, CommandEventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {

    }
}