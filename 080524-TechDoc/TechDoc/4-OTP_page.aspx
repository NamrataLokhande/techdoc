<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4-OTP_page.aspx.cs" Inherits="WebApplication1._1_OTP_page" %>

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
       
        .link-button {
            text-decoration: none; /* Remove underline */
        }
        .rounded-border {
            border-radius: 10px;
            border-style: solid;
            border-width: 1px;
            padding: 5px; /* Add padding to give some space inside the textbox */
        }

        .auto-style1 {
            z-index: 1;
            left: 85px;
            top: 348px;
            position: absolute;
        }
        .auto-style2 {
            z-index: 1;
            left: 181px;
            top: 281px;
            position: absolute;
            width: 132px;
        }
        .bold-number {
            font-weight: bold;
        }
        .auto-style3 {
            text-decoration: none;
            z-index: 1;
            left: 116px;
            top: 467px;
            position: absolute;
            width: 104px;
        }
        .auto-style4 {
            text-decoration: none;
            z-index: 1;
            left: 237px;
            top: 467px;
            position: absolute;
        }
        .auto-style5 {
            height: 613px;
            width: 489px;
        }
        .auto-style777 {
            position: absolute;
            top: 8px;
            left: 8px;
            z-index: 1;
            width: 46px;
            height: 41px;
            right: 417px;
            margin-top: 0px;
        }

    </style>
</head>
<body style="height: 617px; width: 500px">
    <form id="form1" runat="server" onsubmit="return validateOTP()">
        <div class="container" style="margin-left: 12px" class="auto-style5">
            
                 
            <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 19px; top: 19px; position: absolute; height: 603px; width: 470px" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button">
                 <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style777" ImageUrl="~/Images/left-arrow.jpg" OnClick="ImageButton3_Click" PostBackUrl="~/forgetpassword.aspx" Height="45px" Width="45px" />
              

                <asp:Label ID="Label1" runat="server" Text="An OTP has been sent to your mobile number" Font-Names="Arial" Font-Size="Medium" CssClass="auto-style1"></asp:Label>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Larger" Text="Enter OTP " ForeColor="#3366CC" CssClass="auto-style2"></asp:Label>

                <!-- Four text fields for entering OTP digits -->
                <asp:TextBox ID="otpTxt1" runat="server" CssClass="rounded-border otp-box bold-number" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" style="z-index: 1; left: 128px; top: 397px; position: absolute; width: 40px; height: 36px; text-align: center;" MaxLength="1" onkeypress="return isNumber(event)" onkeyup="moveToNext(this, 'otpTxt2', 'otpTxt1', true)"></asp:TextBox>
                <asp:TextBox ID="otpTxt2" runat="server" CssClass="rounded-border otp-box bold-number" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" style="z-index: 1; left: 184px; top: 397px; position: absolute; width: 40px; height: 36px; text-align: center;" MaxLength="1" onkeypress="return isNumber(event)" onkeyup="moveToNext(this, 'otpTxt3', 'otpTxt1', true)" OnTextChanged="otpTxt2_TextChanged"></asp:TextBox>
                <asp:TextBox ID="otpTxt3" runat="server" CssClass="rounded-border otp-box bold-number" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" style="z-index: 1; left: 239px; top: 397px; position: absolute; width: 40px; height: 36px; text-align: center;" MaxLength="1" onkeypress="return isNumber(event)" onkeyup="moveToNext(this, 'otpTxt4', 'otpTxt2', true)"></asp:TextBox>
                <asp:TextBox ID="otpTxt4" runat="server" CssClass="rounded-border otp-box bold-number" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" style="z-index: 1; left: 295px; top: 397px; position: absolute; width: 40px; height: 36px; text-align: center;" MaxLength="1" onkeypress="return isNumber(event)" onkeyup="moveToNext(this, '', 'otpTxt3', true)"></asp:TextBox>

                <!-- Verify Button and Resend OTP, Receive OTP via Call links -->
                <asp:Button ID="verify_btn" runat="server" BackColor="#339966" BorderStyle="None" CssClass="rounded-button" ForeColor="White" style="z-index: 1; left: 105px; top: 533px; position: absolute; width: 264px; height: 43px;" Text="VERIFY" PostBackUrl="~/Email_login.aspx" OnClick="Button1_Click" />
                <asp:LinkButton ID="Resend_OTPLinkbtn" runat="server" CssClass="auto-style3" Font-Names="Arial" Font-Size="Small" OnClick="Resend_OTPLinkbtn_Click">Resend OTP</asp:LinkButton>
                <asp:LinkButton ID="Receive_OTPLinkbtn" runat="server" CssClass="auto-style4" Font-Names="Arial" Font-Size="Small" OnClick="Receive_OTPLinkbtn_Click">Receive OTP via Call</asp:LinkButton>
            
          

            </asp:Panel>
        </div>
    </form>

    <script>
        function isNumber(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }

        function moveToNext(currentTextBox, nextTextBoxId, prevTextBoxId, Backspace) {
            var maxLength = parseInt(currentTextBox.maxLength);
            var currentValueLength = currentTextBox.value.length;

            if (Backspace && currentValueLength === 0 && prevTextBoxId !== '') {
                document.getElementById(prevTextBoxId).focus();
                return;
            }

            if (currentValueLength >= maxLength && nextTextBoxId !== '') {
                document.getElementById(nextTextBoxId).focus();
            } else if (currentValueLength === 0 && prevTextBoxId !== '') {
                document.getElementById(prevTextBoxId).focus();
            }
        }

    
    </script>
</body>
</html>
