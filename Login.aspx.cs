using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace KIPM
{
    public partial class Home : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string userId = txtUserID.Text;
                    string password = txtPassword.Text;

                    string query = "SELECT * FROM dbo.user_login WHERE user_id=@UserID AND user_password=@Password";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@UserID", userId);
                    command.Parameters.AddWithValue("@Password", password);

                    int count = (int)command.ExecuteScalar();
                    if (count > 0)
                    {
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "Login unsuceesful. Please check your user id and password.";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "An error occurred";
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}