<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="14-Pick1.aspx.cs" Inherits="TechDoc.Pick1" %>



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
            height: 458px;
            width: 469px;
        }
        .auto-style3 {
            z-index: 1;
            left: 38px;
            top: 187px;
            position: absolute;
        }
        .auto-style4 {
            z-index: 1;
            left: 41px;
            top: 232px;
            position: absolute;
        }
        .auto-style5 {
            z-index: 1;
            left: 35px;
            top: 276px;
            position: absolute;
            height: 50px;
            width: 80px;
            border-radius: 20px
        }
        .auto-style6 {
            z-index: 1;
            left: 140px;
            top: 277px;
            position: absolute;
            height: 50px;
            width: 80px;
            border-radius: 20px
        }
        .auto-style7 {
            z-index: 1;
            left: 251px;
            top: 277px;
            position: absolute;
            height: 50px;
            width: 80px;
            border-radius: 20px
        }
        .auto-style8 {
            z-index: 1;
            left: 361px;
            top: 279px;
            position: absolute;
            height: 50px;
            width: 80px;
            border-radius: 20px
        }
        .auto-style9 {
            z-index: 1;
            left: 33px;
            top: 372px;
            position: absolute;
            height: 21px;
            width: 159px;
            border-radius: 20px
        }
        .auto-style10 {
            z-index: 1;
            left: 23px;
            top: 420px;
            position: absolute;
            width: 130px;
            height: 48px;
            border-radius: 20px
        }
        .auto-style11 {
            z-index: 1;
            left: 176px;
            top: 418px;
            position: absolute;
            height: 48px;
            width: 124px;
            border-radius: 20px
        }
        .auto-style12 {
            z-index: 1;
            left: 330px;
            top: 418px;
            position: absolute;
            height: 48px;
            width: 124px;
            border-radius: 20px
        }
        .auto-style13 {
            z-index: 1;
            left: 101px;
            top: 533px;
            position: absolute;
            width: 264px;
            height: 35px;
            border-radius: 20px; /* Adding rounded corners */
        }
        .auto-style14 {
            z-index: 1;
            left: 89px;
            top: 16px;
            position: absolute;
            height: 164px;
            width: 271px;
        }
        .selected {
            background-color: lightblue; /* Change to your desired color */
        }
    </style>

    <script type="text/javascript">
        function selectButton(buttonId) {
            var button = document.getElementById(buttonId);
            if (button.classList.contains("selected")) {
                button.classList.remove("selected");
            } else {
                button.classList.add("selected");
            }
            return false; // Prevent default button click behavior
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 0px; top: 9px; position: absolute; height: 603px; width: 470px; border-radius: 20px; overflow: hidden;" BorderWidth="1px" CssClass="rounded-button" Font-Bold="True" Font-Size="Medium" BorderStyle="Solid">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="When should the Technician arrive?" Font-Size="Large" Font-Names="Arial"></asp:Label>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Font-Bold="False" Text="Your service will take around 1hr and 40 mins" Font-Names="Arial" Visible="False"></asp:Label>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Text="Mon" Font-Names="Arial" OnClientClick="return selectButton(this.id)" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Text="Tue" Font-Names="Arial" OnClientClick="return selectButton(this.id)" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" CssClass="auto-style7" Text="Wed" Font-Names="Arial" OnClientClick="return selectButton(this.id)" OnClick="Button3_Click" />
                <asp:Button ID="Button4" runat="server" CssClass="auto-style8" Text="Thurs" Font-Names="Arial" OnClientClick="return selectButton(this.id)" OnClick="Button4_Click1" />
                <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Font-Bold="True" Font-Size="Large" Text="Select the Time" Font-Names="Arial"></asp:Label>
                <asp:Button ID="Button5" runat="server" CssClass="auto-style10" Text="10:00 AM - 1:00 PM" Font-Names="Arial" Font-Size="X-Small" OnClientClick="return selectButton(this.id)" OnClick="Button5_Click1" />
                <asp:Button ID="Button6" runat="server" CssClass="auto-style11" Text="1:00 PM - 5:00 PM" Font-Names="Arial" Font-Size="X-Small" OnClientClick="return selectButton(this.id)" OnClick="Button6_Click" />
                <asp:Button ID="Button7" runat="server" CssClass="auto-style12" Text="5:00 PM - 7:00 PM" Font-Names="Arial" Font-Size="X-Small" OnClientClick="return selectButton(this.id)" OnClick="Button7_Click" />
                <asp:Button ID="Button8" runat="server" CssClass="auto-style13" Text="Proceed to checkout" BackColor="#339966" OnClick="Button8_Click" BorderStyle="None" ForeColor="White" Font-Names="Arial" />
                <asp:Image ID="Image1" runat="server" CssClass="auto-style14" ImageUrl="~/Images/rere.jpg" />

             
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/left-arrow.jpg" style="z-index: 1; left: 8px; top: 8px; position: absolute; height: 45px; width: 45px" PostBackUrl="~/16-Manage_adddress.aspx" />

            </asp:Panel>
        </div>
    </form>
</body>
</html>
