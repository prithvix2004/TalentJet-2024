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
    SqlConnection c = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

   
    string s1 = "", s2 = "";

    int count = 100;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            c.Open();
            String s11a = "select * from counselor where cid='" + Session["diid"].ToString() + "'";
            SqlCommand cmd11a = new SqlCommand(s11a, c);
            SqlDataReader r11a = cmd11a.ExecuteReader();

            if (r11a.Read() == true)
            {
               
                TextBox1.Text = r11a[1].ToString();
                TextBox9.Text = r11a[2].ToString();
                TextBox8.Text = r11a[3].ToString();
                TextBox10.Text = r11a[4].ToString();
                TextBox2.Text = r11a[5].ToString();

                //  Label1.Text = r11a[2].ToString();
                ImageButton1.ImageUrl = "counselor.ashx?id=" + r11a[0].ToString();

            }
            r11a.Close();
            c.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cd.Open();

        string sdw = "update counselor set name ='" + TextBox1.Text + "',poition='" + TextBox9.Text + "',about='" + TextBox8.Text + "',phn='" + TextBox10.Text + "',email='" + TextBox2.Text + "' where cid='" + Session["diid"].ToString() + "'";// where pwd='" + f.ToString() + "' and pwd='" + TextBox1.Text + "' ";
        SqlCommand cmdw = new SqlCommand(sdw, cd);
        cmdw.ExecuteNonQuery();

        cd.Close();

        Response.Redirect("student_profile.aspx");
    }
    protected void Button51_Click(object sender, EventArgs e)
    {
        cd.Open();

        string sdw = "update counselor set pic= @img where cid='" + Session["diid"].ToString() + "'";
        SqlCommand cmdw = new SqlCommand(sdw, cd);


        byte[] img = new byte[FileUpload1.PostedFile.ContentLength];
        FileUpload1.PostedFile.InputStream.Read(img, 0, FileUpload1.PostedFile.ContentLength);
        cmdw.Parameters.Add("@img", SqlDbType.Image).Value = img;

        cmdw.ExecuteNonQuery();

        cd.Close();
        Response.Redirect("student_profile.aspx");
    }
}