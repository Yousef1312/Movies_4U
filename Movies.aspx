<!DOCTYPE html>
<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

    End Sub
</script>


<html>
<head>
  <title>MOVIES-4U</title>
    <meta charset="utf-8">
    <meta name="discription" content=" موفيز فور يو موقع لمشاهدة وتحميل احدث واشهر الافلام المترجمة  ">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Pattaya&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style 3.css" type="text/css"/>
    <link rel="icon" href="images/video-icon.ico"/>
   <script src="jquery-3.6.0.min.js"></script>
   <!------jquery function------>
    <script>
      $(document).ready(function(){
            
            $("#header").show(1200);
            $("#select").show(2200);
         
         });
    </script>
    <style type="text/css">
        .auto-style1 {
            height: 303px;
        }
        .auto-style3 {
            left: 0px;
            top: 0;
            height: 129px;
            bottom: 147px;
        }
        .auto-style4 {
            height: 46px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">

   <!-------menu----------->
  <header id="header" class="auto-style3">
    <!--------------------navation bar-------------------------->
    <nav class="m">
        <div class="logo"><img src="images/logo.jpg"></div>
        <ul class="list">
            <li><a href="Main Page.aspx" name="home"> HOME</a></li>
        </ul>
         <!--------------------------------search box---------------------------------------------->
       
        <!--------------------------------end search----------------------------------------------->
        
           <p id="Date-Time">&nbsp;</p>
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
   <a></a>
        <a></a>
        <hr/>
        <!-----------------------------A moving bar------------------------------------->
        &nbsp;&nbsp;<!--------------------Drop-down lists that help the user to search---------------------><marquee class="auto-style4"> MOVIES-4U TV FOR ALL YOUR FAVORITE MOVIES IN THE HIGHEST QUALITY</marquee><div id="select" style="margin-top: 10px">
          <!------YEAR LIST------>
          <select name="Year"  style=" width: 100px" >
            <option disabled selected >Year</option>
            <option>2021</option>
            <option>2020</option>
            <option>2019</option>
           </select>
            &nbsp &nbsp &nbsp &nbsp
            <!------TYPE LIST------>
          <select name="Type">
            <option disabled selected >Type</option>
            <option>Action</option>
            <option>romantic</option>
            <option>horror</option>
          </select>
           &nbsp &nbsp &nbsp &nbsp
           <!------COUNTRY LIST------>
          <select style=" width: 420px" name="Country">
            <option disabled selected >Country</option>
            <option>The United States of America</option>
            <option>United kingdom</option>
            <option>Canada</option>
            <option>Germany</option>
            <option>France</option>
          </select>
           &nbsp &nbsp &nbsp &nbsp
           <!------LANGUAGE LIST------>
          <select name="Language">
            <option disabled selected >Language</option>
            <option>English</option>
            <option>German</option>
            <option>French</option>
          </select>
           &nbsp &nbsp &nbsp &nbsp
           <!------CATEGORY LIST------>
          <select name="Category">
             <option disabled selected >Category</option>
             <option>للكبار فقط</option>
             <option>إرشاد الآباء</option>
             <option>TV-MA</option>
             <option>[PG-13]  +13</option>
             <option>+14</option>
            <option>غير مصنف</option>
          </select>
     </div>
       <!--to hide select in the first to show by jquery function-->
       <script>$("#select").hide();</script>
       <!----------------------end Drop-down lists --------------------------->
     <hr/>
	 
	 
	 
	 
	 <div class="auto-style1">
        </div>
	 
	 
	 
	 
	 
	 
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
