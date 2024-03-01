using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace p_d2
{
    public partial class Login : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["p_dcs"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            
        }



        protected void Button1_Click1(object sender, EventArgs e)
        {
            string user = TextBox1.Text;
            string pass = TextBox2.Text;
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT [Username], [Password] FROM [Login] WHERE [Username]='" + user + "' AND [Password]='" + pass + "'", con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            //Response.Write(dt.Rows.Count);

            con.Open();

            if (dt.Rows.Count == 1)
            {
                //Label1.Text = "Successful";
                Session["user"] = dt.Rows[0][1].ToString();
                Response.Redirect("/Home.aspx");
            }

            else
            {

                Label1.Text = "invalid username or password";
                TextBox1.Text = "";
                TextBox2.Text = "";

            }
            con.Close();
        }
    }
}