using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DailyExpenseManagement
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
        protected void TextBox4_Click(object sender, EventArgs e)
        {
            DbCon();

            SqlCommand cmd = new SqlCommand("insert into Registration (Name,Email,Password, PhoneNumber) values (@Name,@Email,@Password, @PhoneNumber)", con);
            cmd.Parameters.AddWithValue("@Name", Label1.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password",TextBox2.Text);
            cmd.Parameters.AddWithValue("@PhoneNumber", TextBox3.Text);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("Home.aspx");
        }
    }
}