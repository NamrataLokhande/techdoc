using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace TechDoc
{
    public partial class Complaintissue : System.Web.UI.Page
    {

        //string connectionString = "Data Source=DESKTOP-C9LPQ33\\SQLEXPRESS01;Initial Catalog=Techdoc;Integrated Security=True";
        string connectionString = "Data Source=DC-SERVER;Initial Catalog=Techdoc;Persist Security Info=True;User ID=sa;Password=c#123";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // Check if the complaint ID is stored in the session
                if (Session["ComplaintId"] != null)
                {
                    // Retrieve the complaint ID from the session and display it in TextBox3
                    TextBox3.Text = Session["ComplaintId"].ToString();
                    // Fetch data from the database based on complaint ID
                    FetchComplaintDetails(Convert.ToInt32(Session["ComplaintId"]));
                    
                }
                else
                {
                    // Handle the case where the complaint ID is not stored in the session
                    // For example, display an error message or redirect to another page
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["ComplaintId"] != null)
            {
                int complaintId = Convert.ToInt32(Session["ComplaintId"]);

                DateTime currentDate = DateTime.Now;

                // Validate user inputs
                if (IsValidInputs())
                {
                    try
                    {
                        string query = "UPDATE [techdoc_complaint] SET [issue_type] = @IssueType, [tab_serialnumber] = @TabSerialNumber, [describe_issue] = @DescribeIssue, [date] = @CurrentDate WHERE [complaint_id] = @ComplaintId";

                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                command.Parameters.AddWithValue("@IssueType", DropDownList1.SelectedValue);
                                command.Parameters.AddWithValue("@TabSerialNumber", TextBox1.Text);
                                command.Parameters.AddWithValue("@DescribeIssue", TextBox2.Text);
                                command.Parameters.AddWithValue("@CurrentDate", currentDate);
                                command.Parameters.AddWithValue("@ComplaintId", complaintId);

                                connection.Open();
                                command.ExecuteNonQuery();
                            }
                        }

                        // Redirect to another page after the update
                        Response.Redirect("16-Manage_adddress.aspx");
                    }
                    catch (Exception ex)
                    {
                        // Handle the exception (e.g., log error, display error message)
                        Response.Write("An error occurred while updating the database: " + ex.Message);
                    }
                }
                else
                {
                    // Handle invalid user inputs
                    Response.Write("Please provide valid inputs.");
                }
            }
            else
            {
                // Handle the case where the complaint ID is not stored in the session
                // For example, display an error message or redirect to another page
            }
        }

        // Validate user inputs
        private bool IsValidInputs()
        {
            // You can add custom validation rules here
            if (DropDownList1.SelectedIndex <= 0 || string.IsNullOrWhiteSpace(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox2.Text))
            {
                return false;
            }
            return true;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("12-entermodel.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            
        }
        private void FetchComplaintDetails(int complaintId)
        {
            // SQL query to fetch issue_type and tab_serialnumber based on complaint ID
            string query = "SELECT [issue_type], [tab_serialnumber] FROM [techdoc_complaint] WHERE [complaint_id] = @ComplaintId";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@ComplaintId", complaintId);

                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();
                        if (reader.Read())
                        {
                            // Populate issue_type into DropDownList1
                            DropDownList1.SelectedValue = reader["issue_type"].ToString();

                            // Populate tab_serialnumber into TextBox1
                            TextBox1.Text = reader["tab_serialnumber"].ToString();
                        }
                        reader.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle the exception (e.g., log error, display error message)
                Response.Write("An error occurred while fetching complaint details: " + ex.Message);
            }
        }
    }
}