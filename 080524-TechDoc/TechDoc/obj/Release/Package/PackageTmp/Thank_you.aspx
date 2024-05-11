<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Thank_you.aspx.cs" Inherits="TechDoc.Thank_you" %>

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
            position: absolute;
            top: 50px;
            left: 134px;
            z-index: 1;
            width: 200px; /* Adjust the width as needed */;
            height: 200px; /* Adjust the height as needed */;
            border-radius: 50%; /* Make the image round */
            overflow: hidden; /* Hide overflow to ensure the image stays round */
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease-in-out;
        }

        .auto-style2 {
            position: absolute;
            top: 326px;
            left: 103px;
            z-index: 1;
            width: 336px;
            height: 33px;
        }

        .auto-style3 {
            position: absolute;
            top: 390px;
            left: 123px;
            z-index: 1;
            width: 244px;
            height: 31px;
        }

        .auto-style4 {
            position: absolute;
            top: 427px;
            left: 131px;
            z-index: 1;
            width: 259px;
            height: 31px;
        }
        
    </style>
</head>
<body style="height: 608px; width: 465px">
    <form id="form1" runat="server">
    <div class="container" style="height: 616px; width: 451px; margin-left: 12px">
    
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 0px; top: 9px; position: absolute; height: 603px; width: 470px" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button">
            <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style1" ImageUrl="~/Images/WhatsApp Image 2024-03-12 at 1.13.35 PM.jpeg" />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Font-Bold="True" Font-Italic="True" Font-Names="Arial" Font-Size="Larger" ForeColor="#3366CC" Text="Thank you for Contacting us!"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="We have received your message " Font-Names="Arial"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="we'll reach you out immediately" Font-Names="Arial"></asp:Label>
            


            <asp:Button ID="Button1" runat="server" BackColor="#339966" ForeColor="White" CssClass="rounded-button" style="z-index: 1; left: 103px; top: 533px; position: absolute; width: 264px; height: 35px" Text="Go back to Home page" PostBackUrl="~/6-Personal_details.aspx" />
            


        </asp:Panel>
    
        `</div>
    </form>
</body>
</html>
