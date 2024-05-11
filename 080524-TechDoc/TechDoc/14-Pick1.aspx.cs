using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Diagnostics;

namespace TechDoc
{
    public partial class Pick1 : System.Web.UI.Page
    {

        string connectionString = "Data Source=DC-SERVER;Initial Catalog=Techdoc;Persist Security Info=True;User ID=sa;Password=c#123";

          

        private string selectedTimeRange = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                // Check if the complaint ID is stored in the session
                if (Session["ComplaintId"] != null)
                {
                    // Retrieve the complaint ID from the session and display it in TextBox3
                    TextBox1.Text = Session["ComplaintId"].ToString();
                    // Fetch data from the database based on complaint ID
                    FetchComplaintDetails(Convert.ToInt32(Session["ComplaintId"]));
                    PopulateDayButtons();
                }

               
            }
            else
            {
                // Set the BackColor property for the clicked button again during postbacks
                string selectedButtonID = selectdayTextBox.Text;
                Button selectedButton = FindControl(selectedButtonID) as Button;
                if (selectedButton != null)
                {
                    selectedButton.BackColor = System.Drawing.Color.LightBlue;
                }
            }
        }

        protected void PopulateDayButtons()
        {
            // Get the current day of the week
            DayOfWeek currentDayOfWeek = DateTime.Today.DayOfWeek;

            // Create an array to hold the days of the week
            DayOfWeek[] daysOfWeek = new DayOfWeek[4];

            // Calculate the days to display based on the current day
            for (int i = 0; i < 4; i++)
            {
                // Increment the current day of the week
                currentDayOfWeek = currentDayOfWeek == DayOfWeek.Saturday ? DayOfWeek.Sunday : currentDayOfWeek + 1;

                // Add the current day to the array
                daysOfWeek[i] = currentDayOfWeek;
            }

            // Convert DayOfWeek enum values to string representations of the day names
            string[] dayNames = daysOfWeek.Select(d => d.ToString()).ToArray();

            // Update the button texts with the calculated days
            for (int i = 0; i < dayNames.Length; i++)
            {
                Button button = FindControl("Button" + (i + 1)) as Button; // Dynamically find the button by ID
                if (button != null)
                {
                    button.Text = dayNames[i];
                }
            }
        }






       

        protected void Button6_Click(object sender, EventArgs e)
        {
            selectedTimeRange = "1:00 PM - 5:00 PM";
            ShowPopup(selectedTimeRange);
            Changecolour(Button6);
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            selectedTimeRange = "5:00 PM - 7:00 PM";
            ShowPopup(selectedTimeRange);
            Changecolour(Button7);
        }
        private void ShowPopup(string timeRange)
        {
            // Register a client-side script to show an alert with the selected time range
           string script = "alert('You selected: " + timeRange + "');";
            ClientScript.RegisterStartupScript(this.GetType(), "ShowPopupScript", script, true);
            SelectedTimeTextBox.Text = timeRange;
        }










        protected void Button5_Click1(object sender, EventArgs e)
        {
            selectedTimeRange = "10:00 AM - 1:00 PM";
            ShowPopup(selectedTimeRange);
            Changecolour(Button5);
        }
        private void ChangeButtonColors(Button clickedButton)
        {
            // Reset the color of all buttons
            Button1.BackColor = System.Drawing.Color.White;
            Button2.BackColor = System.Drawing.Color.White;
            Button3.BackColor = System.Drawing.Color.White;
            Button4.BackColor = System.Drawing.Color.White;
        


            // Change the color of the clicked button
            clickedButton.BackColor = System.Drawing.Color.LightBlue;
        }

      private void Changecolour(Button clickedButton)
        {
            Button5.BackColor = System.Drawing.Color.White;
            Button6.BackColor = System.Drawing.Color.White;
            Button7.BackColor = System.Drawing.Color.White;


            // Change the color of the clicked button
            clickedButton.BackColor = System.Drawing.Color.LightBlue;
       
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FetchDayOfWeek(Button1.Text);
            ChangeButtonColors(Button1);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            FetchDayOfWeek(Button2.Text);
            ChangeButtonColors(Button2);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            FetchDayOfWeek(Button3.Text);
            ChangeButtonColors(Button3);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            FetchDayOfWeek(Button4.Text);
            ChangeButtonColors(Button4);
        }

        private void FetchDayOfWeek(string dayOfWeek)
        {
            // You can handle what to do with the selected day of the week here
            string script = "alert('You selected: " + dayOfWeek + "');";
            ClientScript.RegisterStartupScript(this.GetType(), "ShowPopupScript", script, true);
            selectdayTextBox.Text = dayOfWeek;
        }


        protected void Button8_Click(object sender, EventArgs e)
        {
            string dayOfWeek = selectdayTextBox.Text; // Get the value from selectdayTextBox
            string timeRange = SelectedTimeTextBox.Text; // Get the value from SelectedTimeTextBox

            // Insert into the database
            InsertIntoDatabase(dayOfWeek, timeRange);

        }

        private void InsertIntoDatabase(string dayOfWeek, string timeRange)
        {
            try
            {
                // Check if the complaint ID is stored in the session
                if (Session["ComplaintId"] != null)
                {
                    int complaintId = Convert.ToInt32(Session["ComplaintId"]);
                    DateTime currentDate = DateTime.Now;

                    // Validate user inputs
                    if (IsValidInputs())
                    {
                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            connection.Open();

                            string query = "UPDATE [Techdoc].[dbo].[techdoc_complaint] " +
                                           "SET [dayslot] = @DaySlot, [timeslot] = @TimeSlot " +
                                           "WHERE [complaint_id] = @ComplaintId";

                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                command.Parameters.AddWithValue("@DaySlot", dayOfWeek);
                                command.Parameters.AddWithValue("@TimeSlot", timeRange);
                                command.Parameters.AddWithValue("@ComplaintId", complaintId);

                                int rowsAffected = command.ExecuteNonQuery();

                                if (rowsAffected > 0)
                                {// Insert successful
                                    string successMessage = "Your service has been scheduled on " + dayOfWeek + " at " + timeRange + ".";
                                    string script = "alert('" + successMessage + "');";
                                    ClientScript.RegisterStartupScript(this.GetType(), "InsertSuccessScript", script, true);
                                }
                                else
                                {
                                    // Insert failed
                                    string script = "alert('Failed to insert data into database.');";
                                    ClientScript.RegisterStartupScript(this.GetType(), "InsertErrorScript", script, true);
                                }
                            }
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
            catch (Exception ex)
            {
                Debug.WriteLine("Error inserting into database: " + ex.Message);
                Label2.Text = "An error occurred while inserting data into the database.";
            }
        }



        // Validate user inputs
        private bool IsValidInputs()
        {
            // You can add custom validation rules here
            if (string.IsNullOrWhiteSpace(selectdayTextBox.Text) || string.IsNullOrWhiteSpace(SelectedTimeTextBox.Text))
            {
                return false;
            }
            return true;
        }

        protected void selectdayTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SelectedTimeTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

      /*  private void ClearButtonColors()
        {
            Button1.BackColor = System.Drawing.Color.White;
            Button2.BackColor = System.Drawing.Color.White;
            Button3.BackColor = System.Drawing.Color.White;
            Button4.BackColor = System.Drawing.Color.White;
            Button5.BackColor = System.Drawing.Color.White;
            Button6.BackColor = System.Drawing.Color.White;
            Button7.BackColor = System.Drawing.Color.White;

            selectdayTextBox.Text = "";
            SelectedTimeTextBox.Text = "";
        }*/


        private void FetchComplaintDetails(int complaintId)
        {
            // SQL query to fetch issue_type and tab_serialnumber based on complaint ID
            string query = "SELECT [dayslot], [timeslot] FROM [techdoc_complaint] WHERE [complaint_id] = @ComplaintId";

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
                            selectdayTextBox.Text = reader["dayslot"].ToString();

                            // Populate tab_serialnumber into TextBox1
                            SelectedTimeTextBox.Text = reader["timeslot"].ToString();
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