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
    public partial class WebForm9 : System.Web.UI.Page
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM [Sell_Report]", con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM [Sell_Report] WHERE [Date] Between "+ Date.SelectedItem.Text.ToString()+ "-" + Month.SelectedItem.Text.ToString() + "-" + Year.SelectedItem.Text.ToString() +" And "+ Convert.ToInt32(Date1.SelectedItem.Text.ToString() + "-" + Month1.SelectedItem.Text.ToString() + "-" + Year1.SelectedItem.Text.ToString()), con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM [Sell_Report]", con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}