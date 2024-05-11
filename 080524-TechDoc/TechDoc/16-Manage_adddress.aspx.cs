using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace WebApplication1
{
    public partial class Manage_adddress : System.Web.UI.Page
    {
        //string connectionString = "Data Source=DESKTOP-C9LPQ33\\SQLEXPRESS01;Initial Catalog=Techdoc;Integrated Security=True";
        string connectionString = "Data Source=DC-SERVER;Initial Catalog=Techdoc;Persist Security Info=True;User ID=sa;Password=c#123";

        private bool changesMade = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Call the method to display user data
                ShowUserData();
            }
        }

        private void ShowUserData()
        {
            // Retrieve user information from session variables
           // string employee_id = Session["reg_id"] as string;
            string fullName = Session["FullName"] as string;
          //  string email = Session["Email"] as string;
            string mobileNo = Session["MobileNo"] as string;


            // Display user information
         //   empid_txt.Text = employee_id;
            TextBox6.Text = fullName;
          // Emailtxt.Text = email;
            TextBox7.Text = mobileNo;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Retrieve user information from session variables
            string fullName = Session["FullName"] as string;
            string mobileNo = Session["MobileNo"] as string;

            // Check if any of the mandatory fields are empty
            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(TextBox2.Text) ||
                string.IsNullOrEmpty(TextBox3.Text) || string.IsNullOrEmpty(TextBox4.Text) ||
                string.IsNullOrEmpty(TextBox5.Text))
            {
                // Display an error message using JavaScript alert
                string errorMessage = "Please fill all mandatory fields.";
                string errorScript = "alert('" + errorMessage + "');";
                ClientScript.RegisterStartupScript(this.GetType(), "showErrorAlert", errorScript, true);
                return; // Exit the method since mandatory fields are not filled
            }

            // Establish connection to your database
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    // Write your SQL INSERT query
                    string insertQuery = @"INSERT INTO techdoc_address (name, pincode, city, apartment, landmark, mobile, alternatemobile) 
                                   VALUES (@Name, @Pincode, @City, @Apartment, @Landmark, @Mobile, @Alternatemobile)";

                    // Create and open a SqlCommand object with the INSERT query and connection
                    using (SqlCommand command = new SqlCommand(insertQuery, connection))
                    {
                        // Add parameters to the SqlCommand object
                        command.Parameters.AddWithValue("@Name", fullName); // Insert full name
                        command.Parameters.AddWithValue("@Pincode", TextBox1.Text);
                        command.Parameters.AddWithValue("@City", TextBox2.Text);
                        command.Parameters.AddWithValue("@Apartment", TextBox3.Text);
                        command.Parameters.AddWithValue("@Landmark", TextBox4.Text);
                        command.Parameters.AddWithValue("@Mobile", mobileNo); // Insert mobile number
                        command.Parameters.AddWithValue("@Alternatemobile", TextBox5.Text);

                        // Open the connection
                        connection.Open();

                        // Execute the INSERT query
                        int rowsAffected = command.ExecuteNonQuery();

                        // Check if the insertion was successful
                        if (rowsAffected > 0)
                        {
                            // Display a success message using JavaScript alert
                            string successMessage = "Address saved successfully";
                            string successScript = "alert('" + successMessage + "'); window.location.href = '14-Pick1.aspx';";
                            ClientScript.RegisterStartupScript(this.GetType(), "RegistrationSuccessScript", successScript, true);
                        }
                        else
                        {
                            // Insertion failed
                            // You can handle the failure scenario here
                            // Maybe log the error or display a message to the user

                            string errorMessage = "error.";
                            string errorScript = "alert('" + errorMessage + "');";
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Log the exception message for troubleshooting
                    string errorMessage = "An error occurred while saving the address: " + ex.Message;
                    // Display an error message using JavaScript alert
                    string errorScript = "alert('" + errorMessage + "');";
                    ClientScript.RegisterStartupScript(this.GetType(), "showErrorAlert", errorScript, true);
                }
            }
        }


        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            Session["FullName"] = TextBox6.Text.Trim();
            changesMade = true;

        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {
            // Update the session variable and set the changesMade flag to true
            Session["MobileNo"] = TextBox7.Text.Trim();
            changesMade = true;
        }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Clear all text boxes
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
            TextBox8.Text = string.Empty;
        }


    }
}