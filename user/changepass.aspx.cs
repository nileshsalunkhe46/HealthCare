using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_changepass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtusername.Text = Session["txtusername"].ToString();
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Applications\Healthcare\App_Data\HealthCareDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        con.Open();
        string username = txtusername.Text;
        SqlCommand cmd = new SqlCommand("UPDATE register SET password=@password WHERE username=@username", con);
        
        cmd.Parameters.AddWithValue("@password", txtpass.Text);
        cmd.Parameters.AddWithValue("username", username);
        Response.Write("<script>alert('Password Updated Successfully');</script>");
        cmd.ExecuteNonQuery();
        con.Close();

    }
}