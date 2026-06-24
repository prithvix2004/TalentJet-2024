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
            String s11a = "select * from reg where uid='" + Session["sid"].ToString() + "'";
            SqlCommand cmd11a = new SqlCommand(s11a, c);
            SqlDataReader r11a = cmd11a.ExecuteReader();

            if (r11a.Read() == true)
            {
                Label6.Text = "Model Id " + r11a[0].ToString();
                Label1.Text = r11a[1].ToString();
                TextBox1.Text = r11a[1].ToString();
                TextBox8.Text = r11a["ge"].ToString();
                TextBox9.Text = r11a["exp"].ToString();
                TextBox2.Text = r11a["ph"].ToString();
                TextBox5.Text = r11a[5].ToString();
                TextBox10.Text = r11a["loc"].ToString();
                
                //  Label1.Text = r11a[2].ToString();
                ImageButton1.ImageUrl = "student.ashx?id=" + r11a[0].ToString();
                //ImageButton2.ImageUrl = "student.ashx?id=" + r11a[0].ToString();
                //ImageButton5.ImageUrl = "student1.ashx?id=" + r11a[0].ToString();
                //ImageButton3.ImageUrl = "student2.ashx?id=" + r11a[0].ToString();
                //ImageButton4.ImageUrl = "student3.ashx?id=" + r11a[0].ToString();
            }
            r11a.Close();
            c.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
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
        //cd.Open();

        //string sdw = "update counselor set pic1= @img,pic2=@img5,pic3=@img3,pic4=@img4 where cid='" +Session["coid"].ToString() + "'";
        //SqlCommand cmdw = new SqlCommand(sdw, cd);


        //byte[] img = new byte[FileUpload1.PostedFile.ContentLength];
        //FileUpload1.PostedFile.InputStream.Read(img, 0, FileUpload1.PostedFile.ContentLength);
        //cmdw.Parameters.Add("@img", SqlDbType.Image).Value = img;

        //byte[] img5 = new byte[FileUpload5.PostedFile.ContentLength];
        //FileUpload5.PostedFile.InputStream.Read(img5, 0, FileUpload5.PostedFile.ContentLength);
        //cmdw.Parameters.Add("@img5", SqlDbType.Image).Value = img5;

        //byte[] img3 = new byte[FileUpload3.PostedFile.ContentLength];
        //FileUpload3.PostedFile.InputStream.Read(img3, 0, FileUpload3.PostedFile.ContentLength);
        //cmdw.Parameters.Add("@img3", SqlDbType.Image).Value = img3;

        //byte[] img4 = new byte[FileUpload4.PostedFile.ContentLength];
        //FileUpload4.PostedFile.InputStream.Read(img4, 0, FileUpload4.PostedFile.ContentLength);
        //cmdw.Parameters.Add("@img4", SqlDbType.Image).Value = img4;

        //cmdw.ExecuteNonQuery();

        //cd.Close();
        Response.Redirect("coun_profile1.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        cd.Open();

        string sdw = "update reg set name ='" + TextBox1.Text + "',ge='" + TextBox8.Text + "',exp='" + TextBox9.Text + "',ph='" + TextBox2.Text + "',email='" + TextBox5.Text + "',loc='" + TextBox10.Text + "' where uid='" + Session["sid"].ToString() + "'";// where pwd='" + f.ToString() + "' and pwd='" + TextBox1.Text + "' ";
        SqlCommand cmdw = new SqlCommand(sdw, cd);
        cmdw.ExecuteNonQuery();

        cd.Close();

        Response.Redirect("coun_profile.aspx");
    }
}