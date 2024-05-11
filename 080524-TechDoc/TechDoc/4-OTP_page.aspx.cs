using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _1_OTP_page : System.Web.UI.Page
    {
        string connectionString = "Data Source=DC-SERVER;Initial Catalog=Techdoc;Persist Security Info=True;User ID=sa;Password=c#123";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

     
        protected void Resend_OTPLinkbtn_Click(object sender, EventArgs e)
        {
            
        }

        protected void Receive_OTPLinkbtn_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("6-Personal_details.aspx");
            if (ValidateOTP())
            {
                // If OTP is valid, redirect to the next page
                Response.Redirect("~/Email_login.aspx");
            }
            else
            {
                // If OTP is not valid, display an error message or take appropriate action
                // For example, you can display a message or prevent redirection
                // Here, I'm just displaying an alert message
                ScriptManager.RegisterStartupScript(this, this.GetType(), "invalidOTP", "alert('Invalid OTP. Please enter a valid OTP.');", true);
            }

        }
        private bool ValidateOTP()
        {
            string otp1 = otpTxt1.Text.Trim();
            string otp2 = otpTxt2.Text.Trim();
            string otp3 = otpTxt3.Text.Trim();
            string otp4 = otpTxt4.Text.Trim();

            // Validate if all OTP fields are filled
            if (string.IsNullOrEmpty(otp1) || string.IsNullOrEmpty(otp2) || string.IsNullOrEmpty(otp3) || string.IsNullOrEmpty(otp4))
            {
                return false;
            }

            // Additional OTP validation logic goes here, if needed
            // For example, you can compare the entered OTP with the expected OTP sent to the user

            // Return true if OTP is valid, otherwise return false
            return true;
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("6-Personal_details.aspx");
        }

        protected void otpTxt2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}