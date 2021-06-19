using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Data_Base
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = (string)Session["name3"];


            string querry = "SELECT Movies_TB.MovieID, Movies_TB.Img, Movies_TB.MovieName, MovieActor_TB.ActorID FROM Movies_TB " +
                " INNER JOIN MovieActor_TB ON Movies_TB.MovieID = MovieActor_TB.MovieID AND Movies_TB.MovieID = MovieActor_TB.MovieID" +
                " INNER JOIN Actors_TB ON MovieActor_TB.ActorID = Actors_TB.ActorID WHERE(MovieActor_TB.ActorID = " + Session["name3"] + ")";

            SqlDataSource2.SelectCommand = querry;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Linkbutton1_Command1(object sender, CommandEventArgs e)
        {
            string name3 = e.CommandArgument.ToString();
            Session["name"] = name3;
            Response.Redirect("MovieInfo.aspx");
        }
    }
}