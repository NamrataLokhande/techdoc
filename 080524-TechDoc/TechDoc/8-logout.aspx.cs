using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _1_logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("6-Personal_details.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
        }
    }
}