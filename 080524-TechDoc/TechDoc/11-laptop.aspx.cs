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
    public partial class laptop : System.Web.UI.Page
    {
        //string connectionString = "Data Source=DESKTOP-C9LPQ33\\SQLEXPRESS01;Initial Catalog=Techdoc;Integrated Security=True";
        string connectionString = "Data Source=DC-SERVER;Initial Catalog=Techdoc;Persist Security Info=True;User ID=sa;Password=c#123";

        protected void Page_Load(object sender, EventArgs e)
        {

          
            Panel3.Visible = false;
           
        }

   
 /// ////////////////////////////////////////////////////////////////////////////////////////
    private void FetchData(string brand)
        {
            string query = @"
                SELECT [model_name]
        FROM [Techdoc].[dbo].[tecdoc_laptop_brand_model]
        WHERE [brand_id] IN (
            SELECT [brand_id] 
            FROM [Techdoc].[dbo].[techdoc_laptoptbrand] 
            WHERE [brand_name] = @BrandName
                )";

            DataTable dt = new DataTable();

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@BrandName", brand);
                    con.Open();

                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(dt);
                    }
                }
            }

            if (brand == "Apple")
                GridView1.DataSource = dt;
            else if (brand == "Acer")
                  GridView1.DataSource = dt;
               
            GridView1.DataBind();
           
        }

 ///////////////////////////////////////////////////////////////////////////
     

/// ///////////////////////////////////////////////////////////////////////////////////////////////

        protected void ImgBtnLtp_Click(object sender, ImageClickEventArgs e)
        {
            Panel2.Visible = true;
            Panel3.Visible = false;
             
        }

       

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("12-entermodel.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Complaintissue.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            InsertComplaint("Apple");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Panel3.Visible = true;
            Panel2.Visible = false;
       
        }
    

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void imgacer_btn_Click(object sender, ImageClickEventArgs e)
        {
            InsertComplaint("Acer");
        }
   /// ///////////////////////////////////////////////////////////////////////////////////////////////   
   private void InsertComplaint(string brand)
        {
            string fullName = Session["FullName"] != null ? Session["FullName"].ToString() : null;

            if (!string.IsNullOrEmpty(fullName))
            {
                string deviceType = "Laptop";
                string query = "INSERT INTO techdoc_complaint (date, name, device_name, product_name) VALUES (@Date, @Name, @DeviceName, @ProductName)";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Date", DateTime.Now);
                        command.Parameters.AddWithValue("@Name", fullName);
                        command.Parameters.AddWithValue("@DeviceName", deviceType);
                        command.Parameters.AddWithValue("@ProductName", brand);

                        try
                        {
                            connection.Open();
                            command.ExecuteNonQuery();

                            // After successful insertion, set session variables
                            Session["ComplaintId"] = GetLastInsertedComplaintId(); // Assuming you have a method to get the last inserted complaint ID
                            Session["ModelName"] = TextBox2.Text.Trim();

                            Panel3.Visible = true;
                            Panel2.Visible = false;

                            if (brand == "Apple")
                                FetchData("Apple");
                            else if (brand == "Acer")
                                FetchData("Acer");
                        }
                        catch (SqlException ex)
                        {
                            string script = "alert('An error occurred while inserting the complaint: " + ex.Message + "');";
                            ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", script, true);
                        }
                    }
                }
            }
            else
            {
                
            }
        }
/////////////////////////////////////////////////////////////////////////////////////////


        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            // Get the complaint_id entered in TextBox3
            string complaintId = TextBox3.Text.Trim();

            // SQL query to fetch data from the database based on the complaint_id
            string query = "SELECT [complaint_id] FROM [Techdoc].[dbo].[techdoc_complaint] WHERE [complaint_id] = @ComplaintId";

            // Create a SqlConnection object
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Create a SqlCommand object with the SQL query and the SqlConnection
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@ComplaintId", complaintId);

                    try
                    {
                        // Open the connection
                        connection.Open();

                        // Execute the SqlCommand and get the SqlDataReader
                        SqlDataReader reader = command.ExecuteReader();

                        // Check if there are rows returned
                        if (reader.HasRows)
                        {
                            // Read the first row
                            reader.Read();

                            // Store the fetched complaint_id in a session variable
                            Session["ComplaintId"] = reader["complaint_id"].ToString();
                        }
                        else
                        {
                            // If no rows found with the entered complaint_id, you can display a message or handle it as needed
                            Session["ComplaintId"] = null; // Set session variable to null
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle any exceptions
                        // For example, you can log the exception or display an error message
                    }
                    finally
                    {
                        // Close the connection
                        connection.Close();
                    }
                }
            }
        }
//////////////////////////////////////////////////////////////////////////////////////////
    private int GetLastInsertedComplaintId()
        {
            // Query to get the last inserted complaint ID
            string query = "SELECT MAX(complaint_id) FROM techdoc_complaint";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    var result = command.ExecuteScalar();
                    if (result != null && result != DBNull.Value)
                    {
                        return Convert.ToInt32(result);
                    }
                    return -1; // Return -1 if no complaint ID found
                }
            }
        }
///////////////////////////////////////////////////////////////////////////////////////////////


        private void UpdateComplaint(string complaintId, string modelName)
        {
            string query = "UPDATE [dbo].[techdoc_complaint] SET [model_name] = @ModelName WHERE [complaint_id] = @ComplaintId";

            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@ModelName", TextBox2.Text);
                command.Parameters.AddWithValue("@ComplaintId", complaintId);

                try
                {
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Update successful
                        Response.Redirect("Complaintissue.aspx");
                    }
                    else
                    {
                        // No rows affected, handle accordingly
                        string errorMessage = "No rows were updated for complaint ID: " + complaintId;
                        ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('" + errorMessage + "');", true);
                    }
                }
                catch (Exception ex)
                {
                    // Handle exceptions
                    string errorMessage = "An error occurred while updating the complaint: " + ex.Message;
                    ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('" + errorMessage + "');", true);
                    // Log the error to a file or database for further investigation
                }
            }
        }



/// ///////////////////////////////Acer Data Inserting//////////////////////////////////////

protected void ok_btn_Click(object sender, EventArgs e)
{

   
            if (Session["ComplaintId"] != null && Session["ModelName"] != null)
            {
                string complaintId = Session["ComplaintId"].ToString();
                string modelName = Session["ModelName"].ToString();

                UpdateComplaint(complaintId, modelName);
            }
            else
            {
                // Session variables not properly set, handle accordingly
            }

}

      protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
      {

      }


    }
}