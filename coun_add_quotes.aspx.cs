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
        //Label8.Text=Session["sname"].ToString();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cd.Open();
        string ss = "select max(qid) from quotes";
        SqlCommand cmd = new SqlCommand(ss, cd);
        SqlDataReader r = cmd.ExecuteReader();
        while (r.Read() == true)
        {
            s1 = r[0].ToString();
            if (s1 == "")
            {
                s2 = "Q" + count;
            }
            else
            {
                s2 = s1.Remove(0, 1);
                int i = Convert.ToInt32(s2);
                i++;
                s2 = "Q" + i;
            }

        }
        r.Close();
        cd.Close();


        cd.Open();

        string sss = "insert into quotes values('" + s2.ToString() + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + System.DateTime.Today.ToString("dd/MM/yyyy") + "','"+Session["coid"].ToString()+"')";

        SqlCommand cmd11 = new SqlCommand(sss, cd);
        
        cmd11.ExecuteNonQuery();
        cd.Close();
        Response.Redirect("coun_quotes.aspx");
      
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
    protected void LinkButton1_Command(object sender, CommandEventArgs e)
    {
        Session["mid"] = e.CommandArgument.ToString();
        Response.Redirect("coun_messages1.aspx");
    }
}