using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Xml.Linq;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Web.Security;
using System.Net;
using System.Net.Mail;

public partial class user_sappt : System.Web.UI.Page
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





    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtDate.Text = Convert.ToDateTime(Calendar1.SelectedDate).ToString("dd/MM/yyyy");
    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        DateTime pastday = e.Day.Date;
        DateTime date = DateTime.Now;
        int year = date.Year;
        int month = date.Month;
        int day = date.Day;
        DateTime today = new DateTime(year, month, day);
        if (pastday.CompareTo(today) < 0)
        {
            e.Cell.ForeColor = System.Drawing.Color.Gray;
            e.Day.IsSelectable = false;
        }
    }

    protected void btnSch_Click1(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Applications\Healthcare\App_Data\HealthCareDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        SqlCommand cmd = con.CreateCommand();
        con.Open();

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO appointmentsx (username, date, gender,time, fname, mname, lname, altmob, address, bgrp, email) VALUES ('" + txtusername.Text + "','" + txtDate.Text + "','" + lstgender.Text + "','" + lsttime.Text + "','" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + txtaltmob.Text + "','" + txtaddress.Text + "','" + lstbgrp.Text + "','" + txtEmail.Text + "')";
        Response.Write("<script>alert('Appointment Scheduled Successfully');</script>");
        con.Close();
        string username = string.Empty;
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlCommand cmdx = new SqlCommand("SELECT username FROM register WHERE email = @email"))
        {
            cmdx.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
            cmdx.Connection = con;
            con.Open();
            using (SqlDataReader sdr = cmdx.ExecuteReader())
            {
                if (sdr.Read())
                {
                    username = sdr["username"].ToString();
                }
            }
            
        }

        if (!string.IsNullOrEmpty(username))
        {
            MailMessage mm = new MailMessage("dhanwant.adm@gmail.com", txtEmail.Text.Trim());
            mm.Subject = "Appointment Update";
            mm.Body = string.Format("Hi {0},<br /><br />Your Appointment is scheduled successfully.<br /><br />Thank You.", username);
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential();
            NetworkCred.UserName = "dhanwant.adm@gmail.com";
            NetworkCred.Password = "dhan@wantari_2020";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);

            cmd.ExecuteNonQuery();
            con.Close();

        }

    }
}