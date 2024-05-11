using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace TechDoc
{
    public partial class profile_details : System.Web.UI.Page
    {
       // string connectionString = "Data Source=DESKTOP-C9LPQ33\\SQLEXPRESS01;Initial Catalog=Techdoc;Integrated Security=True";
        string connectionString = "Data Source=DC-SERVER;Initial Catalog=Techdoc;Persist Security Info=True;User ID=sa;Password=c#123";


        private bool changesMade = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Call the method to display user data
                ShowUserData();

                // Check if an image path is stored in the session
                if (Session["ImagePath"] != null)
                {
                    // Set the ImageUrl of the ImageButton to display the uploaded image
                    profileupdate_img.ImageUrl = Session["ImagePath"].ToString();
                }
                else
                {
                    // If no image path is stored in the session, fetch the image data from the database
                    string employee_id = Session["reg_id"] as string;
                    string base64String = GetImageBase64StringFromDatabase(employee_id);

                    if (!string.IsNullOrEmpty(base64String))
                    {
                        // Set the ImageUrl of the ImageButton to display the image fetched from the database
                        profileupdate_img.ImageUrl = "data:image;base64," + base64String;

                        // Store the base64 string in the session for future use
                        Session["ImagePath"] = profileupdate_img.ImageUrl;
                    }
                }
            }
        }

        protected void Firstnametxt_TextChanged(object sender, EventArgs e)
        {
            // Update the session variable and set the changesMade flag to true
            Session["FullName"] = Firstnametxt.Text.Trim();
            changesMade = true;

        }

        protected void Emailtxt_TextChanged(object sender, EventArgs e)
        {
            // Update the session variable and set the changesMade flag to true
            Session["Email"] = Emailtxt.Text.Trim();
            changesMade = true;

        }

        protected void Mobilenutxt_TextChanged(object sender, EventArgs e)
        {
            // Update the session variable and set the changesMade flag to true
            Session["MobileNo"] = Mobilenutxt.Text.Trim();
            changesMade = true;


        }

        private void ShowUserData()
        {
            // Retrieve user information from session variables
            string employee_id = Session["reg_id"] as string;
            string fullName = Session["FullName"] as string;
            string email = Session["Email"] as string;
            string mobileNo = Session["MobileNo"] as string;


            // Display user information
            empid_txt.Text = employee_id;
            Firstnametxt.Text = fullName;
            Emailtxt.Text = email;
            Mobilenutxt.Text = mobileNo;
        }

        protected void Confirm_btn_Click(object sender, EventArgs e)
        {
            // Retrieve user information from session variables
            string reg_id = Session["reg_id"] as string;
            string fullName = Firstnametxt.Text.Trim(); // Update to get value directly from textbox
            string email = Emailtxt.Text.Trim(); // Update to get value directly from textbox
            string mobileNo = Mobilenutxt.Text.Trim(); // Update to get value directly from textbox

            // Update the database only if changes were made
            if (changesMade)
            {
                // Update the database with the new user information
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    string query = "UPDATE techdoc_register SET fullname = @FullName, email = @Email, mobileNo = @MobileNo WHERE reg_id = @reg_id";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@FullName", fullName);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@MobileNo", mobileNo);
                        cmd.Parameters.AddWithValue("@reg_id", reg_id);

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                // Reset the changesMade flag
                changesMade = false;

                // Register the JavaScript function to show the alert and redirect
                string script = "alert('Profile updated successfully!'); window.location = '6-Personal_details.aspx';";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ProfileUpdatedScript", script, true);
   
            }

            // Display user information
            empid_txt.Text = reg_id;
            Firstnametxt.Text = fullName;
            Emailtxt.Text = email;
            Mobilenutxt.Text = mobileNo;

            

            // Check if a file has been uploaded
            if (fileUpload.HasFile)
            {
                try
                {
                    // Save the selected image to the server
                    string filename = Path.GetFileName(fileUpload.FileName);
                    string imagePath = Server.MapPath("~/Images/" + filename);
                    fileUpload.SaveAs(imagePath);

                    // Save the image path to session or database
                    Session["ImagePath"] = "~/Images/" + filename;

                    // Set the ImageUrl of the ImageButton to display the selected image
                    profileupdate_img.ImageUrl = "~/Images/" + filename;

                    // Update the user's profile with the image path
                    UpdateProfileWithImage(filename);
                }
                catch (Exception ex)
                {
                    // Handle the exception if file upload fails
                    // You can log the exception or display an error message to the user
                }
            }
        }




        protected void profileupdate_img_Click(object sender, ImageClickEventArgs e)
        {
            fileUpload.Attributes.Remove("style"); // Display the file upload control
            fileUpload.Attributes.Add("style", "display: block");
            fileUpload.Focus(); // Set focus to the file upload control
        }



        private void UpdateImageInDatabase(string imageName, byte[] imageBytes, string reg_id)
        {
            // Name of the table and column where the image is stored
            string tableName = "techdoc_register";
            string columnName = "ImageData";

            // SQL query to update the image in the table
            string updateQuery = "UPDATE " + tableName + " SET " + columnName + " = @Image WHERE reg_id = @reg_id";

            // Create a SqlConnection and SqlCommand
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(updateQuery, con))
                {
                    try
                    {
                        cmd.Parameters.AddWithValue("@Image", imageBytes);
                        cmd.Parameters.AddWithValue("@reg_id", reg_id);

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        // Handle the exception if database update fails
                        // You can log the exception or display an error message to the user
                    }
                }
            }

            // Reset the image path session variable after successful update
            Session["ImagePath"] = null;
        }
         

        private void UpdateProfileWithImage(string imageName)
        {
            // Retrieve user information from session variables
            string employee_id = Session["reg_id"] as string;

            // Read the image file into a byte array
            byte[] imageBytes = File.ReadAllBytes(Server.MapPath("~/Images/" + imageName));

            // Update the image path in the database
            UpdateImageInDatabase(imageName, imageBytes, employee_id);

            // Display a success message or perform any other necessary action
        }



        private string GetImageBase64StringFromDatabase(string employee_id)
        {
            string base64String = null;

            // SQL query to retrieve the image data from the database
            string query = "SELECT ImageData FROM techdoc_register WHERE reg_id = @reg_id";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@reg_id", employee_id);

                    con.Open();
                    // Use SqlDataReader instead of ExecuteScalar for retrieving binary data
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            // Check if the column is not DBNull before accessing it
                            if (!(reader["ImageData"] is DBNull))
                            {
                                // Retrieve the image data as a byte array
                                byte[] imageData = (byte[])reader["ImageData"];
                                if (imageData.Length > 0)
                                {
                                    // Convert the byte array to a base64 string
                                    base64String = Convert.ToBase64String(imageData);
                                }
                            }
                        }
                    }
                }
            }

            return base64String;
        }



        protected void empid_txt_TextChanged(object sender, EventArgs e)
        {
            Session["reg_id"] = empid_txt.Text.Trim();
            changesMade = true;



        }

    }
}