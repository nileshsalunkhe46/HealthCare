using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class registeruser : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsub_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Applications\Healthcare\App_Data\HealthCareDB.mdf;Integrated Security=True;Connect Timeout=300;User Instance=True");
        SqlCommand cmd = con.CreateCommand();
        con.Open();
        
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO register (username, email, password, mobileno, seqque, seqans) VALUES ('"+txtusername.Text+"','"+txtemail.Text+"','"+txtpass.Text+"','"+txtmobile.Text+"','"+txtseque.Text+"','"+txtseqans.Text+"')";
        cmd.ExecuteNonQuery();
        
        Response.Redirect("login.aspx");
        con.Close();
    }

    protected void btnres_Click(object sender, EventArgs e)
    {
        txtusername.Text = string.Empty;
        txtemail.Text = string.Empty;
        txtmobile.Text = string.Empty;
        txtseque.Text = string.Empty;
        txtseqans.Text = string.Empty;

    }
    
}