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
                Label7.Text = r11a[1].ToString();
                Label2.Text = r11a[2].ToString();
                Label8.Text = "Contact Number: "+r11a[4].ToString();
                Label9.Text ="Email Id: " +r11a[5].ToString();
                Label10.Text = r11a[3].ToString();
                Label11.Text = r11a[1].ToString();
                //  Label1.Text = r11a[2].ToString();

                ImageButton5.ImageUrl = "student.ashx?id=" + r11a[0].ToString();
                ImageButton1.ImageUrl = "student1.ashx?id=" + r11a[0].ToString();
                ImageButton3.ImageUrl = "student2.ashx?id=" + r11a[0].ToString();
                ImageButton4.ImageUrl = "student3.ashx?id=" + r11a[0].ToString();
                ImageButton2.ImageUrl = "student.ashx?id=" + r11a[0].ToString();

            }
            r11a.Close();
            c.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cd.Open();
        string ss = "select max(mid) from message";
        SqlCommand cmd = new SqlCommand(ss, cd);
        SqlDataReader r = cmd.ExecuteReader();
        while (r.Read() == true)
        {
            s1 = r[0].ToString();
            if (s1 == "")
            {
                s2 = "M" + count;
            }
            else
            {
                s2 = s1.Remove(0, 1);
                int i = Convert.ToInt32(s2);
                i++;
                s2 = "M" + i;
            }

        }
        r.Close();
        cd.Close();


        string reply = "No Reply..Please wait";
        cd.Open();

        string sss = "insert into message values('" + s2.ToString() + "','" + Session["diid"].ToString() + "','" + Session["cid2"].ToString() + "','" + TextBox8.Text + "','" + System.DateTime.Today.ToString("dd/MM/yyyy") + "','" + reply.ToString() + "','"+Label7.Text+"','"+Session["na2d"].ToString()+"')";

        SqlCommand cmd11 = new SqlCommand(sss, cd);
       
        cmd11.ExecuteNonQuery();
        cd.Close();
        Response.Redirect("student_messages.aspx");
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
    protected void Button_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button6_Click(object sender, EventArgs e)
    {

    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {

    }
}