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
       // Panel2.Visible = false;
       // Label3.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cd.Open();
        string ss = "select max(uid) from reg";
        SqlCommand cmd = new SqlCommand(ss, cd);
        SqlDataReader r = cmd.ExecuteReader();
        while (r.Read() == true)
        {
            s1 = r[0].ToString();
            if (s1 == "")
            {
                s2 = "u" + count;
            }
            else
            {
                s2 = s1.Remove(0, 1);
                int i = Convert.ToInt32(s2);
                i++;
                s2 = "u" + i;
            }

        }
        r.Close();
        cd.Close();

        Session["name"] = TextBox1.Text;
        string stat = "INACTIVE";
        Session["payid"] = s2.ToString();
        cd.Open();

        string sss = "insert into reg values('" + s2.ToString() + "','" + TextBox1.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "',@img1,@img2,@img3,@img4,'" + stat.ToString() + "')";

        SqlCommand cmd11 = new SqlCommand(sss, cd);

        byte[] img1 = new byte[FileUpload1.PostedFile.ContentLength];
        FileUpload1.PostedFile.InputStream.Read(img1, 0, FileUpload1.PostedFile.ContentLength);
        cmd11.Parameters.Add("@img1", SqlDbType.Image).Value = img1;

        byte[] img2 = new byte[FileUpload2.PostedFile.ContentLength];
        FileUpload2.PostedFile.InputStream.Read(img2, 0, FileUpload2.PostedFile.ContentLength);
        cmd11.Parameters.Add("@img2", SqlDbType.Image).Value = img2;

        byte[] img3 = new byte[FileUpload3.PostedFile.ContentLength];
        FileUpload3.PostedFile.InputStream.Read(img3, 0, FileUpload3.PostedFile.ContentLength);
        cmd11.Parameters.Add("@img3", SqlDbType.Image).Value = img3;

        byte[] img4 = new byte[FileUpload4.PostedFile.ContentLength];
        FileUpload3.PostedFile.InputStream.Read(img4, 0, FileUpload4.PostedFile.ContentLength);
        cmd11.Parameters.Add("@img4", SqlDbType.Image).Value = img4;

        cmd11.ExecuteNonQuery();
        cd.Close();
        Response.Redirect("reg_pay.aspx");
        
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
         
       
    }
}