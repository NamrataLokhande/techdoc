<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Email_login.aspx.cs" Inherits="TechDoc.Email_login" %>

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

        #toggleButton {
            border-style: none;
            z-index: 1;
            left: 368px;
            top: 191px;
            position: absolute;
            height: 29px;
            width: 32px;
            background-color: transparent;
            background-size: contain;
            cursor: pointer;
            background-repeat: no-repeat; /* Prevent background image from repeating */
        }
        .auto-style1 {
            z-index: 1;
            left: 111px;
            top: 60px;
            position: absolute;
            width: 303px;
            height: 24px;
        }
        .auto-style3 {
            z-index: 1;
            left: 247px;
            top: 241px;
            position: absolute;
        }
        .auto-style4 {
            z-index: 1;
            left: 96px;
            top: 116px;
            position: absolute;
            width: 266px;
            height: 36px;
            border-radius:10px;
        }
        .auto-style5 {
            z-index: 1;
            left: 96px;
            top: 175px;
            position: absolute;
            width: 266px;
            height: 36px;
            border-radius:10px;
        }
        .auto-style6 {
            z-index: 1;
            left: 102px;
            top: 294px;
            position: absolute;
            width: 271px;
            height: 34px;
            border-radius:20px;
            bottom: 125px;
        }
        .auto-style7 {
            z-index: 1;
            left: 99px;
            top: 240px;
            position: absolute;
            width: 124px;
        }
        .auto-style8 {
            z-index: 1;
            left: 214px;
            top: 343px;
            position: absolute;
        }
        .auto-style10 {
            z-index: 1;
            left: 101px;
            top: 440px;
            position: absolute;
            width: 277px;
            height: 38px;
        }
        .auto-style11 {
            z-index: 1;
            left: 86px;
            top: 490px;
            position: absolute;
        }
        .auto-style12 {
            z-index: 1;
            left: 315px;
            top: 490px;
            position: absolute;
            height: 12px;
        }
        .auto-style13 {
            z-index: 1;
            left: 150px;
            top: 512px;
            position: absolute;
        }
        .auto-style14 {
            z-index: 1;
            left: 209px;
            top: 512px;
            position: absolute;
        }
        .auto-style10:hover{
            cursor:pointer;
        }
             .auto-style15 {
            z-index: 1;
            left: 103px;
            top: 395px;
            position: absolute;
            width: 271px;
            height: 34px;
            border-radius:20px;
            bottom: 53px;
        
        }
             auto-style777{
                 top:100px;
             }
        .auto-style16 {
            height: 612px;
            width: 455px;
        }
        .auto-style17 {
            position: absolute;
            top: 154px;
            left: 185px;
            z-index: 1;
        }
        .auto-style777 {
            position: absolute;
            top: 8px;
            left: 8px;
            z-index: 1;
            width: 53px;
            height: 49px;
        }
    </style>
    
</head>
<body style="height: 607px; width: 467px">
    <form id="form1" runat="server">
        <div class="container" style="margin-left: 12px" class="auto-style16">
            <asp:Panel ID="Panel1" runat="server" style="z-index: 1;border-radius:20px; left: 0px; top: 9px; position: absolute; height: 603px; width: 470px" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button" BackColor="white">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" style="margin-bottom: 9px" Text="Login into your Account" Font-Names="Arial" CssClass="auto-style1" ForeColor="#3366CC"></asp:Label>
          
                  <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Arial" Font-Size="Small" CssClass="auto-style3" PostBackUrl="~/Create_vie_mail.aspx" Visible="False">Create New account</asp:LinkButton>
                 
                

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="username_txt" CssClass="auto-style17" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:TextBox ID="username_txt" runat="server" BorderColor="#E1E1E1" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style4" OnTextChanged="username_txt_TextChanged" placeholder="   Enter your Email" TextMode="Email"></asp:TextBox>

                <asp:TextBox ID="password_txt" runat="server" BorderColor="#E1E1E1" BorderStyle="Solid" placeholder="     Enter Password" TextMode="Password" CssClass="auto-style5" BorderWidth="1px" OnTextChanged="password_txt_TextChanged"></asp:TextBox>
                &nbsp;<asp:Button ID="continue_btn" runat="server" BackColor="#339966" BorderStyle="None" ForeColor="White" Text="Log In" Font-Names="Arial" CssClass="auto-style6" OnClick="continue_btn_Click"  />
            <asp:LinkButton ID="LinkButton2" runat="server" Font-Names="Arial" Font-Size="Small" CssClass="auto-style7" PostBackUrl="~/forgetpassword.aspx" OnClick="LinkButton2_Click">Forgot Password</asp:LinkButton>
            <asp:Label ID="Label3" runat="server" Text="-OR-" Font-Names="Arial" Font-Size="Small" CssClass="auto-style8" Visible="False"></asp:Label>
            <asp:Button ID="Button3" runat="server" Text="Login with Gmail" BackColor="White" BorderColor="#E1E1E1" BorderStyle="Solid" CssClass="auto-style10" OnClick="Button3_Click" Visible="False" />
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Smaller" CssClass="auto-style11" Font-Names="Arial">By continuing, you agree to TechDoc&#39;s </asp:HyperLink>
            <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Smaller" CssClass="auto-style12" Font-Names="Arial">Terms of use</asp:LinkButton>
            <asp:Label ID="Label4" runat="server" Font-Size="Smaller" Text="Read our " CssClass="auto-style13" Font-Names="Arial"></asp:Label>
            <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Smaller" CssClass="auto-style14" Font-Names="Arial">Privacy Policy</asp:LinkButton>
            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style777" ImageUrl="~/Images/left-arrow.jpg" PostBackUrl="~/2-FrontFrame.aspx" OnClick="ImageButton1_Click" Visible="False" Height="45px" Width="45px" />
            </asp:Panel>
            <br />
            <asp:Button ID="Button4" runat="server" BackColor="#339966"  BorderColor="#E1E1E1" BorderStyle="None" Font-Names="Arial" Text="Sign UP" CssClass="auto-style15" ForeColor="White" OnClick="Button4_Click" />
            
      </div>
    </form>
</body>
</html>