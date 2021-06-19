using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Data_Base
{
    public partial class MoviesSite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            
           /* SqlDataSource1.SelectParameters["MovieName"].DefaultValue = TextBox1.Text;*/
         /*   SqlDataSource2.SelectParameters["ActorName"].DefaultValue = TextBox1.Text;*/

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSource3.SelectParameters["Year"].DefaultValue = DropDownList1.SelectedItem.Text;
        }

        protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
        {
            SqlDataSource3.SelectParameters["Type"].DefaultValue = DropDownList2.SelectedItem.Text;
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSource3.SelectParameters["Country"].DefaultValue = DropDownList3.SelectedItem.Text;
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSource3.SelectParameters["Language"].DefaultValue = DropDownList4.SelectedItem.Text;
        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSource3.SelectParameters["Category"].DefaultValue = DropDownList5.SelectedItem.Text;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DataList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton9_Command(object sender, CommandEventArgs e)
        {
            string Movie2 = e.CommandArgument.ToString();
            Session["name"] = Movie2;
            Response.Redirect("MovieInfo.aspx");

        }

        protected void ImageButton9_Click1(object sender, ImageClickEventArgs e)
        {

        }

        protected void DataList6_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton10_Click1(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton11_Command(object sender, CommandEventArgs e)
        {
            string Actor = e.CommandArgument.ToString();
            Session["name3"] = Actor;
            Response.Redirect("ActorInfo.aspx");
        }

        protected void ImageButton10_Command1(object sender, CommandEventArgs e)
        {
            string Movie = e.CommandArgument.ToString();
            Session["name"] = Movie;
            Response.Redirect("MovieInfo.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            TextBox1.Text = String.Empty;
            DropDownList1.SelectedValue = ("Year");
            DropDownList2.SelectedValue = ("Type");
            DropDownList3.SelectedValue = ("Country");
            DropDownList4.SelectedValue = ("Language");
            DropDownList5.SelectedValue = ("Category");
        }

        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}