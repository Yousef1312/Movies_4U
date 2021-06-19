using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data;
using System.Data.SqlClient;

namespace Data_Base
{
    public partial class Log_in : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btu_ServerClick(object sender, EventArgs e)
        {
            try
             {

                 if (txtuser.Value != "admin")
                 {
                     lmblmess.InnerHtml = "Enter User Name";
                 }
                 else if(txtpass.Value != "123")

                 {
                     lmblmess.InnerHtml = "Enter PassWord";
                 }
                 else
                 {
                     Server.Transfer("MoviesEdit.aspx");
                 }
             }
             catch (Exception)
             {

             }

        }

    }
}