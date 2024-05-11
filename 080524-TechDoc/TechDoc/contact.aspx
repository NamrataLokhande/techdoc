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
            border-radius: 20px;
            border: none;
            outline: none;
            position: relative; /* Add position relative */
        }
         .auto-style1 {
            z-index: 1;
            left: 19px;
            top: 201px;
            position: absolute;
            width: 427px;
            height: 37px;
            
        }

        
        .auto-style2 {
            border-radius: 10px;
            z-index: 1;
            left: 99px;
            top: 423px;
            position: absolute;
            width: 264px;
            height: 35px;
        }

        
        .auto-style3 {
            position: absolute;
            top: 489px;
            left: 216px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 533px;
            left: 138px;
            z-index: 1;
            width: 34px;
            height: 31px;
            right: 298px;
        }
        .auto-style5 {
            position: absolute;
            top: 533px;
            left: 179px;
            z-index: 1;
            width: 197px;
            height: 27px;
        }
        .auto-style6 {
            position: absolute;
            top: 28px;
            left: 20px;
            z-index: 1;
            width: 433px;
            height: 126px;
            bottom: 449px;
        }
          .auto-style7 {
            z-index: 1;
            left: 21px;
            top: 269px;
            position: absolute;
            width: 427px;
            height: 37px;
            
        }
           .auto-style8 {
            z-index: 1;
            left: 20px;
            top: 336px;
            position: absolute;
            width: 427px;
            height: 37px;
            
        }

        
    </style>
    <script>
        
    </script>
</head>
<body style="height: 607px; width: 464px">
    <form id="form1" runat="server">
        <div class="container" style="height: 613px; width: 454px; margin-left: 12px">
            <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 0px; top: 9px; position: absolute; height: 603px; width: 470px" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button" BackColor="White">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" style="border-radius:10px;" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Placeholder="   Your Name" ></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style8" Placeholder="   Your Message" style="border-radius:10px;"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" BackColor="#339966" BorderStyle="None" CssClass="auto-style2" ForeColor="White" Text="SUBMIT" />
                <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="-OR-"></asp:Label>
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style4" ImageUrl="~/Images/call-removebg-preview.jpeg" />
                <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Larger" Text="111-222-3333"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style7" style="border-radius:10px;" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Placeholder="   Your Email" ></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style6" ImageUrl="~/Images/Contact us.jpeg" />
                &nbsp;</asp:Panel>
         </div>
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/left-arrow.jpg" style="z-index: 1; left: 8px; top: 16px; position: absolute; height: 49px; width: 50px" Height="45px" Width="45px" />
    </form>
</body>
</html>