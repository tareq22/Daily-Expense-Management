using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DailyExpenseManagement
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DbCon();
            SqlCommand cmd = new SqlCommand("select * from Registration where Email=@Email and Password=@Password", con);
            cmd.Parameters.AddWithValue("@Email", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
            var dataReader = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dataReader);
            if (dt.Rows.Count > 0)
            {
                Session["email"] = TextBox1.Text;
                Response.Redirect("Profile.aspx", true);

            }
            else
            {
               // lblMessage.Text = "Login Failed";
            }
            con.Close();


        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
        SqlConnection con = null;
        protected void DbCon()
        {
            try
            {
                String strCon = "Data Source=DESKTOP-BGGEA4H\\SQLEXPRESS;Initial Catalog=DailyExpenseManagement;Integrated Security=True";
                con = new SqlConnection(strCon);
                con.Open();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}