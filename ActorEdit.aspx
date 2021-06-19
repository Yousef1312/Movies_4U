<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActorEdit.aspx.cs" Inherits="Data_Base.Movie_4U_DB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
        <link rel =" StyleSheet 2" href ="Style 2.css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style6 {
            height: 32px;
        }
        .auto-style8 {
            width: 426px;
        }
        .auto-style9 {
            height: 32px;
            width: 426px;
        }
        .auto-style10 {
            width: 82px;
        }
        .auto-style11 {
            height: 32px;
            width: 82px;
        }
        .auto-style12 {
            width: 82px;
            height: 34px;
        }
        .auto-style13 {
            width: 426px;
            height: 34px;
        }
        .auto-style14 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Movie4U_DBConnectionString %>" DeleteCommand="DELETE FROM [Actors_TB] WHERE [ActorID] = @ActorID" InsertCommand="INSERT INTO [Actors_TB] ([ActorName], [ActorImg]) VALUES (@ActorName, @ActorImg)" SelectCommand="SELECT * FROM [Actors_TB]" UpdateCommand="UPDATE [Actors_TB] SET [ActorName] = @ActorName, [ActorImg] = @ActorImg WHERE [ActorID] = @ActorID">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="Movie_ID" Name="ActorID" PropertyName="Text" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="Text_Name" Name="ActorName" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextIMG" Name="ActorImg" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="Text_Name" Name="ActorName" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextIMG" Name="ActorImg" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Movie_ID" Name="ActorID" PropertyName="Text" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">IMG</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextIMG" runat="server" Width="170px" Height="32px" BorderStyle="Solid" Font-Bold="True"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Name</td>
                <td class="auto-style9">
                    <asp:TextBox ID="Text_Name" runat="server" Width="170px" Height="32px" BorderStyle="Solid" Font-Bold="True"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13"></td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" Text="Save" Width="94px" OnClick="Button1_Click1" BorderStyle="Solid" CssClass="auto-style1" Font-Bold="True" Font-Overline="False" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">ID</td>
                <td class="auto-style8">
                    <asp:TextBox ID="Movie_ID" runat="server" Height="32px" Width="343px" BorderStyle="Solid" Font-Bold="True"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="Button3" runat="server" Text="Delete" Width="97px" BorderStyle="Solid" Font-Bold="True" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style9">
                    <asp:Button ID="Button2" runat="server" Text="Update" Width="97px" OnClick="Button2_Click1" BorderStyle="Solid" Font-Bold="True" />
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">
                    <asp:GridView ID="GridView1" runat="server" Width="338px" AutoGenerateColumns="False" DataKeyNames="ActorID" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="ActorID" HeaderText="ActorID" InsertVisible="False" ReadOnly="True" SortExpression="ActorID" >
                            <ItemStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ActorName" HeaderText="ActorName" SortExpression="ActorName" >
                            <ItemStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:ImageField DataImageUrlField="ActorImg">
                            </asp:ImageField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
