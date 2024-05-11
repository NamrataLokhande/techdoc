using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace TechDoc
{
    public partial class Create_vie_mail : System.Web.UI.Page
    {

       // string connectionString = "Data Source=DESKTOP-C9LPQ33\\SQLEXPRESS01;Initial Catalog=Techdoc;Integrated Security=True";
        string connectionString = "Data Source=DC-SERVER;Initial Catalog=Techdoc;Persist Security Info=True;User ID=sa;Password=c#123";
       
        protected void Page_Load(object sender, EventArgs e)
        {
            // Register the JavaScript function only once
            if (!ClientScript.IsClientScriptBlockRegistered("redirectScript"))
            {
                string script = @"
            function redirectToPage() {
                window.location.href = 'Email_login.aspx';
                return false; // Prevents postback
            }";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "redirectScript", script, true);
            }

        }
        protected void fullname_txt_TextChanged(object sender, EventArgs e)
        {

          
        }

        protected void email_txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void mobile_txt_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void password_txt_TextChanged(object sender, EventArgs e)
        {
           

        }

        protected void conformpass_txt_TextChanged(object sender, EventArgs e)
        {
           

        }

        protected void address_txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void conform_btn_Click(object sender, EventArgs e)
        {
            // Check if any mandatory fields are empty
            if (string.IsNullOrEmpty(fullname_txt.Text) || string.IsNullOrEmpty(email_txt.Text) ||
                string.IsNullOrEmpty(mobile_txt.Text) || string.IsNullOrEmpty(password_txt.Text) ||
                string.IsNullOrEmpty(conformpass_txt.Text) || string.IsNullOrEmpty(address_txt.Text))
            {
                // Display an error message using JavaScript alert
                string errorMessage = "Please fill all mandatory fields.";
                string errorScript = "alert('" + errorMessage + "');";
                ClientScript.RegisterStartupScript(this.GetType(), "showErrorAlert", errorScript, true);
                return;
            }

            // Validate inputs
            if (!ValidateInputs())
            {
                return;
            }

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // Check if email or mobile number already exists
                    string checkDuplicateQuery = "SELECT COUNT(*) FROM techdoc_register WHERE email = @Email OR mobileno = @Mobile";
                    using (SqlCommand checkDuplicateCommand = new SqlCommand(checkDuplicateQuery, connection))
                    {
                        checkDuplicateCommand.Parameters.AddWithValue("@Email", email_txt.Text);
                        checkDuplicateCommand.Parameters.AddWithValue("@Mobile", mobile_txt.Text);

                        int existingCount = (int)checkDuplicateCommand.ExecuteScalar();
                        if (existingCount > 0)
                        {
                            // Email or mobile number already exists
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Email or mobile number already exists.');", true);
                            return;
                        }
                    }

                    // Insert new record
                    string query = "INSERT INTO techdoc_register (fullname, email, mobileno, [password], conformpassword, address) VALUES (@fullname, @email, @mobileno, @password, @conformpassword, @address)";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Set parameter values
                        command.Parameters.AddWithValue("@fullname", fullname_txt.Text);
                        command.Parameters.AddWithValue("@email", email_txt.Text);
                        command.Parameters.AddWithValue("@mobileno", mobile_txt.Text);
                        command.Parameters.AddWithValue("@password", password_txt.Text);
                        command.Parameters.AddWithValue("@conformpassword", conformpass_txt.Text);
                        command.Parameters.AddWithValue("@address", address_txt.Text);

                        int rowsAffected = command.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Data inserted successfully
                            // Redirect to OTP verification page or display success message
                            string script = @"
                            <script>
                                alert('Registration successful!');
                                window.location.href = '4-OTP_page.aspx';
                            </script>";
                            ClientScript.RegisterStartupScript(this.GetType(), "RegistrationSuccessScript", script);
                        }
                        else
                        {
                            // No rows affected, display an error message
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Error: No data was inserted.');", true);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Show error message using JavaScript alert
                string errorMessage = "Error: " + ex.Message.Replace("'", "\\'"); // Replace single quotes to prevent JavaScript errors
                string errorScript = "alert('" + errorMessage + "');";
                ClientScript.RegisterStartupScript(this.GetType(), "showErrorAlert", errorScript, true);
            }
        }

        // Validate all inputs
        private bool ValidateInputs()
        {
            // Validate full name
            string fullname = fullname_txt.Text.Trim();
            if (!Regex.IsMatch(fullname, @"^[a-zA-Z\s'-]+$"))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please enter a valid full name containing only characters.');", true);
                return false;
            }

            // Validate email
            string email = email_txt.Text.Trim();
            if (!Regex.IsMatch(email, @"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please enter a valid email address.');", true);
                return false;
            }
            return true;
            // Validate mobile number
           string mobileNumber = mobile_txt.Text.Trim();
           if (!Regex.IsMatch(mobileNumber, @"^(\+\d{2})?\d{10}$"))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please enter a valid mobile number.');", true);
                return false;
            }

            // Validate password
            string password = password_txt.Text.Trim();
            if (!Regex.IsMatch(password, @"^(?=.*[a-zA-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,}$"))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please enter a valid password.');", true);
                return false;
            }

            // Confirm password
            string confirmPassword = conformpass_txt.Text.Trim();
            if (password != confirmPassword)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Passwords do not match.');", true);
                return false;
            }

            return true;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Email_login.aspx");
        }

      

    }
}