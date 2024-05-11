using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechDoc
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = "Data Source=DC-SERVER;Initial Catalog=Techdoc;Persist Security Info=True;User ID=sa;Password=c#123";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImgBtnMobile_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);
        }

        protected void applebtn1_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.SetActiveView(View2);
        }

        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}