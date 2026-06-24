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

    string s1 = "", s2 = "";

    int count = 100;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label8.Text=Session["sname"].ToString();
        c.Open();

        string s11 = "select * from quotes order by qid desc";// where sid='"+Session["sid"].ToString()+"'";// where status='" + dd.ToString() + "'";// where grp='" + DropDownList1.SelectedItem.Text + "'";// order by pid desc";// where au='" + TextBox1.Text + "' ";

        SqlDataAdapter daa = new SqlDataAdapter(s11, c);
        DataSet dss1 = new DataSet();
        daa.Fill(dss1);
        DataList1.DataSource = dss1;
        DataList1.DataBind();
        c.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

      
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
        Session["cid3"] = e.CommandArgument.ToString();
        Response.Redirect("student_messages1.aspx");
    }
}