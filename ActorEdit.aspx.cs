using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Data_Base
{
    public partial class Movie_4U_DB : System.Web.UI.Page
    {
        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
        }
        protected void Button3_Click1(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
        }

    }
}