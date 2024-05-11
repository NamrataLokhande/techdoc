<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5-Welcome_page.aspx.cs" Inherits="WebApplication1._1_Welcome_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .rounded-button {
            border-radius: 10px; /* Adjust border-radius as needed */
        }
        .rounded-border {
            border-radius: 10px; /* Adjust the border-radius as needed */
            border-style: solid;
            border-width: 1px;
            padding: 5px; /* Add padding to give some space inside the textbox */
        }
        .auto-style1 {
            z-index: 1;
            left: 39px;
            top: 458px;
            position: absolute;
        }
        .auto-style2 {
            border-radius: 10px;
            z-index: 1;
            left: 101px;
            top: 533px;
            position: absolute;
            width: 264px;
            height: 35px;
        }
        /* CSS styles for the image */
        .attractive-image {
            border-radius: 50%; /* Make it circular */
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2); /* Drop shadow effect */
            transition: transform 0.3s ease-in-out; /* Smooth transition */
            width: 200px; /* Adjust the width as needed */
            height: 200px; /* Adjust the height as needed */
            object-fit: cover; /* Ensure the image covers the entire area */
        }
        
        .auto-style3 {
            border-radius: 50%; /* Make it circular */
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2); /* Drop shadow effect */;
            transition: transform 0.3s ease-in-out; /* Smooth transition */;
            width: 200px; /* Adjust the width as needed */;
            height: 200px; /* Adjust the height as needed */;
            object-fit: cover;
            z-index: 1;
            left: 141px;
            top: 68px;
            position: absolute;
        }
        
        .auto-style4 {
            z-index: 1;
            left: 141px;
            top: 15px;
            position: absolute;
            height: 33px;
            width: 244px;
        }
        .auto-style5 {
            z-index: 1;
            left: 69px;
            top: 460px;
            position: absolute;
            width: 373px;
            height: 47px;
        }
        
    </style>
</head>
<body style="height: 1033px; width: 937px">
    <form id="form1" runat="server">
        <div style="height: 945px; width: 916px; margin-left: 12px">
            <br />
            <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 452px; top: 9px; position: absolute; height: 603px; width: 470px" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button">
                <asp:Label ID="Label1" runat="server" Text="Welcome to TechDoc" Font-Bold="True" Font-Names="Arial" Font-Size="Larger" ForeColor="#3366CC" CssClass="auto-style4"></asp:Label>
                <asp:TextBox ID="firstname_txt" runat="server" CssClass="rounded-border" style="z-index: 1; left: 20px; top: 304px; position: absolute; height: 37px; width: 185px; right: 259px;" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Placeholder="   First Name" OnTextChanged="firstname_txt_TextChanged" ></asp:TextBox>
                <asp:TextBox ID="lastname_txt" runat="server" CssClass="rounded-border" style="z-index: 1; left: 253px; top: 305px; position: absolute; height: 37px; width: 185px" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Placeholder="  Last Name" OnTextChanged="lastname_txt_TextChanged" ></asp:TextBox>
                <asp:TextBox ID="emailtxt" runat="server" CssClass="rounded-border" style="z-index: 1; left: 21px; top: 382px; position: absolute; width: 421px; height: 37px" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Placeholder="  Email Address " OnTextChanged="emailtxt_TextChanged"></asp:TextBox>
                <!-- Checkbox -->
                <input type="checkbox" id="CheckBox1" runat="server" class="auto-style1" />
                <asp:Label ID="Label2" runat="server" Text="I would like to receive service updates on WhatsApp" Font-Names="Arial" CssClass="auto-style5" Font-Size="Small"></asp:Label>
                <asp:Button ID="confirmdetails_btn" runat="server" BackColor="#339966" BorderStyle="None" ForeColor="White" Text="CONFIRM DETAILS" CssClass="auto-style2" Font-Names="Arial" OnClick="Button1_Click"/>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/WhatsApp Image 2024-03-12 at 1.13.35 PM.jpeg" CssClass="auto-style3" />
                 <asp:Label ID="lblMessage" runat="server"></asp:Label>
                 </asp:Panel>
        </div>
    </form>
</body>
</html>