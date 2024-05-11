<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create_vie_mail.aspx.cs" Inherits="TechDoc.Create_vie_mail" %>

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
            position: absolute;
            top: 8px;
            left: 165px;
            z-index: 1;
            bottom: 541px;
            width: 178px;
            margin-right: 46px;
        }
        
        
        .auto-style2 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius: 20px;
            outline: none;
            position: absolute; /* Add position relative */
            z-index: 1;
            left: 107px;
            top: 490px;
            width: 264px;
            height: 35px;
        }
              .auto-style16 {
             position: absolute;
            top: 29%;
            left: 51%;
            transform: translate(-50%, -50%);
            text-align: center;
            
            padding: 10px; /* Add padding */
            z-index: 9999;
            width: 270px;
            height: 8px;
            margin-top: 18px;
            color:RED;
        }     
        .auto-style17 {
            position: absolute;
            top: 18%;
            left: 51%;
            transform: translate(-50%, -50%);
            text-align: center;
            padding: 10px;
/* Add padding */z-index: 9999;
            width: 270px;
            height: 8px;
            margin-top: 18px;
            color: RED;
        }
        .auto-style18 {
            position: absolute;
            top: 51%;
            left: 51%;
            transform: translate(-50%, -50%);
            text-align: center;
            padding: 10px;
/* Add padding */z-index: 9999;
            width: 270px;
            height: 8px;
            margin-top: 18px;
            color: RED;
        }
        .auto-style19 {
            position: absolute;
            top: 63%;
            left: 51%;
            transform: translate(-50%, -50%);
            text-align: center;
            padding: 10px;
/* Add padding */z-index: 9999;
            width: 270px;
            height: 8px;
            margin-top: 18px;
            color: RED;
        }
        .auto-style20 {
            position: absolute;
            top: 40%;
            left: 51%;
            transform: translate(-50%, -50%);
            text-align: center;
            padding: 10px;
/* Add padding */z-index: 9999;
            width: 270px;
            height: 8px;
            margin-top: 18px;
            color: RED;
        }
            .auto-style777 {
            position: absolute;
            top: 8px;
            left: 7px;
            z-index: 1;
            width: 45px;
            height: 45px;
        }
            .txtbox-style1 {
            z-index: 1;
            left: 15px;
            top: 408px;
            position: absolute;
            width: 432px;
            height: 37px;
         }
             
         

    </style>
      
          
    
<script type="text/javascript">
    function isNumber(evt) {
        var charCode = (evt.which) ? evt.which : event.keyCode;
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            return false;
        }
        return true;
    }

    function maxLengthCheck(object) {
        if (object.value.length > object.maxLength)
            object.value = object.value.slice(0, object.maxLength);
    }

    /*function validatePassword() {
        var password = document.getElementById('password_txt').value;
        var confirmPassword = document.getElementById('conformpass_txt').value;
        var hasSpecialChar = /[!@#$%^&*(),.?":{}|<>]/.test(password);
        var hasUpperCase = /[A-Z]/.test(password);
        var hasLowerCase = /[a-z]/.test(password);
        var hasNumber = /\d/.test(password);

        if (password !== confirmPassword) {
            alert('Passwords do not match.');
        } else if (password.length < 8) {
            alert('Password must be at least 8 characters long.');
        } else if (!hasSpecialChar || !hasUpperCase || !hasLowerCase || !hasNumber) {
            alert('Password must contain at least one special character, one uppercase letter, one lowercase letter, and one number.');
        } else {
            // Password meets all requirements
        }
    }*/
</script>


