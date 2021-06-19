<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoviesSite.aspx.cs" Inherits="Data_Base.MoviesSite" %>

<!DOCTYPE html>

<html>
<head>
  <title>MOVIES-4U</title>
    <meta charset="utf-8">
    <meta name="discription" content=" موفيز فور يو موقع لمشاهدة وتحميل احدث واشهر الافلام المترجمة  ">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Pattaya&display=swap" rel="stylesheet">
    <link rel="icon" href="images/video-icon.ico"/>     <link rel="stylesheet" href="style 3.css" type="text/css"/>
    <link rel="stylesheet" href="style 4.css" type="text/css"/>

   <script src="jquery-3.6.0.min.js"></script>
   <!------jquery function------>
    <script>
        $(document).ready(function () {

            $("#header").show(1200);
            $("#select").show(2200);

        });
    </script>
    <style type="text/css">
        .auto-style2 {
            height: 0px;
        }
        .auto-style3 {
            height: 68px;
            margin-top: 12px;
        }
        .auto-style5 {
            height: 4662px;
            margin-bottom: 61px;
        }
        .auto-style6 {
            height: 8px;
        }
        .auto-style8 {
            height: 3px;
        }
        .auto-style9 {
            left: 0px;
            top: 0;
            height: 143px;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            text-align: left;
            font-size: 20px;
            border-radius: 34px;
            padding-left: 7px;
        }
    </style>
</head>
<body>

   <!-------menu----------->
  <header id="header" class="auto-style9">
    <!--------------------navation bar-------------------------->
    <nav class="m">
        <div class="logo"><img src="images/logo.jpg"></div>
        <ul class="list">
            <li><a href="Main Page.aspx" name="home"> HOME</a> &nbsp;&nbsp;&nbsp;&nbsp;  <a >||
                </a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Log_in.aspx" name="home"> Edit</a></li>
        </ul>
         <!--------------------------------search box---------------------------------------------->
       
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
   
        <!-----------------------------A moving bar------------------------------------->
        &nbsp;<!--------------------Drop-down lists that help the user to search---------------------><!--to hide select in the first to show by jquery function--><script>$("#select").hide();</script><!----------------------end Drop-down lists ---------------------------><p>
    <br />
    </p>
    <p>
        &nbsp;</p>
    <div aria-atomic="True" aria-busy="True"> 
          <form id="form1" runat="server" class="auto-style5" aria-atomic="True" aria-autocomplete="none" aria-busy="False" aria-checked="false" aria-disabled="False" aria-dropeffect="none">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" CssClass="auto-style11" runat="server" Height="28px" Width="342px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
             &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Search" class="search-botton" Height="32px" Width="141px" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Height="34px" Text="Clear The Search" class="search-botton"  Width="135px" OnClick="Button2_Click" />
              <hr class="auto-style2"/>

              <marquee class="auto-style3"> MOVIES-4U TV FOR ALL YOUR FAVORITE MOVIES IN THE HIGHEST QUALITY</marquee>&nbsp;&nbsp;<br />
              <br />
              <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                  <asp:ListItem Selected="True">Year</asp:ListItem>
                  <asp:ListItem>2021</asp:ListItem>
                  <asp:ListItem>2020</asp:ListItem>
                  <asp:ListItem>2019</asp:ListItem>
              </asp:DropDownList>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1">
                  <asp:ListItem Selected="True">Type</asp:ListItem>
                  <asp:ListItem>Horror</asp:ListItem>
                  <asp:ListItem>Action</asp:ListItem>
                  <asp:ListItem>Romantic</asp:ListItem>
              </asp:DropDownList>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" Height="41px" Width="321px" AutoPostBack="True" ClientIDMode="Static" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                  <asp:ListItem Selected="True">Country</asp:ListItem>
                  <asp:ListItem>France</asp:ListItem>
                  <asp:ListItem>Canada</asp:ListItem>
                  <asp:ListItem>The United States of America
