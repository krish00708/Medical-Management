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
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"] == null)
                {
                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    int id = Convert.ToInt32(Session["edit"]);
                    con = new SqlConnection(ConfigurationManager.ConnectionStrings["p_dcs"].ConnectionString);

                    SqlDataAdapter adpt = new SqlDataAdapter("SELECT [Medicine_Name], [Medicine_Company], [Quantity], [Price], [Expiry_Date] FROM [Medicine] WHERE [Medicine_ID] =" + id, con);
                    DataTable dt = new DataTable();
                    adpt.Fill(dt);
                    TextBox1.Text = dt.Rows[0][0].ToString();
                    TextBox2.Text = dt.Rows[0][1].ToString();
                    TextBox3.Text = dt.Rows[0][2].ToString();
                    TextBox4.Text = dt.Rows[0][3].ToString();
                    TextBox5.Text = dt.Rows[0][4].ToString();

                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
                int id = Convert.ToInt32(Session["edit"]);
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["p_dcs"].ConnectionString);
                SqlCommand cmd = new SqlCommand("UPDATE [Medicine] SET [Medicine_Name] = @medicinename, [Medicine_Company] = @medicinecompany, [Quantity] = @quantity, [Price] = @price, [Expiry_Date] = @expirydate WHERE [Medicine_ID] =" + id, con);
                cmd.Parameters.AddWithValue("@medicinename", TextBox1.Text);
                cmd.Parameters.AddWithValue("@medicinecompany", TextBox2.Text);
                cmd.Parameters.AddWithValue("@quantity", TextBox3.Text);
                cmd.Parameters.AddWithValue("@price", TextBox4.Text);
                cmd.Parameters.AddWithValue("@expirydate",TextBox5.Text);
                con.Open();
                int s = cmd.ExecuteNonQuery();
                con.Close();
                if (s == 1)
                {
                    Label6.Text = "Update";
                    TextBox1.Text = string.Empty;
                    TextBox2.Text = string.Empty;
                    TextBox3.Text = string.Empty;
                    TextBox4.Text = string.Empty;
                    TextBox5.Text = string.Empty;
                 }

               else
               {
                 Label6.Text = "Error";
               }
                 Response.Redirect("~/View Medicine.aspx");
        }
    }
}