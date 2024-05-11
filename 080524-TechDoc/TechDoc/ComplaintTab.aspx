<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComplaintTab.aspx.cs" Inherits="TechDoc.ComplaintTab" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


         .rounded-ImageButton {
        border-radius: 10%;
    }
        .overlayView {
    position: absolute;
    left: 452px;
    top: 21px;
    height: 868px;
    width: 470px;
    z-index: 2;
}
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 764px">
         <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 452px; top: 21px; position: absolute; height: 868px; width: 470px" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button" Font-Names="Arial">
    
            <asp:ImageButton ID="ImgBtnTab" runat="server" ImageUrl="~/Images/tablet.png" style="z-index: 1; left: 43px; top: 26px; position: absolute; height: 58px; width: 54px" BorderColor="Gray" BorderWidth="1px" OnClick="ImgBtnTab_Click" />
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 50px; top: 94px; position: absolute" Text="Tablet" Font-Names="Arial"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:MultiView ID="MultiView1" runat="server" Visible="False">
            <asp:View ID="View1" runat="server">
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:ImageButton ID="ImageButton15" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/apple.jpg" style="z-index: 1; left: 32px; top: 205px; position: absolute; height: 48px; width: 62px" OnClick="ImageButton15_Click" />
                <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/google.jpg" style="z-index: 1; left: 112px; top: 206px; position: absolute; height: 48px; width: 62px; right: 864px;" />
            <asp:ImageButton ID="ImageButton6" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" ImageUrl="~/Images/honor.jpg" CssClass="rounded-ImageButton" style="z-index: 1; left: 198px; top: 208px; position: absolute; height: 48px; width: 62px" />
                <asp:ImageButton ID="ImageButton2" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" ImageUrl="~/Images/infinix.jpg" CssClass="rounded-ImageButton" style="z-index: 1; left: 288px; top: 208px; position: absolute; height: 48px; width: 62px" />
                <asp:ImageButton ID="ImageButton7" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/iqoo.jpg" style="z-index: 1; left: 378px; top: 209px; position: absolute; height: 48px; width: 62px" />
                <asp:ImageButton ID="ImageButton16" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" ImageUrl="~/Images/mi.jpg" CssClass="rounded-ImageButton" style="z-index: 1; left: 30px; top: 267px; position: absolute; height: 48px; width: 62px" />
                <asp:ImageButton ID="ImageButton8" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" ImageUrl="~/Images/motorola.jpg" CssClass="rounded-ImageButton" style="z-index: 1; left: 113px; top: 270px; position: absolute; height: 48px; width: 62px" />
                <asp:ImageButton ID="ImageButton3" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/oneplus.jpg" style="z-index: 1; left: 197px; top: 270px; position: absolute; height: 48px; width: 62px" />
                <asp:ImageButton ID="ImageButton10" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" ImageUrl="~/Images/nokia.jpg" CssClass="rounded-ImageButton" style="z-index: 1; left: 288px; top: 271px; position: absolute; height: 48px; width: 62px" />
                <asp:ImageButton ID="ImageButton4" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" ImageUrl="~/Images/oppo.jpg" CssClass="rounded-ImageButton" style="z-index: 1; left: 378px; top: 272px; position: absolute; height: 48px; width: 62px" />
                <asp:ImageButton ID="ImageButton11" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" ImageUrl="~/Images/poco.jpg" CssClass="rounded-ImageButton" style="z-index: 1; left: 30px; top: 330px; position: absolute; height: 48px; width: 62px" />
                <asp:ImageButton ID="ImageButton5" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/realme.jpg" style="z-index: 1; left: 112px; top: 330px; position: absolute; height: 48px; width: 62px" />
                <asp:ImageButton ID="ImageButton12" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/samsung.jpg" style="z-index: 1; left: 198px; top: 331px; position: absolute; height: 48px; width: 62px; right: 208px;" />
                <asp:ImageButton ID="ImageButton13" runat="server" style="z-index: 1; left: 288px; top: 330px; position: absolute; height: 48px; width: 62px" BorderColor="#CCCCCC" BorderWidth="1px" ImageUrl="~/Images/sony.jpg" CssClass="rounded-ImageButton" />
                <asp:ImageButton ID="ImageButton14" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/vivo.jpg" style="z-index: 1; left: 379px; top: 332px; position: absolute; height: 48px; width: 62px" />


                <br />
                <br />
               
            </asp:View>
            <asp:View ID="View2" runat="server" >
                <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="True" style="z-index: 1; left: 35px; top: 463px; position: absolute" Text="Select a Model:"></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Font-Size="Small" style="z-index: 1; left: 35px; top: 484px; position: absolute; height: 17px; width: 70px" Text="Can’t find ,"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" style="z-index: 1; left: 101px; top: 485px; position: absolute; height: 13px; width: 109px; right: 260px">Enter your Model</asp:LinkButton>
                <br />
                <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 285px; top: 508px; position: absolute; height: 19px; width: 56px" Text="Search" />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 37px; top: 508px; position: absolute; width: 219px"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" style="z-index: 1; left: 24px; top: 546px; position: absolute; height: 128px; width: 415px">
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
                <br />
                <br />
            </asp:View>
            <br />
            
        </asp:MultiView>
             <br />
             <br />
     </asp:Panel>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechDocConnectionString %>" SelectCommand="SELECT [ProductMake], [Model] FROM [Product]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
