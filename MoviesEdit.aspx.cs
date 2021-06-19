using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Data_Base
{
    public partial class Movies : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Server.Transfer("Main PAge.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}