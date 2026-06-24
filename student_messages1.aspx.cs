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
        String s11a = "select * from counselor where cid='" + Session["diid"].ToString() + "'";
        SqlCommand cmd11a = new SqlCommand(s11a, c);
        SqlDataReader r11a = cmd11a.ExecuteReader();

        if (r11a.Read() == true)
        {
            Label4.Text = r11a[1].ToString();
           

            ImageButton1.ImageUrl = "counselor.ashx?id=" + r11a[0].ToString();

        }
        r11a.Close();
        c.Close();
        //Label8.Text=Session["sname"].ToString();
        //c.Open();

        //string s11 = "select * from message where sid='"+Session["sid"].ToString()+"' and cid='"+Session["cid3"].ToString()+"'";// where status='" + dd.ToString() + "'";// where grp='" + DropDownList1.SelectedItem.Text + "'";// order by pid desc";// where au='" + TextBox1.Text + "' ";

        //SqlDataAdapter daa = new SqlDataAdapter(s11, c);
        //DataSet dss1 = new DataSet();
        //daa.Fill(dss1);
        //DataList1.DataSource = dss1;
        //DataList1.DataBind();
        //c.Close();



        c.Open();

        string s113 = "select * from message where sid='" + Session["diid"].ToString() + "'";// and cid='" + Session["cid3"].ToString() + "'";// where status='" + dd.ToString() + "'";// where grp='" + DropDownList1.SelectedItem.Text + "'";// order by pid desc";// where au='" + TextBox1.Text + "' ";
        SqlDataAdapter daa3 = new SqlDataAdapter(s113, c);
        DataSet dss13 = new DataSet();
        daa3.Fill(dss13);
        DataList2.DataSource = dss13;
        DataList2.DataBind();
        c.Close();

        c.Open();

        string s1133 = "select * from message where sid='" + Session["diid"].ToString() + "'";// and cid='" + Session["cid3"].ToString() + "'";// where status='" + dd.ToString() + "'";// where grp='" + DropDownList1.SelectedItem.Text + "'";// order by pid desc";// where au='" + TextBox1.Text + "' ";

        SqlDataAdapter daa33 = new SqlDataAdapter(s1133, c);
        DataSet dss133 = new DataSet();
        daa33.Fill(dss133);
        DataList3.DataSource = dss133;
        DataList3.DataBind();
        c.Close();
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


        string reply = "";
        cd.Open();

        string sss = "insert into message values('" + s2.ToString() + "','" + Session["sid"].ToString() + "','" + Session["cid3"].ToString() + "','" + TextBox8.Text + "','" + System.DateTime.Today.ToString("dd/MM/yyyy") + "','" + reply.ToString() + "','" + Label4.Text + "','"+Session["sname"].ToString()+"')";

        SqlCommand cmd11 = new SqlCommand(sss, cd);

        cmd11.ExecuteNonQuery();
        cd.Close();
        Response.Redirect("student_messages1.aspx");
      
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
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}