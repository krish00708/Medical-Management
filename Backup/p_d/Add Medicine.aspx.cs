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
    public partial class WebForm3 : System.Web.UI.Page
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
            string date = Date.SelectedValue + "/" + Month.SelectedValue + "/" + Year.SelectedValue;
            if (Date.SelectedIndex > 0 && Month.SelectedIndex > 0 && Year.SelectedIndex > 0)
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO [Medicine] ([Medicine_Name], [Medicine_Company], [Quantity], [Price], [Expiry_Date]) VALUES (@medicine_name, @medicine_company, @quantity, @price ,@expiry_date)", con);
                cmd.Parameters.AddWithValue("@medicine_name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@medicine_company", TextBox2.Text);
                cmd.Parameters.AddWithValue("@quantity", TextBox3.Text);
                cmd.Parameters.AddWithValue("@price", TextBox4.Text);
                cmd.Parameters.AddWithValue("@expiry_date", date);

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
                    Date.SelectedIndex = 0;
                    Month.SelectedIndex = 0;
                    Year.SelectedIndex = 0;

                }
                else
                    Label6.Text = "Error";
            }
            else
                Label6.Text = "Error";
        }

    
    
    }
}