using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _1_Personal_details : System.Web.UI.Page
    {
        string connectionString = "Data Source=DC-SERVER;Initial Catalog=Techdoc;Persist Security Info=True;User ID=sa;Password=c#123"; 

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("8-logout.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("8-logout.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("7-Profile_details.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("7-Profile_details.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Redirect("7-Profile_details.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("7-Profile_details.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Response.Redirect("7-Profile_details.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("7-Profile_details.aspx");
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Response.Redirect("2-FrontFrame.aspx");
        }

        protected void ImageButton4_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("8-logout.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Complaint.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Complaint.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {

        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Button11_Click(object sender, EventArgs e)
        {

        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Button6_Click1(object sender, EventArgs e)
        {

        }

        protected void logout_Imgbtn_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("2-FrontFrame.aspx");
        }

        protected void Sftwre_Imgbtn_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Label3_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["FullName"] != null)
                {
                    string fullName = Session["FullName"].ToString();
                    Label3.Text = fullName; // Assuming Label3 is the ID of your label control
                }
            }
        }

        protected void Hardware_Imgbtn_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Complaint.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {

        }

        protected void Help_Imgbtn_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Setting_Imgbtn_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Profile_Imgbtn_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("7-Profile_details.aspx");
        }

        protected void Button6_Click2(object sender, EventArgs e)
        {

        }


    }
}