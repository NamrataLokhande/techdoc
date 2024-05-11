using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TechDoc
{
    public partial class Email_login : System.Web.UI.Page
    {
        string connectionString = "Data Source=DC-SERVER;Initial Catalog=Techdoc;Persist Security Info=True;User ID=sa;Password=c#123";

         
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void username_txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void password_txt_TextChanged(object sender, EventArgs e)
        {

        }
        protected void continue_btn_Click(object sender, EventArgs e)
        {
            string email = username_txt.Text.Trim();
            string password = password_txt.Text.Trim();

            // Check if email and password are not empty
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                // Display an error message using JavaScript alert
                string errorMessage = "Please enter both email and password.";
                string errorScript = "alert('" + errorMessage + "');";
                ClientScript.RegisterStartupScript(this.GetType(), "showErrorAlert", errorScript, true);
                return;
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Define the SQL query to retrieve data
                string query = "SELECT * FROM techdoc_register WHERE email = @Email";

                // Create a SqlCommand object and pass the query and connection
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to the query to prevent SQL injection
                    command.Parameters.AddWithValue("@Email", email);

                    try
                    {
                        // Open the connection
                        connection.Open();

                        // Execute the query
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader.HasRows)
                        {
                            // Email exists, now check password
                            reader.Read();
                            string storedPassword = reader["password"].ToString();

                            if (password == storedPassword)
                            {
                                // Password is correct, proceed with login
                                // Store user information in session variables
                                Session["reg_id"] = reader["reg_id"].ToString();
                                Session["FullName"] = reader["fullname"].ToString();
                                Session["Email"] = reader["email"].ToString();
                                Session["MobileNo"] = reader["mobileno"].ToString();

                                Response.Redirect("6-Personal_details.aspx");
                            }
                            else
                            {
                                // Password is incorrect
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Incorrect password.');", true);
                            }
                        }
                        else
                        {
                            // Email is not registered
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Email is not registered.');", true);
                        }

                    }
                    catch (Exception ex)
                    {
                        // Handle exceptions
                        Response.Write("Error: " + ex.Message);
                    }
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Create_vie_mail.aspx");
        
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
        }
    }
}