<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="15-Delivery.aspx.cs" Inherits="TechDoc.Pick" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">

        @media (max-width: 768px) {
            .panel-content {
                padding: 10px; /* Adjust padding for smaller screens */
            }
        }

        .auto-style1 {
            z-index: 1;
            left: 70px;
            top: 237px;
            position: absolute;
            width: 345px;
            height: 37px;
            border-radius:10px;
        }
        .auto-style2 {
            z-index: 1;
            left: 70px;
            top: 312px;
            position: absolute;
            width: 346px;
            height: 37px;
            border-radius:10px;
        }
        .auto-style3 {
            z-index: 1;
            left: 70px;
            top: 392px;
            position: absolute;
            width: 346px;
            height: 37px;
            border-radius:10px;
        }
        .auto-style4 {
            z-index: 1;
            left: 70px;
            top: 214px;
            position: absolute;
            width: 112px;
            height: 26px;
        }
        .auto-style5 {
            z-index: 1;
            left: 70px;
            top: 291px;
            position: absolute;
            width: 121px;
            height: 23px;
        }
        .auto-style6 {
            z-index: 1;
            left: 69px;
            top: 368px;
            position: absolute;
            width: 120px;
            height: 20px;
        }
        .auto-style7 {
            z-index: 1;
            left: 72px;
            top: 449px;
            position: absolute;
            width: 159px;
            height: 22px;
        }
        .auto-style8 {
            z-index: 1;
            left: 134px;
            top: 12px;
            position: absolute;
            height: 33px;
            width: 209px;
        }
    </style>
</head>
<body style="height: 633px; margin-left: 63px; width: 509px;">
    <form id="form2" runat="server">
    <div class="container" style="height: 624px; margin-left: 39px; margin-right: 38px; width: 453px;">
    
        <asp:Panel ID="Delivery" runat="server" style="z-index: 1; left: 70px; top: 23px; position: absolute; height: 603px; width: 470px; border-radius: 20px; overflow: hidden;" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/left-arrow.jpg" style="z-index: 1; left: 8px; top: 8px; position: absolute; height: 45px; width: 45px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Delivery/Location" Font-Bold="True" Font-Italic="False" Font-Size="Larger" CssClass="auto-style8" Font-Names="Arial" ForeColor="#3366CC"></asp:Label>
             <asp:Label ID="Labe8" runat="server" Text="Full Name" CssClass="auto-style4" Font-Names="Arial"></asp:Label>
            <asp:Label ID="Label9" runat="server" Text="Address" CssClass="auto-style5" Font-Names="Arial"></asp:Label>
            <asp:Label ID="Label10" runat="server" Text="Mobile Number" CssClass="auto-style6" Font-Names="Arial"></asp:Label>
             <asp:TextBox ID="TextBox7" runat="server" style="margin-bottom: 0px;" BorderColor="#999999" BorderWidth="1px" CssClass="auto-style3"></asp:TextBox>
            <asp:CheckBox ID="CheckBox2" runat="server" Text="Save Address" CssClass="auto-style7" Font-Names="Arial" />
            <asp:Button ID="Button2" runat="server" style="z-index: 1; left: 106px; top: 533px; position: absolute; width: 264px; height: 35px; background-color: #339966; border-radius: 20px;" Text="Save &amp; Continue" BorderStyle="None" ForeColor="White" PostBackUrl="~/16-Manage_adddress.aspx" />
           <asp:TextBox ID="TextBox6" runat="server" BorderColor="#999999" BorderWidth="1px" CssClass="auto-style2"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style1" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
        </asp:Panel>
    
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/devt.jpg" style="z-index: 1; left: 228px; top: 75px; position: absolute; width: 193px; height: 161px" />
    
    </div>
    </form>
</body>
</html>
