using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DailyExpenseManagement
{
    public partial class Update : System.Web.UI.Page
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
    }
}