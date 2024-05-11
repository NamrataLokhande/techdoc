using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class _1_Welcome_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            //string connectionString = "Data Source=DESKTOP-C9LPQ33\\SQLEXPRESS01;Initial Catalog=Techdoc;Integrated Security=True";
            string connectionString = "Data Source=DC-SERVER;Initial Catalog=Techdoc;Persist Security Info=True;User ID=sa;Password=c#123";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO techdoc_reg(firstname, lastname, email) " +
                                   "VALUES (@firstname, @lastname, @email)";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@firstname", firstname_txt.Text);
                        command.Parameters.AddWithValue("@lastname", lastname_txt.Text);
                        command.Parameters.AddWithValue("@email", emailtxt.Text);

                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Show success message using JavaScript alert
                            //  string successScript = "alert('Data saved successfully'); window.location='~/7-Profile_details.aspx';";
                            //ClientScript.RegisterStartupScript(this.GetType(), "showSuccessAlert", successScript, true);
                            // Redirect to Profile_details.aspx after successful insertion
                            Response.Redirect("~/7-Profile_details.aspx");
                        }
                        else
                        {
                            // No rows affected, display an error message
                            string errorScript = "alert('Error: No data was inserted.');";
                            ClientScript.RegisterStartupScript(this.GetType(), "showErrorAlert", errorScript, true);
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
        // Method to display message in a Label control
        private void ShowMessage(string message, bool isSuccess)
        {
            lblMessage.Text = message;
            lblMessage.ForeColor = isSuccess ? System.Drawing.Color.Green : System.Drawing.Color.Red;
        }

        protected void firstname_txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void lastname_txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void emailtxt_TextChanged(object sender, EventArgs e)
        {

        }

      
       
    }
}