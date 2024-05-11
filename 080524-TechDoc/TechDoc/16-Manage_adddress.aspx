<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="16-Manage_adddress.aspx.cs" Inherits="WebApplication1.Manage_adddress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>

        @media (max-width: 768px) {
            .panel-content {
                padding: 10px; /* Adjust padding for smaller screens */
            }
        }

        .rounded-button {
            border-radius: 20px;
        }
        .rounded-border {
            border-radius: 20px;
            border-style: solid;
            border-width: 1px;
        }
        .link-button {
            text-decoration: none; /* Remove underline */
        }
        .auto-style1 {
            z-index: 1;
            left: 15px;
            top: 408px;
            position: absolute;
            width: 432px;
            height: 37px;
            
        }
        .auto-style2 {
            z-index: 1;
            left: 15px;
            top: 347px;
            position: absolute;
            width: 432px;
            height: 37px;
    
        }
        .auto-style3 {
            z-index: 1;
            left: 16px;
            top: 213px;
            position: absolute;
        }
        .auto-style4 {
            z-index: 1;
            left: 15px;
            top: 239px;
            position: absolute;
            width: 305px;
        }
        .auto-style5 {
            z-index: 1;
            left: 17px;
            top: 51px;
            position: absolute;
            height: 151px;
            width: 439px;
        }
        .auto-style6 {
            z-index: 1;
            left: 16px;
            top: 286px;
            position: absolute;
            width: 193px;
            height: 37px;
        }
        .auto-style7 {
            z-index: 1;
            left: 235px;
            top: 286px;
            position: absolute;
            width: 213px;
            height: 37px;
        }
        .auto-style8 {
            z-index: 1;
            left: 15px;
            top: 472px;
            position: absolute;
            width: 432px;
            height: 37px;
        }
    </style>
</head>
<body style="height: 638px; width: 498px">
    <form id="form1" runat="server">
    <div class="container" style="height: 643px; width: 489px; margin-left: 12px">
    
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 30px; top: 17px; position: absolute; height: 628px; width: 470px" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button">
    
                 <asp:TextBox ID="TextBox1" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" style="border-radius:10px; " Placeholder="   Pincode" CssClass="auto-style6"  MaxLength="6"  onkeypress="validatePincode(this)" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" style="border-radius:10px; " Placeholder="City" CssClass="auto-style7" onkeypress="validateCity(this)" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" style="border-radius:10px; " Placeholder="House No/Apartment Name/ Locally" CssClass="auto-style2" onblur="validateapartment(this)" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
             <asp:TextBox ID="TextBox4" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" style="border-radius:10px; " Placeholder="   Street/Landmark" CssClass="auto-style1" onblur="validatelandmark(this)" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                 <asp:TextBox ID="TextBox5" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" style="border-radius:10px; " Placeholder="   Add Alternate Mobile number" CssClass="auto-style8"  onblur="validatemobile(this)" OnTextChanged="TextBox5_TextChanged" ></asp:TextBox>
                 
                 <asp:Button ID="Button1" runat="server" BackColor="#339966" BorderStyle="None" CssClass="rounded-button" ForeColor="White" style="z-index: 1; left: 248px; top: 553px; position: absolute; width: 160px; height: 35px" Text="SAVE" OnClick="Button1_Click" />
                 <asp:Button ID="Button2" runat="server" BackColor="White" BorderStyle="Solid" CssClass="rounded-button" ForeColor="#44775D" style="z-index: 1; left: 57px; top: 552px; position: absolute; width: 160px; height: 35px" Text="DISCARD" BorderColor="#339966" BorderWidth="1px" OnClick="Button2_Click" />
                
                 <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/left-arrow.jpg" style="z-index: 1; left: 7px; top: 6px; position: absolute; height: 45px; width: 45px" PostBackUrl="~/Complaintissue.aspx" />
                
                 <br />
                 <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Font-Bold="True" Font-Names="Arial" Text="Add Service Address"></asp:Label>
                 <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Font-Names="Arial" Font-Size="Small" Text="Our Engineer will arrive at this location to provide service"></asp:Label>
                 &nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style5" ImageUrl="~/Images/google_map.png" />
                 <asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox7_TextChanged" style="z-index: 1; left: 212px; top: 582px; position: absolute; width: 103px" Visible="False"></asp:TextBox>
                 <asp:TextBox ID="TextBox8" runat="server" OnTextChanged="TextBox8_TextChanged" style="z-index: 1; left: 339px; top: 583px; position: absolute; width: 97px; height: 25px;" Visible="False"></asp:TextBox>
                
            </asp:Panel>
        
        </div>
        <script>
            function validatePincode(textBox) {
                var pincode = textBox.value.trim(); // Trim any leading or trailing whitespace

                // Check if the pincode consists only of digits
                if (!/^\d+$/.test(pincode)) {
                    if (pincode.length !== 0) { // Check if pincode is not empty
                        alert("Please enter a pincode containing only digits.");
                    }
                    textBox.value = ''; // Clear the invalid input
                }
            }

            function validateCity(textBox) {
                var input = textBox.value;
                var isValid = /^[a-zA-Z\s]*$/.test(input);

                if (!isValid) {
                    alert("Please enter a valid city without numbers only allow characters.");
                    textBox.value = ''; // Clear the invalid input
                }
            }
          /*  function validatelandmark(textBox) {
                var inputValue = textBox.value.trim();

                if (inputValue === "") {
                    alert("This field is mandatory. Please enter a value.");
                    textBox.value = '';
                }
            }
            function validateapartment(textBox) {
                var inputValue = textBox.value.trim();

                if (inputValue === "") {
                    alert("This field is mandatory. Please enter a value.");
                    textBox.value = '';
                }
            }*/

            function validatemobile(textBox) {
                var mobile = textBox.value;
                var isValid = /^(?:\+?\d{1,3})?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$/.test(mobile);

                if (!isValid) {
                    alert("Please enter a valid mobile number");
                    textBox.value = ''; // Clear the invalid input
                }
            }

        </script>
        <asp:TextBox ID="TextBox6" runat="server" OnTextChanged="TextBox6_TextChanged" style="z-index: 1; left: 566px; top: 591px; position: absolute; width: 80px" Visible="False"></asp:TextBox>
    </form>
</body>
</html>