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
    public partial class WebForm7 : System.Web.UI.Page
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
                print();
            }
        }
        public void print()
        {
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT [Company_ID], [Company_Name], [Company_Email], [Company_Phone], [Company_Address] FROM [Company]", con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            string value = btn.CommandArgument;
            Session["edit"] = value;
            Response.Redirect("~/Update Company.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            string value = btn.CommandArgument;
            Session["edit"] = value;
            int id = Convert.ToInt32(Session["edit"]);
            SqlCommand cmd = new SqlCommand("DELETE FROM [Company] WHERE [Company_ID] = " + id, con);

            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
                print();


        }
    }
}