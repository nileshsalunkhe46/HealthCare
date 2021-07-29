using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class doctor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void admLog_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Applications\Healthcare\App_Data\HealthCareDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

        con.Open();
        string u, p;
        u = admUser.Text;
        p = admPass.Text;
        SqlCommand cmd = new SqlCommand("SELECT * FROM admin WHERE username=@1 and password=@2", con);
        cmd.Parameters.AddWithValue("1", u);
        cmd.Parameters.AddWithValue("2", p);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["admUser"] = u;
            Response.Redirect("./admin/plist.aspx");
        }
        else
        {
            Response.Write("<script>alert('Wrong Username or Password');</script>");
        }
        dr.Close();
        con.Close();
    }
    protected void docLog_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Applications\Healthcare\App_Data\HealthCareDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

        con.Open();
        string u, p;
        u = docUser.Text;
        p = docPass.Text;
        SqlCommand cmd = new SqlCommand("SELECT * FROM doctor WHERE docId=@1 and password=@2", con);
        cmd.Parameters.AddWithValue("1", u);
        cmd.Parameters.AddWithValue("2", p);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["docUser"] = u;
            Response.Redirect("./doctor/index.aspx");
        }
        else
        {
            Response.Write("<script>alert('Wrong Username or Password');</script>");
        }
        dr.Close();
        con.Close();
    }
}