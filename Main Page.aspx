
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main Page.aspx.cs" Inherits="Data_Base.WebForm4" %>

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

            $("#header").show(1200);
            $("#img").show(2200);

        });
    </script>
    <style type="text/css">
        .auto-style1 {
            height: 68px;
            margin-top: 0px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
   <!--------------------Welcome Message----------------------->
   <script type="text/javascript">
       alert("Hello Dr. Bassel ALKHATIB, Welcome to the Movies-4U site...");
    </script>
   <!-------menu-----------> 
  <header id="header">
    <!--------------------navation bar-------------------------->
    <nav class="m">   
        <div class="logo"><img src="images/logo.jpg"></div>
        <ul class="list">
            <li><a href="MoviesSite.aspx" name="all-movies"> Movies</a>    
              &nbsp;&nbsp;&nbsp;&nbsp;  <a >||
                </a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Main Page.aspx" name="home"> HOME</a> </li>
        </ul>
         <!--------------------------------search box---------------------------------------------->
       
        <div id="search"> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        </div>
         
        <!--------------------------------end search----------------------------------------------->
        
           <p id="Date-Time" class="auto-style1" aria-required="False" aria-selected="false"></p>
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
        <!-----------------------------A moving bar------------------------------------->
        <marquee> MOVIES-4U TV FOR ALL YOUR FAVORITE MOVIES IN THE HIGHEST QUALITY</marquee>
        
        
     <hr/>
       <div id="img">
       <!-----------------------------------------Photo films boxes---------------------------------------------->
       <!--first images row-->
      <div class="movies-row"><p>MOST WATCHED</p>
               <!--movie image 1-->
              <div class="movie-box">
                 <div class="movie-img">
                     <asp:ImageButton ID="ImageButton1" runat="server" Height="370px" ImageUrl="~/images/jumanji.jpg" Width="240px" OnClick="ImageButton1_Click" />
                     &nbsp;<span class="name">jumanji &nbsp 2019<br/>Action</span></div>
              </div>
                <!--movie image 2-->
                <div class="movie-box">
                 <div class="movie-img">
                     <asp:ImageButton ID="ImageButton2" runat="server" Height="370px" ImageUrl="~/images/the new mutants.jpg" OnClick="ImageButton2_Click" Width="240px" />
&nbsp;<span class="name">the new mutants 2020<br/>Action</span></div>
             </div>
              
                 <!--movie image 3-->
               <div class="movie-box">
                     <div class="movie-img">
                         <asp:ImageButton ID="ImageButton3" runat="server" Height="370px" ImageUrl="~/images/Undine.jpg" OnClick="ImageButton3_Click" Width="240px" />
&nbsp;<span class="name">Undine &nbsp 2020<br/>Romantic</span></div>
                </div> 
                <!--movie image 4-->
               <div class="movie-box">
                 <div class="movie-img">
                     <asp:ImageButton ID="ImageButton4" runat="server" Height="370px" ImageUrl="~/images/Ordinary love.jpg" OnClick="ImageButton4_Click" Width="240px" />
&nbsp;<span class="name">Ordinary love &nbsp 2019<br/>Romantic</span></div>
               </div>
                  <!--movie image 5-->
                 <div class="movie-box">
                   <div class="movie-img">
                       <asp:ImageButton ID="ImageButton5" runat="server" Height="370px" ImageUrl="~/images/The Wolf's Call.jpg" OnClick="ImageButton5_Click" Width="240px" />
&nbsp;<span class="name">The Wolf's Call &nbsp 2019<br/>Action</span></div>
               </div>
      </div>
      <!---------end first images row----------->
    <hr/>
    <br/><br>
      <!------------------------------second images row-------------------------------------->
      <div class="movies-row"><p>MOVIES 2021</p>
                <!--movie image 6-->
              <div class="movie-box">
                <div class="movie-img">
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="370px" ImageUrl="~/images/the  marksman.jpg" OnClick="ImageButton6_Click" Width="240px" />
&nbsp;<span class="name">the  marksman &nbsp 2021<br/>Action</span></div>
              </div>
                <!--movie image 7-->
              <div class="movie-box">
                 <div class="movie-img">
                     <asp:ImageButton ID="ImageButton7" runat="server" Height="370px" ImageUrl="~/images/Trigger Point.jpg" OnClick="ImageButton7_Click" Width="240px" />
                     <span class="name">Trigger Point &nbsp 2021 <br/>Action</span></div>
             </div>
               <!--movie image 8-->
              <div class="movie-box">
                 <div class="movie-img">
                     <asp:ImageButton ID="ImageButton8" runat="server" Height="370px" ImageUrl="~/images/5.jpg" OnClick="ImageButton8_Click" Width="240px" />
&nbsp;<span class="name">Fear Of Rain &nbsp 2021<br/>Horror</span></div>
              </div>
                  <!--movie image 9-->
               <div class="movie-box">
                 <div class="movie-img">
                     <asp:ImageButton ID="ImageButton9" runat="server" Height="370px" ImageUrl="~/images/wrong turn.jpg" OnClick="ImageButton9_Click" Width="240px" />
&nbsp;<span class="name">wrong turn &nbsp 2021<br/>Horror</span></div>
               </div>
                  <!--movie image 10-->
                 <div class="movie-box">
                     <div class="movie-img">
                         <asp:ImageButton ID="ImageButton10" runat="server" Height="370px" ImageUrl="~/images/colors of love .jpg" OnClick="ImageButton10_Click" Width="240px" />
&nbsp;<span class="name">Colors of love &nbsp 2021<br/>Romantic</span></div>
                 </div>
     </div>
      <!------------------------------ end second images row-------------------------------------->
    <hr/>
    <br/><br/>
      <!------------------------------third images row-------------------------------------->
      <div class="movies-row"><p>Action Movies</p>
                <!--movie image 11-->
              <div class="movie-box">
                 <div class="movie-img">
                     <asp:ImageButton ID="ImageButton11" runat="server" Height="370px" ImageUrl="~/images/Cold Blood.jpg" OnClick="ImageButton11_Click" Width="240px" />
&nbsp;<span class="name">Cold Blood &nbsp 2019<br/>Action</span></div>
              </div>
                <!--movie image 12-->
              <div class="movie-box">
                 <div class="movie-img">
                     <asp:ImageButton ID="ImageButton12" runat="server" Height="370px" ImageUrl="~/images/Honest Thief.jpg" OnClick="ImageButton12_Click" Width="240px" />
&nbsp;<span class="name">Honest Thief &nbsp 2020<br/>Action</span></div>
             </div>
                <!--movie image 13-->
              <div class="movie-box">
                 <div class="movie-img">
                     <asp:ImageButton ID="ImageButton13" runat="server" Height="370px" ImageUrl="~/images/Rogue City.jpg" OnClick="ImageButton13_Click" Width="240px" />
&nbsp;<span class="name">Rogue City &nbsp 2020<br/>Action</span></div>
              </div>
                  <!--movie image 14-->
               <div class="movie-box">
                 <div class="movie-img">
                     <asp:ImageButton ID="ImageButton14" runat="server" Height="370px" ImageUrl="~/images/coffee &amp; kareem.jpg" OnClick="ImageButton14_Click" Width="240px" />
&nbsp;<span class="name">coffee & kareem &nbsp 2020<br/>Action</span></div>
               </div>
                  <!--movie image 15-->
                 <div class="movie-box">
                     <div class="movie-img">
                         <asp:ImageButton ID="ImageButton15" runat="server" Height="370px" ImageUrl="~/images/3.jpg" OnClick="ImageButton15_Click" Width="240px" />
&nbsp;<span class="name">The Hunt &nbsp 2020<br/>Action</span></div>
                 </div>
    </div>
       <!------------------------------ end third images row-------------------------------------->
      <hr/>
      <br/><br/>
      <!------------------------------fourth images row-------------------------------------->
      <div class="movies-row"><p>Horror Movies</p>
               <!--movie image 16-->
              <div class="movie-box">
                 <div class="movie-img">
                     <asp:ImageButton ID="ImageButton16" runat="server" Height="370px" ImageUrl="~/images/4.jpg" OnClick="ImageButton16_Click" Width="240px" />
&nbsp;<span class="name">Annabelle Comes Home 2019<br/>Horror</span></div>
              </div>
              <!--movie image 17-->
              <div class="movie-box">
                 <div class="movie-img">
                     <asp:ImageButton ID="ImageButton17" runat="server" Height="370px" ImageUrl="~/images/A Wakefield Project.jpg" OnClick="ImageButton17_Click" Width="240px" />
&nbsp;<span class="name">A Wakefield Project 2019<br/>Horror</span></div>
              </div>
                <!--movie image 18-->
              <div class="movie-box">
                 <div class="movie-img">
                     <asp:ImageButton ID="ImageButton18" runat="server" Height="370px" ImageUrl="~/images/Dreamkatcher.jpg" OnClick="ImageButton18_Click" Width="240px" />
&nbsp;<span class="name">Dreamkatcher &nbsp 2020<br/>Horror</span></div>
              </div>
                  <!--movie image 19-->
               <div class="movie-box">
                 <div class="movie-img">
                     <asp:ImageButton ID="ImageButton19" runat="server" Height="370px" ImageUrl="~/images/You should have left.jpg" OnClick="ImageButton19_Click" Width="240px" />
&nbsp;<span class="name">You should have left &nbsp 2020<br/>Hrror</span></div>
               </div>
                  <!--movie image 20-->
                 <div class="movie-box">
                     <div class="movie-img">
                         <asp:ImageButton ID="ImageButton20" runat="server" Height="370px" ImageUrl="~/images/The Pale Door.jpg" OnClick="ImageButton20_Click" Width="240px" />
&nbsp;<span class="name">The Pale Door &nbsp 2020<br/>Horror</span></div>
                 </div>
    </div>
      <!------------------------------ end fourth images row-------------------------------------->
    <hr/>
    <br/><br/>
    <!------------------------------fifth images row-------------------------------------->
     <div class="movies-row"><p>Romantic Movies</p>
             <!--movie image 21-->
              <div class="movie-box">
                 <div class="movie-img">
                     <asp:ImageButton ID="ImageButton21" runat="server" Height="370px" ImageUrl="~/images/2 hearts.jpg" OnClick="ImageButton21_Click" Width="240px" />
&nbsp;<span class="name">2 hearts 2020<br/>Romantic</span></div>
              </div>
                <!--movie image 22-->
              <div class="movie-box">
                 <div class="movie-img">
                     <asp:ImageButton ID="ImageButton22" runat="server" Height="370px" ImageUrl="~/images/emma.jpg" OnClick="ImageButton22_Click" Width="240px" />
&nbsp;<span class="name">emma 2020<br/>Romantic</span></div>
             </div>
                <!--movie image 23-->
              <div class="movie-box">
                 <div class="movie-img">
                     <asp:ImageButton ID="ImageButton23" runat="server" Height="370px" ImageUrl="~/images/radoactive.jpg" OnClick="ImageButton23_Click" Width="240px" />
&nbsp;<span class="name">radoactive &nbsp 2019<br/>Romantic</span></div>
              </div>
                 <!--movie image 24-->
                 <div class="movie-box">
                     <div class="movie-img">
                         <asp:ImageButton ID="ImageButton24" runat="server" Height="370px" ImageUrl="~/images/Isn't It Romantic.jpg" OnClick="ImageButton24_Click" Width="240px" />
&nbsp;<span class="name">Isn't It Romantic &nbsp 2020<br/>Romantic</span></div>
                 </div>
                   <!--movie image 25-->
                 <div class="movie-box">
                 <div class="movie-img">
                     <asp:ImageButton ID="ImageButton25" runat="server" Height="370px" ImageUrl="~/images/Ordinary love.jpg" OnClick="ImageButton25_Click" Width="240px" />
&nbsp;<span class="name">Ordinary love &nbsp 2020<br/>Romantic</span></div>
               </div>
    </div>
     <!------------------------------ end fifth images row-------------------------------------->
     </div>
       <script>$("#img").hide();</script>
     <hr/>
      <!----------------------------------------- end Photo films boxes code---------------------------------------------->
     
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
           <hr/>
           <h3 style="background-color: rgba(0,0,200,.2);height: 50px;font-size: 40px">❤❤جميع الحقوق محفوظة 2021 موفيز فور يو  صمم بكل حب في اسس البرمجيات❤❤</h3>
          </div>
         
     </footer>
     <!-------end footer------------->
    </form>
</body>
</html>

