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
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            LoadGrid();
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

        protected void TextBox5_TextChanged(object sender, EventArgs e)
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
        private void LoadGrid()
        {
            DbCon();
            SqlCommand cmd = new SqlCommand("select * from Registration where Email=@Email", con);
            cmd.Parameters.AddWithValue("@Email", Session["email"]);
            var dataReader = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dataReader);
            if (dt.Rows.Count > 0)
            {
                TextBox5.Text = dt.Rows[0]["Name"].ToString();
                TextBox6.Text = dt.Rows[0]["Email"].ToString();
                TextBox8.Text = dt.Rows[0]["PhoneNumber"].ToString();
               
            }
            else
            {

            }
            con.Close();
        }
    }
}