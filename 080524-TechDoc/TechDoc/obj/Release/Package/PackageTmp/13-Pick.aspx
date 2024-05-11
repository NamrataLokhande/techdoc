<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="13-Pick.aspx.cs" Inherits="TechDoc.Pick" %>

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
            top: 235px;
            position: absolute;
            width: 345px;
            height: 37px;
            border-radius:10px;
        }
        .auto-style2 {
            z-index: 1;
            left: 70px;
            top: 314px;
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
            width: 345px;
            height: 33px;
            border-radius:10px;
        }
        .auto-style4 {
            z-index: 1;
            left: 70px;
            top: 215px;
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
            left: 69px;
            top: 449px;
            position: absolute;
            width: 159px;
            height: 22px;
        }
        .auto-style8 {
            z-index: 1;
            left: 151px;
            top: 11px;
            position: absolute;
            height: 33px;
            width: 245px;
        }
    </style>
</head>
<body style="height: 619px; margin-left: 63px; width: 499px;">
    <form id="form1" runat="server">
    <div class="container" style="height: 603px; margin-left: 39px; margin-right: 38px; ">
    
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 69px; top: 19px; position: absolute; height: 603px; width: 470px; border-radius: 20px; overflow: hidden;" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Pickup/Location" Font-Bold="True" Font-Italic="False" Font-Size="Larger" CssClass="auto-style8" Font-Names="Arial" ForeColor="#3366CC"></asp:Label>
             <asp:Label ID="Label2" runat="server" Text="Full Name" Font-Names="Arial" CssClass="auto-style4" Font-Size="Medium"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="Address" Font-Names="Arial" CssClass="auto-style5" Font-Size="Medium"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text="Mobile Number" Font-Names="Arial" CssClass="auto-style6" Font-Size="Medium"></asp:Label>
             <asp:TextBox ID="TextBox3" runat="server" style="margin-bottom: 0px;" CssClass="auto-style3" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
            <asp:CheckBox ID="CheckBox1" runat="server" Text=" Save Address" CssClass="auto-style7" Font-Names="Arial" Font-Size="Medium" />
            <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 101px; top: 533px; position: absolute; width: 264px; height: 35px; background-color:#339966; border-radius: 20px;" Text="Save &amp; Continue" OnClick="Button1_Click" BorderStyle="None" ForeColor="White" />
           <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style1" BorderColor="#999999" BorderWidth="1px"></asp:TextBox>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/left-arrow.jpg" style="z-index: 1; left: 8px; top: 8px; position: absolute; height: 45px; width: 45px" />
        </asp:Panel>
    
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/istockphoto-1325240511-612x612.jpg" style="z-index: 1; left: 245px; top: 70px; position: absolute; width: 192px; height: 161px" />
    
    </div>
    </form>
</body>
</html>