</head>
<body style="height: 611px; width: 468px"> 
    <form id="form1" runat="server">
        <div class="container" style="height: 609px; width: 459px; margin-left: 12px">
              <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 0px; top: 9px; position: absolute; height: 603px; width: 470px" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button">

                  <asp:TextBox ID="fullname_txt" runat="server" CssClass="txtbox-style1" style="z-index: 2; left: 26px; top: 81px; position: absolute; height: 37px; width: 423px; right: 15px;border-radius:10px;" BorderColor="#B4B4B4" BorderStyle="Solid" BorderWidth="1px"  OnTextChanged="fullname_txt_TextChanged" placeholder=" Full Name" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="fullname_txt_RequiredFieldValidator" runat="server" CssClass="auto-style17" ControlToValidate="fullname_txt" ErrorMessage="Full Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="fullname_txt_RegularExpressionValidator" runat="server" CssClass="auto-style17" ControlToValidate="fullname_txt" ErrorMessage="Please enter only characters." ValidationExpression="[a-zA-Z\s]+"></asp:RegularExpressionValidator>



                  <asp:TextBox ID="email_txt" runat="server" CssClass="txtbox-style1" style="z-index: 3; left: 25px; top: 147px; position: absolute; height: 37px; width: 423px; right: 16px;border-radius:10px;" BorderColor="#B4B4B4" BorderStyle="Solid" BorderWidth="1px" placeholder=" Email" TabIndex="1"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="EmailValidator" runat="server" CssClass="auto-style16" ControlToValidate="email_txt" ErrorMessage="Please enter a valid email address. *" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   <asp:RequiredFieldValidator ID="email_txt_RequiredFieldValidator" runat="server" CssClass="auto-style16" ControlToValidate="email_txt" ErrorMessage="Email is required " ForeColor="Red"></asp:RequiredFieldValidator>
                 


                  <asp:TextBox ID="mobile_txt" runat="server" CssClass="txtbox-style1" style="z-index: 4; left: 25px; top: 212px; position: absolute; height: 37px; width: 423px; right: 16px;border-radius:10px;" BorderColor="#B4B4B4" BorderStyle="Solid" BorderWidth="1px" placeholder=" Mobile"  TabIndex="2" onkeypress="return isNumber(event)" oninput="maxLengthCheck(this)" maxlength="10"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="MobileNumberValidator" runat="server" ControlToValidate="mobile_txt" CssClass="auto-style20" ErrorMessage="Please enter a valid 10-digit mobile number. *" ValidationExpression="^(?:\+91|0)?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="auto-style20" ControlToValidate="mobile_txt" ErrorMessage="Mobile Number is required " ForeColor="Red"></asp:RequiredFieldValidator>
                  

                  <asp:TextBox ID="password_txt" runat="server" BorderColor="#B4B4B4" BorderStyle="Solid" BorderWidth="1px" CssClass="txtbox-style1" style="z-index: 5; left: 25px; top: 277px; position: absolute; height: 37px; width: 423px; right: 16px;border-radius:10px;" TextMode="Password" placeholder=" Password"  TabIndex="3" onkeyup="validatePassword()"></asp:TextBox>
                   <asp:RequiredFieldValidator runat="server" ControlToValidate="password_txt" CssClass="auto-style18" ErrorMessage="Password is required." ForeColor="Red" Display="Dynamic"> </asp:RequiredFieldValidator>
                  

                <asp:TextBox ID="conformpass_txt" runat="server" CssClass="txtbox-style1" style="z-index: 6; left: 24px; top: 344px; position: absolute; height: 37px; width: 423px; right: 17px; margin-bottom: 0px;border-radius:10px;" BorderColor="#B4B4B4" BorderStyle="Solid" BorderWidth="1px" OnTextChanged="conformpass_txt_TextChanged"  placeholder=" Confirm Password" TextMode="Password"  TabIndex="4" ></asp:TextBox>
                   <asp:CompareValidator runat="server" CssClass="auto-style19" ControlToCompare="password_txt" ControlToValidate="conformpass_txt" ErrorMessage="Passwords do not match." ForeColor="Red" Display="Dynamic"> </asp:CompareValidator>
                 

                  <asp:TextBox ID="address_txt" runat="server" BorderColor="#B4B4B4" BorderStyle="Solid" BorderWidth="1px" CssClass="txtbox-style1" style="z-index: 7; left: 24px; top: 412px; position: absolute; height: 37px; width: 423px; right: 17px;border-radius:10px;" OnTextChanged="address_txt_TextChanged" placeholder=" Address" TabIndex="5"></asp:TextBox>
                
                
                  <asp:Button ID="conform_btn" runat="server" BackColor="#339966" BorderStyle="None" CssClass="auto-style2" ForeColor="White" Text="Confirm" OnClick="conform_btn_Click" />
                  
                  <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Names="Arial" Font-Size="Larger" ForeColor="#3366CC" Text="Create Account"></asp:Label>
                  <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style777" ImageUrl="/Images/left-arrow.jpg" PostBackUrl="/Email_login.aspx" OnClientClick="redirectToPage();" />
              </asp:Panel>
        </div>
    </form>
 
  

</body>
</html>

