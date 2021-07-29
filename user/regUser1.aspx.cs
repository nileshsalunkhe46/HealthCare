using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_regUser1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
       
    }
    protected void forward1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Applications\Healthcare\App_Data\HealthCareDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        SqlCommand cmd = con.CreateCommand();
        con.Open();

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO register1 (fname, mname, lname, mobno) VALUES ('" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + txtaltmob.Text + "')";
        cmd.ExecuteNonQuery();

        Response.Redirect("~/user/regUser1.aspx");
        con.Close();
      
    }
}