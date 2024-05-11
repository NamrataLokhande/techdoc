<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2-FrontFrame.aspx.cs" Inherits="WebApplication1._1_FrontFrame" %>

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

        #form1 {
            height: 519px;
        }

        .rounded-button {
        border-radius: 20px; /* Adjust the value to change the roundness of the border */
        border: none; /* Remove default border */
        outline: none; /* Remove focus outline */
    }

        .auto-style2 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius: 20px; /* Adjust the value to change the roundness of the border */;
/* Remove default border */outline: none;
            z-index: 1;
            left: 101px;
            top: 533px;
            position: absolute;
            width: 264px;
            height: 35px;
        }
        
    </style>
</head>
<body style="height: 619px; width: 499px">
    <form id="form1" runat="server">
    <div class="container" style="height: 615px; width: 482px; margin-left: 12px">
    
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 23px; top: 17px; position: absolute; height: 603px; width: 470px" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button">
            <asp:Image ID="Image1" runat="server" style="z-index: 1; left: 78px; top: 67px; position: absolute; height: 263px; width: 303px; margin-bottom: 4px;" ImageUrl="~/Images/laptop_repair-removebg-preview.png" />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Larger" style="z-index: 1; left: 67px; top: 360px; position: absolute; width: 361px; height: 28px" Text="Add extra years to your devices " ForeColor="#3366CC"></asp:Label>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 99px; top: 404px; position: absolute; width: 334px" Text="Extended manufacturer warrenty" Font-Names="Arial" Font-Size="Medium"></asp:Label>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/checkmark-png-25953 - Copy.png" style="z-index: 1; left: 76px; top: 407px; position: absolute; height: 16px" />
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/checkmark-png-25953 - Copy.png" style="z-index: 1; left: 76px; top: 428px; position: absolute; height: 16px" />
            <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/checkmark-png-25953 - Copy.png" style="z-index: 1; left: 76px; top: 447px; position: absolute; height: 16px" />

            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 99px; top: 426px; position: absolute; width: 203px" Text="Damage protection plans" Font-Names="Arial" Font-Size="Medium"></asp:Label>
            <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 99px; top: 447px; position: absolute; width: 187px; right: 184px" Text="No questions asked policy" Font-Names="Arial" Font-Size="Medium"></asp:Label>
            <asp:Button ID="signIn_btn" runat="server" BackColor="#339966" ForeColor="White" CssClass="auto-style2" Text="SIGN IN" PostBackUrl="~/Email_login.aspx" />


        </asp:Panel>
    
        `</div>
    </form>
</body>
</html>
