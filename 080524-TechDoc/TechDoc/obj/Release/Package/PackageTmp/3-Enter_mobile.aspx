<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3-Enter_mobile.aspx.cs" Inherits="WebApplication1._1_Enter_mobile" %>

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

        .rounded-panel {
            border-radius: 20px; /* Adjust the value to change the roundness of the border */
            border: 1px solid #006666; /* Add border style and color */
            padding: 10px; /* Add padding to give some space inside the panel */
        }
        

        .auto-style1 {
            z-index: 1;
            left: 196px;
            top: 261px;
            position: absolute;
            width: 96px;
            font-size: larger;
        }
        .rounded-border {
    border-radius: 10px; /* Adjust the value to change the roundness of the border */
    border: 1px solid #006666; /* Add border style and color */
    padding: 5px; /* Add padding to give some space inside the textbox */
}
    
        

        .auto-style2 {
            z-index: 1;
            left: 100px;
            top: 476px;
            position: absolute;
            width: 176px;
            height: 23px;
        }
        .auto-style3 {
            z-index: 1;
            left: 97px;
            top: 346px;
            position: absolute;
        }
    .otp-text {
        color: #3366CC; /* Change the color to your desired color */

    }
        

        </style>
</head>
<body style="height: 604px; width: 485px">
    <form id="form1" runat="server">
        <div class="container" style="height: 607px; width: 472px; margin-left: 12px">
            <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 21px; top: 21px; position: absolute; height: 603px; width: 470px" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button">
    
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Larger" Text="Sign-in " ForeColor="#3366CC" CssClass="auto-style1"></asp:Label>
               <asp:TextBox ID="OTPTxt" runat="server" CssClass="rounded-border" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Placeholder="Enter your mobile number" style="z-index: 1; left: 64px; top: 397px; position: absolute; width: 346px; height: 36px" OnTextChanged="OTPTxt_TextChanged"></asp:TextBox>

                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="terms-link" Font-Names="Arial" Font-Size="Small" style="z-index: 1; left: 278px; top: 476px; position: absolute; right: 59px; text-decoration:none;">terms of services </asp:LinkButton>
                <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Small" Text="By signing in you agree to our" CssClass="auto-style2"></asp:Label>
                <asp:Button ID="getotp_btn" runat="server" BackColor="#339966" BorderStyle="None" CssClass="rounded-button" ForeColor="White" style="z-index: 1; left: 101px; top: 533px; position: absolute; width: 264px; height: 35px" Text="GET OTP" PostBackUrl="~/4-OTP_page.aspx" OnClick="Button1_Click" />
    
                <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Medium" CssClass="auto-style3">
                We will send you an <span class="otp-text">OTP</span> on this number
                </asp:Label>
                
                &nbsp;&nbsp;&nbsp;
                <br />
                 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Image ID="Image1" runat="server" Height="230px" ImageUrl="~/Images/young-man-enter-number-for-for-two-step-verification-8236908-6577592-ezgif.com-webp-to-png-converter.png" Width="259px" />
                
            </asp:Panel>
        
        </div>
    </form>
</body>
</html>