</asp:ListItem>
                  <asp:ListItem>Germany</asp:ListItem>
              </asp:DropDownList>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                  <asp:ListItem Selected="True">Language</asp:ListItem>
                  <asp:ListItem>English</asp:ListItem>
                  <asp:ListItem>French</asp:ListItem>
                  <asp:ListItem>German</asp:ListItem>
              </asp:DropDownList>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                  <asp:ListItem>Category</asp:ListItem>
                  <asp:ListItem>للكبار فقط</asp:ListItem>
                  <asp:ListItem>pG-13 يجب ارشاد الاباء لا يناسب الاطفال اقل من 13سنة</asp:ListItem>
                  <asp:ListItem>غير مصنف</asp:ListItem>
                  <asp:ListItem>لا يناسب الاطفال اقل من 13 سنة</asp:ListItem>
                  <asp:ListItem>للكبار فقط يحتوي على مشاهد فاضحة او عنيفة</asp:ListItem>
                  <asp:ListItem>يجب إرشاد الآباء, لا يناسب الأطفال أقل من 14 سنة</asp:ListItem>
                  <asp:ListItem>TV-MA للكبار فقط, يحتوى على مشاهد فاضحة او عنيفة</asp:ListItem>
              </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<hr class="auto-style8"/>
	 
	 
	 
	 
              <br />
              <br />
              <asp:DataList ID="DataList4" runat="server" BorderColor="Black" BorderWidth="6px" CellPadding="2" CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" HorizontalAlign="Center" OnSelectedIndexChanged="DataList4_SelectedIndexChanged" RepeatColumns="7" RepeatDirection="Horizontal" DataKeyField="MovieID" Width="701px">
                  <ItemTemplate>
                      <table class="auto-style10">
                          <tr>
                              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label11" runat="server" Text='<%# Eval("Type") %>'></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl='<%# Eval("Img") %>' OnCommand="ImageButton10_Command1" CommandArgument='<%# Eval("MovieID") %>' OnClick="ImageButton10_Click1"/>
                              </td>
                          </tr>
                          <tr>
                              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label12" runat="server" Text='<%# Eval("MovieName") %>'></asp:Label>
                              </td>
                          </tr>
                      </table>
                  </ItemTemplate>
              </asp:DataList>
              <br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
              <br />
              <asp:DataList ID="DataList5" runat="server" BorderColor="Black" BorderWidth="6px" CellPadding="2" CellSpacing="2" DataSourceID="SqlDataSource2" GridLines="Both"  HorizontalAlign="Center" RepeatColumns="7" RepeatDirection="Horizontal" Width="707px">
                  <ItemTemplate>
                      <table class="auto-style10">
                          <tr>
                              <td>
                                  <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl='<%# Eval("ActorImg") %>' CommandArgument='<%# Eval("ActorID") %>' OnCommand="ImageButton11_Command" OnClick="ImageButton11_Click" />
                              </td>
                          </tr>
                          <tr>
                              <td>
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label10" runat="server" Text='<%# Eval("ActorName") %>'></asp:Label>
                              </td>
                          </tr>
                      </table>
                  </ItemTemplate>
              </asp:DataList>
              <br />
              <br />
              <br />
              
              <asp:DataList ID="DataList6" runat="server" BorderColor="Black" BorderWidth="6px" DataKeyField="MovieID" DataSourceID="SqlDataSource3" GridLines="Both" HorizontalAlign="Center" RepeatColumns="7" RepeatDirection="Horizontal" Width="705px" OnSelectedIndexChanged="DataList6_SelectedIndexChanged">
                  <ItemTemplate>
                      <table class="auto-style10">
                          <tr>
                              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label13" runat="server" Text='<%# Eval("Type") %>'></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl='<%# Eval("Img") %>' CommandArgument='<%# Eval("MovieID") %>' OnCommand="ImageButton9_Command" OnClick="ImageButton9_Click1" />
                              </td>
                          </tr>
                          <tr>
                              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label14" runat="server" Text='<%# Eval("MovieName") %>'></asp:Label>
                              </td>
                          </tr>
                      </table>
                  </ItemTemplate>
              </asp:DataList>
              
           </form>
        </div>
	 
	 
	 
	 
	 
	 
	 <!-----------------------------End of page bar (footer)--------------------------------->
     <footer class="footer">
       <div class="us" style="margin-left: 20px;font: 20px sans-serif;">
        <h4 class="auto-style6">introducing students frome <span style="color:#f00">[ C1 ]</span></h4>Yousef_130155<br/><br/>Dana_132766
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
           <h3 style="background-color: rgba(0,0,200,.2);height: 50px;font-size: 40px">❤❤جميع الحقوق محفوظة 2021 موفيز فور يو  صمم بكل حب في اسس البرمجيات</h3>
              <h3 style="background-color: rgba(0,0,200,.2);height: 50px;font-size: 40px">❤❤</h3>
          </div>
         
     </footer>
     <!-------end footer------------->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Movie4U_DBConnectionString11 %>" SelectCommand="SELECT * FROM [Movies_TB] WHERE ([MovieName] LIKE '%' + @MovieName + '%')" OnSelecting="SqlDataSource1_Selecting" ConflictDetection="CompareAllValues">
               <SelectParameters>
                   <asp:ControlParameter ControlID="TextBox1" Name="MovieName" PropertyName="Text" Type="String" />
               </SelectParameters>
               </asp:SqlDataSource>
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Movie4U_DBConnectionString10 %>" SelectCommand="SELECT [ActorName], [ActorImg], [ActorID] FROM [Actors_TB] WHERE ([ActorName] LIKE '%' + @ActorName + '%')">
                   <SelectParameters>
                       <asp:ControlParameter ControlID="TextBox1" Name="ActorName" PropertyName="Text" Type="String" />
                   </SelectParameters>
               </asp:SqlDataSource>
               <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Movie4U_DBConnectionString20 %>" SelectCommand="SELECT * FROM [Movies_TB] WHERE (([Year] = @Year) OR([Type] = @Type) OR([Language] = @Language) OR ([Country] = @Country) OR([Category] = @Category))">
                   <SelectParameters>
                       <asp:ControlParameter ControlID="DropDownList1" Name="Year" PropertyName="SelectedValue" Type="String" />
                       <asp:ControlParameter ControlID="DropDownList2" Name="Type" PropertyName="SelectedValue" />
                       <asp:ControlParameter ControlID="DropDownList4" Name="Language" PropertyName="SelectedValue" />
                       <asp:ControlParameter ControlID="DropDownList3" Name="Country" PropertyName="SelectedValue" />
                       <asp:ControlParameter ControlID="DropDownList5" Name="Category" PropertyName="SelectedValue" />
                   </SelectParameters>
    </asp:SqlDataSource>
               </body>
</html>

