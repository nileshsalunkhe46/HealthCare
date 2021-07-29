using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox4.Text = Session["txtusername"].ToString();
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Applications\Healthcare\App_Data\HealthCareDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

        con.Open();
        string u;
        u = TextBox4.Text;

        SqlCommand cmd = new SqlCommand("SELECT * FROM profile WHERE username=@1", con);
        cmd.Parameters.AddWithValue("1", u);

        SqlDataReader myReader = cmd.ExecuteReader();
        if (myReader.Read())
        {
            Session["txtusername"] = u;
            txtfname.Text = (myReader["fname"].ToString());
            txtmname.Text = (myReader["mname"].ToString());
            txtlname.Text = (myReader["lname"].ToString());
            lstgender.Text = (myReader["gender"].ToString());
            txtaltmob.Text = (myReader["altmob"].ToString());
            lstbgrp.Text = (myReader["bgrp"].ToString());
            txtaddress.Text = (myReader["address"].ToString());
        }
        else
        {
            Response.Write("<script>alert('Your data is not available!');</script>");
        }
        myReader.Close();
        con.Close();

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Applications\Healthcare\App_Data\HealthCareDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        con.Open();
        string username = TextBox4.Text;
        SqlCommand cmd = new SqlCommand("UPDATE profile SET gender=@gender, fname=@fname, mname=@mname, lname=@lname, altmob=@altmob, address=@address, bgrp=@bgrp WHERE username=@username",con);
        cmd.Parameters.AddWithValue("@gender", lstgender.Text);
        cmd.Parameters.AddWithValue("@fname", txtfname.Text);
        cmd.Parameters.AddWithValue("@mname", txtmname.Text);
        cmd.Parameters.AddWithValue("@lname", txtlname.Text);
        cmd.Parameters.AddWithValue("@altmob", txtaltmob.Text);
        cmd.Parameters.AddWithValue("@address", txtaddress.Text);
        cmd.Parameters.AddWithValue("@bgrp", lstbgrp.Text);
        cmd.Parameters.AddWithValue("username", username);
        Response.Write("<script>alert('Profile Updated Successfully');</script>");
        cmd.ExecuteNonQuery();
        con.Close();

    }
    protected void btnProfile_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Applications\Healthcare\App_Data\HealthCareDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        SqlCommand cmd = con.CreateCommand();
        con.Open();

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO profile (username,gender,fname, mname, lname, altmob, address, bgrp) VALUES ('" + TextBox4.Text + "','" + lstgender.Text + "','" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + txtaltmob.Text + "','" + txtaddress.Text + "','" + lstbgrp.Text + "')";
        Response.Write("<script>alert('Data Inserted Successfully');</script>");
        cmd.ExecuteNonQuery();
        con.Close();
    }

    
}