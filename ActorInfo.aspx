<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActorInfo.aspx.cs" Inherits="Data_Base.WebForm3" %>

&nbsp;<html><head><title>MOVIES-4U</title>
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

            $("#header").show(1200);
            $("#h1").show(2200);

        });
    </script>
</head>
<body>
  <form id="form1" runat="server">

   <!-------menu----------->
  <header id="header">
    <!--------------------navation bar-------------------------->
    <nav class="m">
        <div class="logo"><img src="images/logo.jpg"></div>
        <ul class="list">
            <li><a href="Main Page.aspx" name="home"> HOME</a></li>
        </ul>
         <!--------------------------------search box---------------------------------------------->
       
        <div id="search"> 
          
             <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Button" Visible="False" />
&nbsp;</div>
         
        <!--------------------------------end search----------------------------------------------->
        
           <p id="Date-Time"></p>
            <!---------------------script to show Date and Time ------------------------->
              <script>
                  var d1 = new Date();
                  document.getElementById("Date-Time").innerHTML = d1;
              </script>
    </nav>
     <!--------------- end navation---------------------->
  </header>
  <!--to hide header in the first to show by jquery function-->
   <script>$("#header").hide();</script>
  <!----------end menu--------------->
  <hr/>
  <h1 id="h1" align="center"><span>Welcome To The Movies-4U Website</span></h1>
	   <script>$("#h1").hide();</script>
	   
     <!-- Actor image-->
  <div class="A-bage">
      <div class="A-image">
		  <asp:DataList ID="DataList1" runat="server" DataKeyField="ActorID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" RepeatDirection="Horizontal">
              <ItemTemplate>
                  <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ActorImg") %>' />
              </ItemTemplate>
          </asp:DataList>
		 <a href="#">
              <br/></a>
          <asp:DataList ID="DataList2" runat="server" DataKeyField="ActorID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" RepeatDirection="Horizontal" Font-Bold="True" Font-Italic="True" >
              <ItemTemplate>
                  <asp:Label ID="Label1" runat="server" Text='<%# Eval("ActorName") %>'></asp:Label>
              </ItemTemplate>
          </asp:DataList>
	  </div>
      <!---END actor image--->
	  <br/><br/><hr/>
	 <!--Actors movies box-->
        <fieldset class="actor-box">
          <legend style="font-size: 35px">Actor Movies</legend>
             
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <div>
                         <div class="movies">

		                    <div class="m-img"><img src = "<%# Eval("Img") %> " </a> </div>

                             <div>
                &nbsp;&nbsp;&nbsp;&nbsp;                 <asp:linkbutton ID="Linkbutton1" commandname="Update" runat="server" text="View Details" OnCommand="Linkbutton1_Command1"  CommandArgument='<%# Eval("MovieID") %>' />

                             </div>

	              	
              
                    </div>
                </ItemTemplate>
            </asp:Repeater>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Movie4U_DBConnectionString29 %>" SelectCommand="SELECT * FROM [Movies_TB]"></asp:SqlDataSource>
              <br/><br/>
        </fieldset>
         <!--End Actors movies box-->
  </div>
  
  
   <!-----------------------------End of page bar (footer)--------------------------------->
     <footer class="footer">
       <div class="us" style="margin-left: 20px;font: 20px sans-serif;">
        <h4>introducing students frome <span style="color:#f00">[ C1 ]</span></h4>Yousef_130155<br/><br/>Dana_132766
       </div>
          <!------social media icon and links  ----------->
         <div class="follow">
          
	          <h2>Follow Us<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Movie4U_DBConnectionString28 %>" SelectCommand="SELECT * FROM [Actors_TB] WHERE ([ActorID] = @ActorID)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="TextBox1" Name="ActorID" PropertyName="Text" Type="Int32" />
                  </SelectParameters>
                  </asp:SqlDataSource>
              </h2>
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
           <hr/>
           <h3 style="background-color: rgba(0,0,200,.2);height: 50px;font-size: 40px">❤❤جميع الحقوق محفوظة 2021 موفيز فور يو  صمم بكل حب في اسس البرمجيات❤❤</h3>
          </div>
         
     </footer>
     <!-------end footer------------->
    </form>

</body>
</html>


