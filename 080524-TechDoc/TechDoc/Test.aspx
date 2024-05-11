
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 519px;
        }

        .rounded-button {
            border-radius: 20px;
            border: none;
            outline: none;
            position: relative; /* Add position relative */
        }

        .auto-style1 {
            position: absolute;
            top: 202px;
            left: 156px;
            z-index: 1;
            width: 163px;
            height: 161px;
        }

        .auto-style2 {
            position: absolute;
            top: 389px;
            left: 181px;
            z-index: 1;
            font-family: Arial;
            font-size: xx-large;
        }

        /* Rotating loading animation */
        .auto-style3 {
            border-left: 5px solid transparent;
            border-right: 5px solid transparent;
            border-top: 5px solid white;
            border-bottom: 5px solid transparent;
            position: absolute;
            bottom: 70px; /* Adjust position as needed */
            left: 205px; /* Adjust position to center */
            width: 50px;
            height: 50px;
            /* Blue color */
            border-radius: 50%;
            animation: rotateLoading 3s linear infinite; /* Adjust animation duration */
        }

        @keyframes rotateLoading {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
        .auto-style4 {
            position: absolute;
            top: 134px;
            left: 172px;
            z-index: 1;
            width: 130px;
            height: 31px;
            bottom: 438px;
            text-shadow:5px 9px 5px #333;
        }
    </style>
    <script>
        window.onload = function () {
            setTimeout(function () {
                window.location.href = '2-FrontFrame.aspx'; // Replace 'newPage.aspx' with the URL of the new page
            }, 1000); // Adjust the delay time in milliseconds (e.g., 5000 for 5 seconds)
        };
    </script>
</head>
<body style="height: 1033px; width: 937px">
    <form id="form1" runat="server">
        <div style="height: 945px; width: 916px; margin-left: 12px">
            <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 452px; top: 9px; position: absolute; height: 603px; width: 470px" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button" BackColor="#66CCFF">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style1" ImageUrl="~/Images/WhatsApp Image 2024-03-12 at 1.13.35 PM.jpeg" />
                <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Loading..." Font-Names="Baskerville Old Face" Font-Strikeout="False" Font-Bold="True"></asp:Label>
                <!-- Rotating loading animation -->
                <div class="auto-style3"></div>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Font-Names="Arial" Font-Size="XX-Large" ForeColor="White" Text="TechDoc" Font-Bold="True"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
