<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComplaintLaptop.aspx.cs" Inherits="TechDoc.ComplaintLaptop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">



         .rounded-ImageButton {
        border-radius: 10%;
    }
        
        .auto-style1 {
            z-index: 1;
            left: 52px;
            top: 95px;
            position: absolute;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 356px">
         
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 452px; top: 21px; position: absolute; height: 868px; width: 470px" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button" Font-Names="Arial">
            <asp:ImageButton ID="ImgBtnLtp" runat="server" ImageUrl="~/Images/laptop.png" style="z-index: 1; left: 48px; top: 32px; position: absolute; height: 59px; width: 54px" BorderColor="Gray" BorderWidth="1px" OnClick="ImgBtnLtp_Click" />
            <asp:Label ID="Label1" runat="server" Text="Laptop" CssClass="auto-style1" Font-Names="Arial"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:MultiView runat="server" ID="MultiView1">
                    <asp:View runat="server" ID="View1">
                    <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/apple (laptop).jpg" style="z-index: 1; left: 102px; top: 178px; position: absolute; height: 48px; width: 62px; right: 304px;" />
                    <asp:ImageButton ID="ImageButton2" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/acer.jpg" OnClick="ImageButton2_Click" style="z-index: 1; left: 20px; top: 177px; position: absolute; height: 48px; width: 62px; right: 386px;" />
                    <asp:ImageButton ID="ImageButton3" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/asus.jpg" style="z-index: 1; left: 184px; top: 178px; position: absolute; height: 48px; width: 62px; right: 222px;" />
                    <asp:ImageButton ID="ImageButton4" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/avita.jpg" style="z-index: 1; left: 263px; top: 178px; position: absolute; height: 48px; width: 62px; right: 143px;" />
                    <asp:ImageButton ID="ImageButton5" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/dell.jpg" style="z-index: 1; left: 343px; top: 178px; position: absolute; height: 48px; width: 62px; right: 63px;" />
                    <asp:ImageButton ID="ImageButton6" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/hp.jpg" style="z-index: 1; left: 20px; top: 238px; position: absolute; height: 48px; width: 62px; right: 386px;" />
                    <asp:ImageButton ID="ImageButton7" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/lenovo laptop.jpg" style="z-index: 1; left: 102px; top: 238px; position: absolute; height: 48px; width: 62px; right: 304px;" />
                    <asp:ImageButton ID="ImageButton8" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/lg.jpg" style="z-index: 1; left: 186px; top: 238px; position: absolute; height: 48px; width: 62px; right: 220px;" />
                    <asp:ImageButton ID="ImageButton9" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/mi (laptop).jpg" style="z-index: 1; left: 265px; top: 238px; position: absolute; height: 48px; width: 62px; right: 141px;" />
                    <asp:ImageButton ID="ImageButton10" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/microsoft.jpg" style="z-index: 1; left: 344px; top: 238px; position: absolute; height: 48px; width: 62px; right: 62px;" />
                    <asp:ImageButton ID="ImageButton11" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/msi.jpg" style="z-index: 1; left: 20px; top: 298px; position: absolute; height: 48px; width: 62px; right: 386px;" />
                    <asp:ImageButton ID="ImageButton12" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/toshiba.jpg" style="z-index: 1; left: 102px; top: 299px; position: absolute; height: 48px; width: 62px; right: 304px;" />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" style="z-index: 1; left: 25px; top: 383px; position: absolute" Text="Select a Model:"></asp:Label>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" style="z-index: 1; left: 15px; top: 456px; position: absolute; height: 128px; width: 415px">
                        <Columns>
                            <asp:BoundField DataField="ProductMake" HeaderText="ProductMake" SortExpression="ProductMake" />
                            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Font-Size="Small" style="z-index: 1; left: 25px; top: 404px; position: absolute; height: 17px; width: 70px" Text="Can’t find ," Font-Names="Arial"></asp:Label>
                    <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 268px; top: 426px; position: absolute; height: 19px; width: 56px" Text="Search" />
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" style="z-index: 1; left: 91px; top: 405px; position: absolute; height: 13px; width: 109px; right: 270px" Font-Names="Arial">Enter your Model</asp:LinkButton>
                    <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 27px; top: 428px; position: absolute; width: 219px"></asp:TextBox>
                    <br />
                </asp:View>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </asp:MultiView>
            <br />
     </asp:Panel>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechDocConnectionString %>" SelectCommand="SELECT [ProductMake], [Model] FROM [Product]"></asp:SqlDataSource>
    </form>
</body>
</html>
