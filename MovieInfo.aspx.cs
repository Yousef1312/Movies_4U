using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Data_Base
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = (string)Session["name"];

            string querry = "SELECT Actors_TB.ActorName, MovieActor_TB.ActorID FROM Actors_TB" +
                " INNER JOIN MovieActor_TB ON Actors_TB.ActorID = MovieActor_TB.ActorID AND Actors_TB.ActorID = MovieActor_TB.ActorID" +
                " WHERE (MovieActor_TB.MovieID  = " +Session["name"]+ ")";

            SqlDataSource2.SelectCommand = querry;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            Session["Search"] = TextBox1.Text;
            Response.Redirect("MoviesSite.aspx");
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Repeater1_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Linkbutton1_Command(object sender, CommandEventArgs e)
        {
            string name3 = e.CommandArgument.ToString();
            Session["name3"] = name3;
            Response.Redirect("ActorInfo.aspx");
        }
    }
}