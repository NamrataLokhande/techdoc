<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8-logout.aspx.cs" Inherits="WebApplication1._1_logout" %>

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

        .auto-style1 {
            z-index: 1;
            left: 118px;
            top: 378px;
            position: absolute;
        }

    </style>
</head>
<body style="height: 609px; width: 490px">
    <form id="form1" runat="server">
    <div class="container" style="height: 612px; width: 485px; margin-left: 12px">
    
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 19px; top: 17px; position: absolute; height: 603px; width: 470px" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button">
                 <asp:Button ID="Logout_btn" runat="server" BackColor="#339966" BorderStyle="None" CssClass="rounded-button" ForeColor="White" style="z-index: 1; left: 149px; top: 452px; position: absolute; width: 175px; height: 35px" Text="LOG OUT" OnClientClick="return confirm('Are you sure you want to exit the application?');" OnClick="Button1_Click1" />
                 <asp:Button ID="Cancel_btn" runat="server" BackColor="White" BorderStyle="Solid" CssClass="rounded-button" ForeColor="#339966" style="z-index: 1; left: 148px; top: 518px; position: absolute; width: 175px; height: 35px" Text="CANCEL" BorderColor="#339966" BorderWidth="1px" OnClick="Button2_Click" />
    
                 <asp:Label ID="Label1" runat="server" Text="Are you sure you want to logout of TecDoc?" Font-Names="Arial" Font-Size="Small" CssClass="auto-style1"></asp:Label>
                
                 &nbsp;&nbsp;&nbsp;
                 <br />
                 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<asp:Image ID="Image1" runat="server" Height="331px" ImageUrl="~/Images/signout-ezgif.com-webp-to-png-converter.png" Width="446px" />
                
            </asp:Panel>
        
        </div>
    </form>
</body>
</html>
