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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cd.Open();
        string ss = "select max(cid) from counselor";
        SqlCommand cmd = new SqlCommand(ss, cd);
        SqlDataReader r = cmd.ExecuteReader();
        while (r.Read() == true)
        {
            s1 = r[0].ToString();
            if (s1 == "")
            {
                s2 = "C" + count;
            }
            else
            {
                s2 = s1.Remove(0, 1);
                int i = Convert.ToInt32(s2);
                i++;
                s2 = "C" + i;
            }

        }
        r.Close();
        cd.Close();

    
        cd.Open();

        string sss = "insert into counselor values('" + s2.ToString() + "','" + TextBox1.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox7.Text + "','" + TextBox2.Text + "','"+TextBox5.Text+"','" + TextBox6.Text + "',@img)";

        SqlCommand cmd11 = new SqlCommand(sss, cd);
        byte[] img = new byte[FileUpload1.PostedFile.ContentLength];
        FileUpload1.PostedFile.InputStream.Read(img, 0, FileUpload1.PostedFile.ContentLength);
        cmd11.Parameters.Add("@img", SqlDbType.Image).Value = img;

        cmd11.ExecuteNonQuery();
        cd.Close();
        Response.Redirect("adminhome.aspx");
    }
}