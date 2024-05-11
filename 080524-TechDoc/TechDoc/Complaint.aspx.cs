using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TechDoc
{
    public partial class Complaint : System.Web.UI.Page
    {
        //string connectionString = "Data Source=DESKTOP-C9LPQ33\\SQLEXPRESS01;Initial Catalog=Techdoc;Integrated Security=True";
        string connectionString = "Data Source=DC-SERVER;Initial Catalog=Techdoc;Persist Security Info=True;User ID=sa;Password=c#123";

        protected void Page_Load(object sender, EventArgs e)
        {

            
          }

       

        protected void pocoImgbtn_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImgBtnMobile_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("9-mobile.aspx");
        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void ImgBtnTab_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("10-tablet.aspx");
           
        }
           
        

        protected void ImgBtnLtp_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("11-laptop.aspx");
           
        }

        protected void LinkBtnMob_Click(object sender, EventArgs e)
        {
            Response.Redirect("9-mobile.aspx");
        }

        protected void LinkBtnTab_Click(object sender, EventArgs e)
        {
            //Response.Redirect("10-tablet.aspx");
           
        }

        protected void LinkBtnLap_Click(object sender, EventArgs e)
        {
            Response.Redirect("11-laptop.aspx");
           
        }

        protected void applebtn3_Click(object sender, ImageClickEventArgs e)
        {

        }
       ////////////////////////////////////////////////////////////////////////
     

///////////////////////////////////////////////////////////////////////////////////////////////////
     
    }
}