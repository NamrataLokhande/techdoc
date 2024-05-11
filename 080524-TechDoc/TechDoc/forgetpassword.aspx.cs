using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data.SqlClient;

namespace TechDoc
{
    public partial class forgetpassword : System.Web.UI.Page
    {
        // Connection string for your database
       // string connectionString = "Data Source=DESKTOP-C9LPQ33\\SQLEXPRESS01;Initial Catalog=Techdoc;Integrated Security=True";
        string connectionString = "Data Source=DC-SERVER;Initial Catalog=Techdoc;Persist Security Info=True;User ID=sa;Password=c#123";
           
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Forgetpassword_btn_Click(object sender, EventArgs e)
        {
            string phoneNumber = TextBox1.Text; // Assuming PhoneTextBox is the TextBox for entering phone number
            string email = TextBox1.Text;
            // Assuming EmailTextBox is the TextBox for entering email
             if (string.IsNullOrEmpty(phoneNumber) || string.IsNullOrEmpty(email ))
             {
                 // Display an error message using JavaScript alert
                 string errorMessage = "Please fill Email/mobile number mandatory fields.";
                 string errorScript = "alert('" + errorMessage + "');";
                 ClientScript.RegisterStartupScript(this.GetType(), "showErrorAlert", errorScript, true);
                 return;
             }
            // Check if either phone number or email is registered
            if (IsPhoneNumberRegistered(phoneNumber) || IsEmailRegistered(email))
            {
                // Proceed to the next step, for example, redirect to another page
                Response.Redirect("4-OTP_page.aspx");
            }
            else
            {
                // Display error message as an alert using JavaScript
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Phone number or email is not registered.');", true);
            }
        }

      

        protected bool IsPhoneNumberRegistered(string phoneNumber)
        {
          
            // SQL query to check if the phone number exists in the database
            string query = "SELECT COUNT(*) FROM techdoc_register WHERE mobileno = @PhoneNumber";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add parameter to the SQL query to prevent SQL injection
                        command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);

                        connection.Open();
                        int count = (int)command.ExecuteScalar(); // Get the count of rows

                        // If count > 0, phone number exists in the database
                        if (count > 0)
                        {
                            // Log success
                            System.Diagnostics.Debug.WriteLine("Phone number is registered: " + phoneNumber);
                            return true;
                        }
                        else
                        {
                            // Log failure
                            System.Diagnostics.Debug.WriteLine("Phone number is not registered: " + phoneNumber);
                            return false;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log exception
                System.Diagnostics.Debug.WriteLine("Exception occurred: " + ex.Message);
                // For now, let's throw the exception to indicate that there was an error
                throw ex;
            }

        }


        protected bool IsEmailRegistered(string email)
        {
             // SQL query to check if the email address exists in the database
            string query = "SELECT COUNT(*) FROM techdoc_register WHERE email = @Email";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add parameter to the SQL query to prevent SQL injection
                        command.Parameters.AddWithValue("@Email", email);

                        connection.Open();
                        int count = (int)command.ExecuteScalar(); // Get the count of rows

                        // If count > 0, email address exists in the database
                        if (count > 0)
                        {
                            // Log success
                            System.Diagnostics.Debug.WriteLine("Email address is registered: " + email);
                            return true;
                        }
                        else
                        {
                            // Log failure
                            System.Diagnostics.Debug.WriteLine("Email address is not registered: " + email);
                            return false;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log exception
                System.Diagnostics.Debug.WriteLine("Exception occurred: " + ex.Message);
                // For now, let's throw the exception to indicate that there was an error
                throw ex;
            }
        }





        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Email_login.aspx");
        }
    }
}