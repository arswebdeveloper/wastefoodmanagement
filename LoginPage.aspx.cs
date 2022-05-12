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
    public partial class LoginPage : System.Web.UI.Page
    {
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myDB"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string temp = Convert.ToString(Session["rememberMe"]);
                if (temp != "")
                {
                    uname.Text = temp;
                }
            }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            try
            {
                string usr = uname.Text;
                string pass = psw.Text;

                string sql = "select * from LoginRegister where Email='" + usr + "' and Password='" + pass + "'";

                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Pop", "openModal();", true);
                    Response.AppendHeader("Refresh", "3;url=Default.aspx");
                }
                else
                {
                    Label1.Text = "Username or password does not matched!";
                    Response.AppendHeader("Refresh", "5;url=LoginPage.aspx");
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }
    }
}