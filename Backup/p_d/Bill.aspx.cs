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
    public partial class WebForm11 : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            TextBox4.Text = DateTime.Today.ToShortDateString();
            if (!Page.IsPostBack)
            {
                dropdownbind();
            }
        }
      /*  private void total()
        {
                 float GTotal = 0;
                 for (int i = 0; i < GridView1.Rows.Count; i++)
                 {
                    String total = (GridView1.Rows[i].FindControl(Label7.ToString()) as Label).Text;
                    GTotal += Convert.ToSingle(total);
                 }
                 TextBox13.Text=GTotal.ToString();
                
        }*/
       

        private void dropdownbind()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["p_dcs"].ConnectionString);
            con.Open();
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT [Medicine_ID], [Medicine_Name], [Expiry_Date], [Quantity], [Price] FROM [Medicine]", con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            con.Close();
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "Medicine_Name";
            DropDownList1.DataValueField = "Medicine_ID";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--Select--");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["p_dcs"].ConnectionString);
            SqlCommand cmd = new SqlCommand("INSERT INTO [Bill] ([Bill_No], [Name], [Quantity], [Price], [Discount], [Total_Price]) VALUES (@billno, @name, @quantity, @price, @discount, @totalprice)", con);
            cmd.Parameters.AddWithValue("@billno", TextBox1.Text);
            cmd.Parameters.AddWithValue("@name", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@quantity", TextBox6.Text);
            cmd.Parameters.AddWithValue("@price", TextBox7.Text);
            cmd.Parameters.AddWithValue("@discount", TextBox10.Text);
            cmd.Parameters.AddWithValue("@totalprice", TextBox8.Text);

            SqlCommand cmd1 = new SqlCommand("INSERT INTO [Sell_Report] ([Bill_No], [Date], [Name], [Quantity], [Price], [Discount], [Total_Price]) VALUES (@billno, @date, @name, @quantity, @price, @discount, @totalprice)", con);
            cmd1.Parameters.AddWithValue("@billno", TextBox1.Text);
            cmd1.Parameters.AddWithValue("@date", TextBox4.Text);
            cmd1.Parameters.AddWithValue("@name", DropDownList1.SelectedItem.Text);
            cmd1.Parameters.AddWithValue("@quantity", TextBox6.Text);
            cmd1.Parameters.AddWithValue("@price", TextBox7.Text);
            cmd1.Parameters.AddWithValue("@discount", TextBox10.Text);
            cmd1.Parameters.AddWithValue("@totalprice", TextBox8.Text);

            con.Open();
            int s = cmd.ExecuteNonQuery();
             cmd1.ExecuteNonQuery();

            con.Close();
            if (s == 1)
            {
                DropDownList1.SelectedIndex = 0;
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
                TextBox8.Text = "";

            }

            print1();
        }
        public void print1()
        {
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM [Bill]", con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["p_dcs"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT [Medicine_ID], [Medicine_Name], [Expiry_Date], [Quantity], [Price] FROM [Medicine] WHERE [Medicine_ID]="+DropDownList1.SelectedValue, con);
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader(); 
         
            while (dr.Read())
            {
                    TextBox7.Text = dr[4].ToString();
            }
            dr.Close();
            con.Close();
          
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            float qut = float.Parse(TextBox6.Text.ToString());
            float price = float.Parse(TextBox7.Text.ToString());
            float result = qut * price;
            TextBox8.Text = result.ToString();
        }

        protected void TextBox9_TextChanged(object sender, EventArgs e)
        {
            float qut = float.Parse(TextBox6.Text.ToString());
            float price = float.Parse(TextBox7.Text.ToString());
            float result = qut * price;

            float dic = float.Parse(TextBox9.Text.ToString());
            float result1 = (result * dic) / 100;
            TextBox10.Text = result1.ToString();
            float result2 = result - result1;
            TextBox8.Text = result2.ToString();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["p_dcs"].ConnectionString);
            ImageButton btn = (ImageButton)sender;
            string Name = btn.CommandArgument;
            SqlCommand cmd = new SqlCommand("DELETE FROM [Bill] WHERE [Name] = '" + Name+"'", con);
            SqlCommand cmd1 = new SqlCommand("DELETE FROM [Sell_Report] WHERE [Name] = '" + Name + "'", con);

            con.Open();
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            con.Close();
                print1();
        }

       /* protected void TextBox11_TextChanged(object sender, EventArgs e)
        {
            float price = float.Parse(TextBox13.Text.ToString());
            float receive = float.Parse(TextBox11.Text.ToString());
            float total = receive - price;
            TextBox12.Text = total.ToString();
        }*/

        protected void Button2_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["p_dcs"].ConnectionString);
            SqlCommand cmd = new SqlCommand("DELETE FROM [Bill]", con);
            con.Open();
            cmd.ExecuteNonQuery();
 
            con.Close();
        }
    }
}



 