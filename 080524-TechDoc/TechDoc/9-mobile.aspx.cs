using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechDoc
{
    public partial class mobile : System.Web.UI.Page
    {
        string connectionString = "Data Source=DC-SERVER;Initial Catalog=Techdoc;Persist Security Info=True;User ID=sa;Password=c#123";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

     /*   protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Panel2.Visible = true;
            Panel3.Visible = false;
        }*/
/*
        protected void applebtn1_Click(object sender, ImageClickEventArgs e)
        {
            Panel3.Visible = true;
            Panel2.Visible = false;
           

        }*/

        protected void ImgBtnMobile_Click(object sender, ImageClickEventArgs e)
        {
            //Panel2.Visible = false;
            //Panel3.Visible = false;
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("12-entermodel.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Complaintissue.aspx");
        }

        protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
        {
            Panel2.Visible = true;
            Panel3.Visible = false;
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Panel3.Visible = true;
            Panel2.Visible = false;
        }

      
    }
}