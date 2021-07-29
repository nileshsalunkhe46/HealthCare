using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_pprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtusername.Text = Session["txtusername"].ToString();
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Applications\Healthcare\App_Data\HealthCareDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

        con.Open();
        string u;
        u = txtusername.Text;

        SqlCommand cmd = new SqlCommand("SELECT * FROM pprofile WHERE username=@1", con);
        cmd.Parameters.AddWithValue("1", u);

        SqlDataReader myReader = cmd.ExecuteReader();
        if (myReader.Read())
        {
            Session["txtusername"] = u;
            txtAge.Text = (myReader["age"].ToString());
            txtadd1.Text = (myReader["addr1"].ToString());
            txtadd2.Text = (myReader["addr2"].ToString());
            txtadd3.Text = (myReader["addr3"].ToString());
            txtpin.Text = (myReader["pincode"].ToString());
            txtallr.Text = (myReader["aller"].ToString());
            txtallr.Text = (myReader["allergies"].ToString());
            lstBP.Text = (myReader["bp"].ToString());
            lstCho.Text = (myReader["cholestrol"].ToString());
            lstEcg.Text = (myReader["ecg"].ToString());
            txthistory.Text = (myReader["history"].ToString());
            txtrefer.Text = (myReader["refrence"].ToString());
        }
        else
        {
            Response.Write("<script>alert('Your data is not available!');</script>");
        }
        myReader.Close();
        con.Close();
    }
    protected void btnProfile_Click(object sender, EventArgs e)
    {
        
    }



    protected void txtallr_TextChanged(object sender, EventArgs e)
    {

    }
    protected void lstallr_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (lstallr.Text == "Yes")
        {
            txtallr.Enabled = true;
        }
        else
        {
            txtallr.Enabled = false;
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Applications\Healthcare\App_Data\HealthCareDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        SqlCommand cmd = con.CreateCommand();
        con.Open();

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO pprofile (username,age,addr1, addr2, addr3, pincode, aller, allergies, bp, cholestrol, ecg, history,refrence) VALUES ('" + txtusername.Text + "','" + txtAge.Text + "','" + txtadd1.Text + "','" + txtadd2.Text + "','" + txtadd3.Text + "','" + txtpin.Text + "','" + lstallr.Text + "','" + txtallr.Text + "','" + lstBP.Text + "','" + lstCho.Text + "','" + lstEcg.Text + "','" + txthistory.Text + "','" + txtrefer.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();
    }
}