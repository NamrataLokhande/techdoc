<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetpassword.aspx.cs" Inherits="TechDoc.forgetpassword" %>

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

        
        .auto-style1 {
            position: absolute;
            top: 212px;
            left: 68px;
            z-index: 1;
            width: 393px;
        }
        .auto-style2 {
            position: absolute;
            top: 234px;
            left: 68px;
            z-index: 1;
            width: 343px;
        }
        .auto-style4 {
            z-index: 1;
            left: 95px;
            top: 282px;
            position: absolute;
            width: 266px;
            height: 36px;
            border-radius:10px;
        }
        .auto-style6 {
            z-index: 1;
            left: 96px;
            top: 357px;
            position: absolute;
            width: 271px;
            height: 34px;
            border-radius:20px;
        }
        .auto-style777 {
            position: absolute;
            top: 8px;
            left: 7px;
            z-index: 1;
            width: 53px;
            height: 49px;
        }
        </style>
    
</head>
<body style="height: 608px; width: 470px">
    <form id="form1" runat="server">
        <div class="container" style="height: 607px; width: 453px; margin-left: 12px">
           
            <asp:Panel ID="Panel1" runat="server" style="z-index: 1;border-radius:20px; left: 0px; top: 9px; position: absolute; height: 603px; width: 470px" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button" >
                <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style777" ImageUrl="~/Images/left-arrow.jpg" OnClick="ImageButton3_Click" PostBackUrl="~/Email_login.aspx" Height="45px" Width="45px" />
                 <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text=" Enter the email address associate with your account " Font-Names="Arial"></asp:Label>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="and we'll send you a link to reset your password" Font-Names="Arial"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" BorderColor="#E1E1E1" BorderStyle="Solid" BorderWidth="1px" placeholder=" Enter your Email/Mobile" CssClass="auto-style4" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:Button ID="Forgetpassword_btn" runat="server" BackColor="#339966" BorderStyle="None" ForeColor="White" Text="continue" Font-Names="Arial" CssClass="auto-style6" OnClick="Forgetpassword_btn_Click" />
            </asp:Panel>
        </div>
    </form>

 

</body>
</html>