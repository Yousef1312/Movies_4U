<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MovieInfo.aspx.cs" Inherits="Data_Base.WebForm1" %>

     <!DOCTYPE html>

<html>
<head>
  <title>MOVIES-4U</title>
    <meta charset="utf-8">
    <meta name="discription" content=" موفيز فور يو موقع لمشاهدة وتحميل احدث واشهر الافلام المترجمة  ">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Pattaya&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style 4.css" type="text/css"/>
    <link rel="icon" href="images/video-icon.ico"/>
   <script src="jquery-3.6.0.min.js"></script>
     <!------jquery function------>
    <script>
        $(document).ready(function () {

            $("#h1").show(1200);

            $("#bage").show(1500);
        });
    </script>
    <style type="text/css">
        .auto-style1 {
            height: 1312px;
            margin-bottom: 0px;
        }
        .auto-style2 {
            height: 166px;
        }
    </style>
   </head>
<body>
    <form id="form1" runat="server">
   <!-------menu----------->
  <header id="header">
    <!--------------------navation bar-------------------------->
    <nav class="m">
        <div class="logo"><img src="images/logo.jpg"></div>
        <ul class="list">
            <li><a href="Main page.aspx" name="home"> HOME</a>
               
            </li>
        </ul>
         <!--------------------------------search box---------------------------------------------->
       
        <div id="search"> 
             <asp:TextBox ID="TextBox1" class="search-box" runat="server" Height="21px" Width="213px" OnTextChanged="TextBox1_TextChanged" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" class="search-botton"  runat="server" Text="Search" Height="26px" Width="127px" OnClick="Button1_Click" OnCommand="Button1_Command" Visible="False" />
