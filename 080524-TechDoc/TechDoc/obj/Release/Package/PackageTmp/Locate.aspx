<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_email.aspx.cs" Inherits="WebApplication1.Login_email" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .background-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            /*background-image: url('Image/background.jpg'); /* Add your image path */
            background-size: cover; /* Cover the entire background */
            background-position: center; /* Center the background image */
            filter: blur(5px); /* Apply blur filter to the background */
            -webkit-filter: blur(5px); /* For compatibility with Safari */
            z-index: -1; /* Move the background behind other content */
        }
        #toggleButton {
            border-style: none;
            z-index: 1;
            left: 1060px;
            top: 154px;
            position: absolute;
            height: 23px;
            width: 24px;
            background-color: transparent;
            background-size: contain;
            cursor: pointer;
            background-repeat: no-repeat; /* Prevent background image from repeating */
        }
        .link-button {
            text-decoration: none; /* Remove underline */
        }
        .rounded-textbox {
            border-radius: 20px; /* Adjust the value as needed */
            border: 1px solid #E1E1E1; /* Add border properties */
            padding: 10px; /* Add padding for better appearance */
            width: 486px; /* Adjust width as needed */
            height: 25px; /* Adjust height as needed */
            z-index: 1;
            position: absolute;
            left: 594px;
            top: 143px;
            font-size: 14px;
        }
        .rounded-textbox::placeholder {
            font-size: 18px; /* Adjust the font size as needed */
            color: #CCCCCC; /* Placeholder text color */
        }
        .rounded-div {
            border-radius: 20px; /* Adjust the value as needed */
            border-width: 0.2px;
            box-shadow: 0px 0px 10px 0px rgba(0, 128, 0, 0.5);
            border-style: solid;
            z-index: 1;
            left: 160px;
            top: 165px;
            position: absolute;
            height: 323px;
            width: 1120px;
            margin-left: 40px;
            background-color: rgba(255, 255, 255, 0.8); /* Adjust the opacity as needed */
        }
        .close-icon {
            position: absolute;
            top: 10px; /* Adjust as needed */
            right: 10px; /* Adjust as needed */
            cursor: pointer;
            height: 37px;
        }
    </style>
</head>
<body style="height: 852px">
    <form id="form1" runat="server">
    <div class="background-container"></div> <!-- Background container -->
        <div class="rounded-div" style="background-color: #FFFFFF">
            <!-- Close Icon -->
            <img class="close-icon" src="Image/close.png" alt="Close" onclick="closeDiv()" />
            
            <!-- Content -->
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" style="z-index: 1; left: 594px; top: 45px; position: absolute; width: 303px; height: 24px; margin-bottom: 9px" Text="Help us locate you!" Font-Names="Arial"></asp:Label>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 593px; top: 87px; position: absolute" Text="This will ensure accurate choice of services" Font-Names="Arial" Font-Size="Larger" ForeColor="#666666" Font-Bold="False" Font-Italic="False"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="rounded-textbox" placeholder="Enter your Location" ForeColor="#CCCCCC" Font-Names="Arial"></asp:TextBox>
            <img id="toggleButton" onclick="togglePassword()" alt="Show Password" style="background-color: #FFFFFF" src="Image/search.png" />
            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="link-button" style="z-index: 1; left: 601px; top: 206px; position: absolute; width: 392px" Font-Names="Arial" Font-Size="Larger" BorderStyle="None">Use current location using GPS</asp:LinkButton>
            <asp:Image ID="Image1" runat="server" Height="321px" ImageUrl="~/Image/banner.png" Width="391px" />
        </div>
    </form>
</body>
</html>

<script>
    function closeDiv() {
        var div = document.getElementsByClassName('rounded-div')[0];
        div.style.display = 'none';
    }
</script>
