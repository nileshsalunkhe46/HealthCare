using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class admin_addDoctor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSch_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Applications\Healthcare\App_Data\HealthCareDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        SqlCommand cmd = con.CreateCommand();
        con.Open();

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO doctor (docId, gender, fname, mname, lname, mobno, address, bgrp, dob, password, qualification) VALUES ('" + txtDocId.Text + "','" + lstgender.Text + "','" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + txtmob.Text + "','" + txtaddress.Text + "','" + lstbgrp.Text + "','" + txtDate.Text + "','" + txtpass.Text + "','" + txtQual.Text + "')";
        Response.Write("<script>alert('Data Inserted Successfully');</script>");
        cmd.ExecuteNonQuery();
        con.Close();
    }
   
}