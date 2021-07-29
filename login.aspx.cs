using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Applications\Healthcare\App_Data\HealthCareDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

        con.Open();
        string u, p;
        u = txtusername.Text;
        p = txtpassword.Text;
        SqlCommand cmd = new SqlCommand("SELECT * FROM register WHERE username=@1 and password=@2", con);
        cmd.Parameters.AddWithValue("1", u);
        cmd.Parameters.AddWithValue("2", p);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["txtusername"] = u;
            Response.Redirect("./user/userindex.aspx");
        }
        else
        {
            Response.Write("<script>alert('Wrong Username or Password');</script>");
        }
        dr.Close();
        con.Close();
    }
    protected void btnres_Click(object sender, EventArgs e)
    {
        txtusername.Text = string.Empty;
        txtpassword.Text = string.Empty;
    }
}