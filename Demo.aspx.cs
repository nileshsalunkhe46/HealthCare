using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Demo : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        txtusername.Text = Session["txtusername"].ToString();
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Applications\Healthcare\App_Data\HealthCareDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

        con.Open();
        string u;
        u = txtusername.Text;

        SqlCommand cmd = new SqlCommand("SELECT * FROM profile WHERE username=@1", con);
        cmd.Parameters.AddWithValue("1", u);

        SqlDataReader myReader = cmd.ExecuteReader();
        if (myReader.Read())
        {
            Session["txtusername"] = u;
            TextBox1.Text = (myReader["fname"].ToString());
            TextBox2.Text = (myReader["mname"].ToString());
            TextBox3.Text = (myReader["lname"].ToString());
            TextBox4.Text = (myReader["gender"].ToString());
            TextBox5.Text = (myReader["altmob"].ToString());
            TextBox6.Text = (myReader["bgrp"].ToString());
            TextBox7.Text = (myReader["address"].ToString());
        }
        else
        {
            Response.Write("<script>alert('Wrong Username or Password');</script>");
        }
        myReader.Close();
        con.Close();
    }
    


    protected void btnSch_Click(object sender, EventArgs e)
    {

        
    }
        
}