&nbsp;</div>
         
        <!--------------------------------end search----------------------------------------------->
        
           <p id="Date-Time">
               &nbsp;</p>
            <!---------------------script to show Date and Time ------------------------->
              <script>
                  var d1 = new Date();
                  document.getElementById("Date-Time").innerHTML = d1;
              </script>
    </nav>
     <!--------------- end navation---------------------->
  </header>
  <!--end header-->
  <hr/>
   
      
	   <h1 id="h1" align="center"><span>Welcome To The Movies-4U Website</span></h1>
	   <script>$("#h1").hide();</script>
	   <!--info page -->
	   <div id="bage" class="auto-style1">
      <!--movie title-->
      <div class="movie_title"><h1 style="margin-top:2.5px"> 
          <asp:DataList ID="DataList1" runat="server" DataKeyField="MovieID" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
              <ItemTemplate>
                  <asp:Label ID="Label1" runat="server" Text='<%# Eval("MovieName") %>'></asp:Label>
                  (<asp:Label ID="Label2" runat="server" Text='<%# Eval("Year") %>'></asp:Label>
                  )
              </ItemTemplate>
          </asp:DataList>
          </h1></div>
      <hr/>
      <!--movie image-->
           <a href="#" class="poster-image" data-src="#" >
           <asp:DataList ID="DataList10" runat="server" DataKeyField="MovieID" DataSourceID="SqlDataSource1" Height="366px" RepeatDirection="Horizontal" Width="383px">
               <ItemTemplate>
                   <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Img") %>' Height="439px" />
               </ItemTemplate>
           </asp:DataList>
           </a>
      
      <!--table movie info-->
      <div class="table" >
        <table class="movieTable" style="	background-color: #fff">

           <tr><td>Language & Country</td> <td>
               <asp:DataList ID="DataList2" runat="server" DataKeyField="MovieID" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
                   <ItemTemplate>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label3" runat="server" Text='<%# Eval("Language") %>'></asp:Label>
                       &nbsp; &amp;&nbsp;
                       <asp:Label ID="Label4" runat="server" Text='<%# Eval("Country") %>'></asp:Label>
                   </ItemTemplate>
               </asp:DataList>
               </td> </tr>
           
           <tr><td>Category</td> <td>
               <asp:DataList ID="DataList3" runat="server" DataKeyField="MovieID" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
                   <ItemTemplate>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label5" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                   </ItemTemplate>
               </asp:DataList>
               </td></tr>

           <tr><td>Type</td> <td> 
               <asp:DataList ID="DataList4" runat="server" DataKeyField="MovieID" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
                   <ItemTemplate>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label6" runat="server" Text='<%# Eval("Type") %>'></asp:Label>
                   </ItemTemplate>
               </asp:DataList>
               </td></tr>

           <tr><td>Evaluation</td> <td> 
               <asp:DataList ID="DataList5" runat="server" DataKeyField="MovieID" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
                   <ItemTemplate>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label7" runat="server" Text='<%# Eval("Evaluation") %>'></asp:Label>
                   </ItemTemplate>
               </asp:DataList>
               </td></tr>
         
           <tr><td>Duration</td><td>
               <asp:DataList ID="DataList6" runat="server" DataKeyField="MovieID" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
                   <ItemTemplate>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label8" runat="server" Text='<%# Eval("Duration") %>'></asp:Label>
                   </ItemTemplate>
               </asp:DataList>
               </td></tr>

           <tr><td>Translation</td><td> 
               <asp:DataList ID="DataList7" runat="server" DataKeyField="MovieID" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
                   <ItemTemplate>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label9" runat="server" Text='<%# Eval("Translation") %>'></asp:Label>
                   </ItemTemplate>
               </asp:DataList>
               </td></tr>
          
        </table>
        <!-- end table movie info-->
      </div>
       <hr/><hr/><br/>
       <!--story box-->
        <fieldset class="story-box">
          <legend style="font-size: 35px">STORY</legend>
            <div class="story">
                <asp:DataList ID="DataList8" runat="server" DataKeyField="MovieID" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("Story") %>'></asp:Label>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </fieldset>
         <!--End story box-->
        <br/><br/>
           <br/>
           <br/>
        <hr/>
        <fieldset class="auto-style2">
          <legend style="font-size: 35px">Movie heroes</legend>
             
             <div class="actor">
		             <div class="a-img">
                         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2"  OnItemCommand="Repeater1_ItemCommand1">
                             <ItemTemplate>
                                 <div>
                                     <a><font size="+2">  <%# Eval ("ActorName") %>   </a> </font> 
                                                       
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <asp:linkbutton ID="Linkbutton1" commandname="Update" runat="server" text="View Details" OnCommand="Linkbutton1_Command"  CommandArgument='<%# Eval("ActorID") %>' />

                                         </a>
                                    

                                 </div>
                             </ItemTemplate>
                         </asp:Repeater>
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Movie4U_DBConnectionString24 %>" SelectCommand="SELECT * FROM [Actors_TB] WHERE ([ActorID] = @ActorID)" OnSelecting="SqlDataSource2_Selecting">
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="TextBox1" Name="ActorID" PropertyName="Text" Type="Int32" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                     </div>
            </div>
              <br>
        </fieldset><br/><br/><br/><br/>
        <!--Actors box-->
        &nbsp;<!--End Actors box--></div>
	   <script>$("#bage").hide();</script>

	   
	     <!-----------------------------End of page bar (footer)--------------------------------->
     <footer class="footer">
       <div class="us" style="margin-left: 20px;font: 20px sans-serif;">
        <h4>introducing students frome <span style="color:#f00">[ C1 ]</span></h4>Yousef_130155<br/><br/>Dana_132766
       </div>
          <!------social media icon and links  ----------->
         <div class="follow">
          
	          <h2>Follow Us</h2>
            <!------------------Add social media icon in unorder list------------------->
           <ul>
            <li class="list">
              <a href="https://www.facebook.com" class="link"> <img src="images/f.ico" ></a>
            </li>
            <li class="list">
              <a href="https://www.instagram.com" class="link"> <img src="images/i.ico" ></a>
            </li>
            <li class="list">
              <a href="https://www.twitter.com" class="link"> <img src="images/t.ico" ></a>
            </li>
            <li class="list">
              <a href="https://www.youtube.com" class="link"> <img src="images/y.ico" ></a>
            </li>
            <li class="list">
              <a href="https://www.snapchat.com/" class="link"> <img src="images/s.ico" ></a>
            </li>
           </ul>
           <!----------------------end the unorder list------------------------>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Movie4U_DBConnectionString10 %>" SelectCommand="SELECT * FROM [Movies_TB] WHERE ([MovieID] =  @MovieID)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="TextBox1" Name="MovieID" PropertyName="Text" />
                  </SelectParameters>
              </asp:SqlDataSource>
           <hr/>
           <h3 style="background-color: rgba(0,0,200,.2);height: 50px;font-size: 40px">❤❤جميع الحقوق محفوظة 2021 موفيز فور يو  صمم بكل حب في اسس البرمجيات❤❤</h3>
          </div>
         
     </footer>
     <!-------end footer------------->
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Movie4U_DBConnectionString25 %>" SelectCommand="SELECT * FROM [Actors_TB]"></asp:SqlDataSource>
    </form>
</body>
</html>
