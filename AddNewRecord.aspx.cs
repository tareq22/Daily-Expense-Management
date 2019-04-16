using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DailyExpenseManagement
{
    public partial class AddNewRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void TextBox1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddNewRecord.aspx");
        }

        protected void TextBox2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewRecord.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update.aspx");
        }

        protected void TextBox3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Delete.aspx");
        }

        protected void TextBox4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Label1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }

        protected void TextBox13_Click(object sender, EventArgs e)
        {
            DbCon();

            SqlCommand cmd = new SqlCommand("insert into account (Date,House,Meal,Medical, Transport) values (@Date,@Name,@Email,@Password, @PhoneNumber)", con);
            cmd.Parameters.AddWithValue("@Name", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox8.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox10.Text);
            cmd.Parameters.AddWithValue("@PhoneNumber", TextBox12.Text);
            cmd.Parameters.AddWithValue("@Date", TextBox14.Text);
            cmd.ExecuteNonQuery();

            con.Close();
           // Response.Redirect("Home.aspx");
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