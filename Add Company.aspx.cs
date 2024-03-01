using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace p_d
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {

                con = new SqlConnection(ConfigurationManager.ConnectionStrings["p_dcs"].ConnectionString);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [Company] ([Company_Name], [Company_Email], [Company_Phone], [Company_Address]) VALUES (@company_name, @company_email, @phone, @address)", con);
            cmd.Parameters.AddWithValue("@company_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@company_email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@phone", TextBox3.Text);
            cmd.Parameters.AddWithValue("@address", TextBox4.Text);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                Label6.Text = "Insert";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
        

            }
            else
                Label6.Text = "Error";
        }

    }
}