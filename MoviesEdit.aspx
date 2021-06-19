<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoviesEdit.aspx.cs" Inherits="Data_Base.Movies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link rel=" StyleSheet 2" href="Style 2.css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 131px;
        }
        .auto-style3 {
            width: 402px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Movie4U_DBConnectionString3 %>" DeleteCommand="DELETE FROM [Movies_TB] WHERE [MovieID] = @MovieID" InsertCommand="INSERT INTO [Movies_TB] ([MovieName], [Img], [Type], [Category], [Year], [Country], [Language], [Story], [Duration], [Evaluation], [Translation]) VALUES (@MovieName, @Img, @Type, @Category, @Year, @Country, @Language, @Story, @Duration, @Evaluation, @Translation)" SelectCommand="SELECT * FROM [Movies_TB]" UpdateCommand="UPDATE [Movies_TB] SET [MovieName] = @MovieName, [Img] = @Img, [Type] = @Type, [Category] = @Category, [Year] = @Year, [Country] = @Country, [Language] = @Language, [Story] = @Story, [Duration] = @Duration, [Evaluation] = @Evaluation, [Translation] = @Translation WHERE [MovieID] = @MovieID">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="Text_Movies_ID" Name="MovieID" PropertyName="Text" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="Text_Movie_Name" Name="MovieName" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Text_Movie_Img" Name="Img" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Text_Movie_Type" Name="Type" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Text_Movie_Category" Name="Category" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Text_Movie_Year" Name="Year" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Text_Movie_Country" Name="Country" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Text_Movie_Language" Name="Language" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Text_Movie_Story" Name="Story" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Text_Movie_Duration" DbType="Time" Name="Duration" PropertyName="Text" />
                            <asp:ControlParameter Name="Evaluation" Type="Decimal" ControlID="Text_Movie_Evalution" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Text_Movie_Translation" Name="Translation" PropertyName="Text" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="Text_Movie_Name" Name="MovieName" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Text_Movie_Img" Name="Img" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Text_Movie_Type" Name="Type" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Text_Movie_Category" Name="Category" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Text_Movie_Year" Name="Year" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Text_Movie_Country" Name="Country" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Text_Movie_Language" Name="Language" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Text_Movie_Story" Name="Story" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Text_Movie_Duration" DbType="Time" Name="Duration" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Text_Movie_Evalution" Name="Evaluation" PropertyName="Text" Type="Decimal" />
                            <asp:ControlParameter ControlID="Text_Movie_Translation" Name="Translation" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Text_Movies_ID" Name="MovieID" PropertyName="Text" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td aria-atomic="True" aria-disabled="False" rowspan="21">&nbsp;</td>
                <td class="auto-style3" aria-atomic="True" aria-disabled="False">Movie Name</td>
                <td>
                    <asp:TextBox ID="Text_Movie_Name" runat="server" Height="32px" Width="170px" BorderStyle="Solid" Font-Bold="True" BackColor="White" CssClass="textlog" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Img</td>
                <td>
                    <asp:TextBox ID="Text_Movie_Img" runat="server" Height="32px" Width="170px" BorderStyle="Solid" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Type</td>
                <td>
                    <asp:TextBox ID="Text_Movie_Type" runat="server" Height="32px" Width="170px" BorderStyle="Solid" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Category</td>
                <td>
                    <asp:TextBox ID="Text_Movie_Category" runat="server" Height="32px" Width="170px" BorderStyle="Solid" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Year</td>
                <td>
                    <asp:TextBox ID="Text_Movie_Year" runat="server" Height="32px" Width="170px" BorderStyle="Solid" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Country</td>
                <td>
                    <asp:TextBox ID="Text_Movie_Country" runat="server" Height="32px" Width="170px" BorderStyle="Solid" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Language</td>
                <td>
                    <asp:TextBox ID="Text_Movie_Language" runat="server" Height="32px" Width="170px" BorderStyle="Solid" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Story</td>
                <td>
                    <asp:TextBox ID="Text_Movie_Story" runat="server" Height="32px" Width="170px" BorderStyle="Solid" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Duration </td>
                <td>
                    <asp:TextBox ID="Text_Movie_Duration" runat="server" Height="32px" Width="170px" BorderStyle="Solid" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Evalution </td>
                <td>
                    <asp:TextBox ID="Text_Movie_Evalution" runat="server" Height="32px" Width="170px" BorderStyle="Solid" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Translation</td>
                <td>
                    <asp:TextBox ID="Text_Movie_Translation" runat="server" Height="32px" Width="170px" BorderStyle="Solid" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="32px" Text="Save" Width="180px" OnClick="Button1_Click" BorderStyle="Solid" Font-Bold="True" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">ID</td>
                <td>
                    <asp:TextBox ID="Text_Movies_ID" runat="server" Height="32px" Width="170px" BorderStyle="Solid" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="Update" Width="106px" BorderStyle="Solid" Font-Bold="True" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button3" runat="server" Height="30px" Text="Delete" Width="106px" BorderStyle="Solid" Font-Bold="True" OnClick="Button3_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Height="32px" Text="To Movie_4U" Width="137px" BorderStyle="Solid" Font-Bold="True" Font-Italic="False" Font-Strikeout="False" OnClick="Button4_Click1" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MovieID" DataSourceID="SqlDataSource1" Height="16px" Width="142px" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AllowPaging="True">
                        <Columns>
                            <asp:BoundField DataField="MovieID" HeaderText="MovieID" InsertVisible="False" ReadOnly="True" SortExpression="MovieID" >
                            <ControlStyle Font-Bold="False" />
                            <ItemStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" >
                            <ItemStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" >
                            <ItemStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" >
                            <ItemStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" >
                            <ItemStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" >
                            <ItemStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Language" HeaderText="Language" SortExpression="Language" >
                            <ItemStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Story" SortExpression="Story">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Story") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Story") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" >
                            <ItemStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Evaluation" HeaderText="Evaluation" SortExpression="Evaluation" >
                            <ItemStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Translation" HeaderText="Translation" SortExpression="Translation" >
                            <ItemStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:ImageField DataImageUrlField="Img">
                            </asp:ImageField>
                        </Columns>
                        <EditRowStyle BorderStyle="None" />
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" BorderColor="Black" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>
