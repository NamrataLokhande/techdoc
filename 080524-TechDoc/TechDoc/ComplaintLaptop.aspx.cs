using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechDoc
{
    public partial class ComplaintLaptop : System.Web.UI.Page
    {
        string connectionString = "Data Source=DC-SERVER;Initial Catalog=Techdoc;Persist Security Info=True;User ID=sa;Password=c#123";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImgBtnLtp_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.SetActiveView(View2);
        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }
    }
}