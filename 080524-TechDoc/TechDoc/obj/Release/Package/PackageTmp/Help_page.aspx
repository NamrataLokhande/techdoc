<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Help_page.aspx.cs" Inherits="TechDoc.Help_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
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
        

        .rounded-border {
    border-radius: 10px; /* Adjust the value to change the roundness of the border */
    border: 1px solid #006666; /* Add border style and color */
    padding: 5px; /* Add padding to give some space inside the textbox */
}
    
        

        .otp-text {
        color: #3366CC; /* Change the color to your desired color */

    }
        

        .auto-style1 {
            position: absolute;
            top: 330px;
            left: 150px;
            z-index: 1;
            width: 164px;
            height: 29px;
            border-radius:10px;
        }
        

        </style>
</head>
<body style="height: 1033px; width: 937px">
    <form id="form1" runat="server">
        <div style="height: 945px; width: 916px; margin-left: 12px">
            <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 452px; top: 9px; position: absolute; height: 603px; width: 470px" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button">
                &nbsp;&nbsp;&nbsp;
                <br />
                 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Image ID="Image1" runat="server" Height="230px" ImageUrl="~/Images/FAQ.png" Width="259px" />
                
                
                <asp:Button ID="Button1" runat="server" BackColor="#0066FF" BorderStyle="None" CssClass="auto-style1" Text="Contact us" ForeColor="White" />
                
                
            </asp:Panel>
        
        </div>
    </form>
</body>
</html>

