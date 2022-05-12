using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WasteFoodManagement
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
            }

        }

        protected void Register_click(object sender, EventArgs e)
        {
            try
            {
                string fname = TextBox1.Text;
                string lname = TextBox2.Text;
                long num = long.Parse(TextBox3.Text);
                string email = TextBox4.Text;
                string pass = TextBox6.Text;

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myDB"].ConnectionString);

                string sql = "insert into LoginRegister(FirstName, LastName, ContactNo, Email, Password) values('" + fname + "', '" + lname + "', '" + num + "', '" + email + "', '" + pass + "')";
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                int status = cmd.ExecuteNonQuery();
                con.Close();
                if (status > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Pop", "openModal();", true);
                    if (CheckBox1.Checked)
                    {
                        Session["rememberMe"] = email;
                    }
                    Response.AppendHeader("Refresh", "3;url=LoginPage.aspx");
                }
                else
                {
                    Label1.Text = "Something went wrong! Please try again!";
                    Response.AppendHeader("Refresh", "5;url=LoginPage.aspx");
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        public void Clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            Label1.Text = "";
        }
    }
}