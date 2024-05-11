<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="6-Personal_details.aspx.cs" Inherits="WebApplication1._1_Personal_details" %>

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
            height: 627px;
            width: 481px;
        }

        .rounded-button {
        border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius: 20px; /* Adjust the value to change the roundness of the border */
        /* Remove default border */
            outline: none;
            height: 218px;
        }

        .auto-style1:hover{
            color:#3366CC;
            cursor:pointer;
        }
         .auto-style4:hover{
            color:#3366CC;
            cursor:pointer;
        }
          #Panel3 {
           /* display: none; /* Hide Panel3 initially */
            position: absolute;
            left: -380px; /* Adjust the value to change the left position */
            top: 90px; /* Adjust the value according to your layout */
            border: 2px solid #ccc;
            border-radius: 10px;
            padding: 10px;
            background-color: white; /* Optional: Add background color */
            z-index: 1; /* Ensure Panel3 is above other elements */
        }
        .auto-style11 {
            width: 246px;
            position: absolute;
            left: 696px;
            top: 10px;
            z-index: 1;
            height: 450px;
            text-align: left;
        }
        .auto-style12 {
            z-index: 1;
            left: 330px;
            top: 72px;
            position: absolute;
            width: 111px;
            height: 116px;
            cursor:pointer;
            border-radius:100%;
        }
        .auto-style13 {
            z-index: 1;
            left: 59px;
            top: 33px;
            position: absolute;
            height: 34px;
            width: 188px;
            
        }
        .auto-style14 {
            z-index: 1;
            left: 56px;
            top: 211px;
            position: absolute;
            height: 37px;
            width: 200px;
        }
        .auto-style16 {
            font-weight: bold;
            z-index: 1;
            left: 56px;
            top: 274px;
            position: absolute;
            height: 37px;
            width: 200px;
        }
        .auto-style17 {
            font-weight: bold;
            z-index: 1;
            left: 56px;
            top: 342px;
            position: absolute;
            height: 37px;
            width: 200px;
        }
        .auto-style18 {
            font-weight: bold;
            z-index: 1;
            left: 56px;
            top: 406px;
            position: absolute;
            height: 37px;
            width: 200px;
        }
        .auto-style19 {
            position: absolute;
            top: 212px;
            left: 10px;
            z-index: 1;
            width: 39px;
            height: 37px;
        }
        .auto-style21 {
            position: absolute;
            top: 274px;
            left: 10px;
            z-index: 1;
            width: 39px;
            height: 37px;
        }
        .auto-style22 {
            position: absolute;
            top: 343px;
            left: 11px;
            z-index: 1;
            width: 35px;
            height: 34px;
        }
        .auto-style23 {
            position: absolute;
            top: 407px;
            left: 12px;
            z-index: 1;
            width: 29px;
            height: 29px;
        }
        .auto-style24 {
            position: absolute;
            top: 82px;
            left: 13px;
            z-index: 1;
            width: 91px;
            height: 97px;
        }
        .auto-style25 {
            position: absolute;
            top: 113px;
            left: 121px;
            z-index: 1;
            width: 124px;
        }
        .auto-style26 {
            height: 383px;
        }
        .card {
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 10px;
            margin-bottom: 10px;
        }

        .card-action {
            margin-top: 10px;
            text-align: center;
        }

        .btn {
            background-color: #339966;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }
        .auto-style101 {
            width: 230px;
            height: 194px;
            position: absolute;
            top: 253px;
            left: 4px;
            z-index: 1;
            transition: transform 0.3s ease;
            border-radius:10px;
            cursor:pointer;
        }
        .auto-style111 {
            width: 230px;
            height: 194px;
            position: absolute;
            top: 253px;
            left: 236px;
            bottom: 156px;
            z-index: 1;
            transition: transform 0.3s ease;
            border-radius:10px;
            cursor:pointer;
        }
        .auto-style116 {
            position: absolute;
            top: 269px;
            left: 245px;
            z-index: 1;
            height: 174px;
            width: 190px;
        }
        .auto-style117 {
            position: absolute;
            top: 268px;
            left: 27px;
            z-index: 1;
            width: 190px;
            height: 174px;
        }

        /* Animation */
        .auto-style101:hover {
            transform: scale(1.02); /* Scale up by 10% on hover */
        }

        .auto-style111:hover {
            transform: scale(1.02); /* Scale up by 10% on hover */
        }
        .auto-style12:hover{
            transform: scale(1.02);
        
           
        }
        
        .auto-style119 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius: 20px; /* Adjust the value to change the roundness of the border / / Remove default border */;
            outline: none;
            height: 603px;
            z-index: 1;
            top: 28px;
            position: absolute;
            width: 470px;
            left: 18px;
        }
        .auto-style120 {
            position: absolute;
            top: 509px;
            left: 108px;
            z-index: 1;
            width: 349px;
            height: 24px;
            right: 13px;
        }
        .auto-style121 {
            height: 623px;
            width: 484px;
        }
        .auto-style122 {
            height: 639px;
        }
        .auto-style777 {
            position: absolute;
            top: 85px;
            left: 11px;
            z-index: 1;
            width: 53px;
            height: 49px;
            right: 406px;
            margin-top: 0px;
        }

        </style>
<script type="text/javascript">
    document.addEventListener('click', function (event) {
        // Check if the click occurred on Image2 or Panel3
        var isImage2 = event.target.id === "Image2";
        var isPanel3 = event.target.id === "<%= Panel3.ClientID %>";

        // If the click is not on Image2 or Panel3, close Panel3
        if (!isImage2 && !isPanel3) {
            closePanel3();
        }
    });

    document.getElementById("Image2").addEventListener('click', function (event) {
        togglePanel3();
        event.stopPropagation(); // Prevent the click event from propagating further
    });

    function togglePanel3() {
        var panel3 = document.getElementById('<%= Panel3.ClientID %>');
        var targetPosition = 0; // Target position for showing Panel3

        // If Panel3 is currently shown, hide it
        if (panel3.style.left === "0px") {
            targetPosition = -380; // Hide Panel3
            //panel2.style.overflowY = "auto"; // Enable scrolling on Panel2
        }

        var currentPosition = parseInt(panel3.style.left) || 0; // Current left position of Panel3
        var increment = (targetPosition - currentPosition) / 10; // Increment for smooth scrolling

        // Smoothly scroll Panel3
        var interval = setInterval(function () {
            currentPosition += increment; // Update current position
            panel3.style.left = currentPosition + "px"; // Update left position

            // Stop scrolling when target position is reached
            if (Math.abs(targetPosition - currentPosition) < 1) {
                clearInterval(interval);
                // Ensure Panel3 is hidden when scrolled out
                if (targetPosition < 0) {
                    panel3.style.left = "-380px";
                }
                //panel2.style.overflowY = targetPosition < 0 ? "hidden" : "auto"; // Disable/enable scrolling on Panel2
            }
        }, 40); // Set interval duration for smooth scrolling
    }

    function closePanel3() {
        var panel3 = document.getElementById('<%= Panel3.ClientID %>');
        panel3.style.left = "-380px"; // Hide Panel3
    }
</script>


</head>
<body style="height: 625px; width: 487px">
    <form id="form1" runat="server" class="auto-style122">
    <div class="container" style="margin-left:1px" class="auto-style121">
    <asp:Panel ID="Panel2" runat="server" style="overflow-y: auto;" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style119">
    <div class="rounded-button" style="background-image: url('Images/header.jpeg'); background-repeat: no-repeat;">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/BW-profile-removebg-preview.png" CssClass="auto-style12" onclick="togglePanel3()" />
    <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style777" ImageUrl="~/Images/left-arrow.jpg" OnClick="ImageButton3_Click" PostBackUrl="~/Email_login.aspx" BorderStyle="None" Height="45px" Width="45px" />
    </div>
           <div class="auto-style26" style="background-color: #FFFFFF">
               
                 <asp:ImageButton ID="Sftwre_Imgbtn" runat="server" CssClass="auto-style117" ImageUrl="~/Images/SW.jpg" PostBackUrl="~/contact.aspx" OnClick="Sftwre_Imgbtn_Click" />
         
            
          <asp:ImageButton ID="Hardware_Imgbtn" runat="server" CssClass="auto-style116" ImageUrl="~/Images/HW.jpg" OnClick="Hardware_Imgbtn_Click" />
            
               <asp:Label ID="Label4" runat="server" CssClass="auto-style120" Font-Names="Arial" Font-Size="Larger" ForeColor="#000099" Text="Leave Your Laptop to the Pros."></asp:Label>
            
           </div>
        
    <asp:Panel ID="Panel3" runat="server" style="border: 2px solid #ccc; border-radius: 10px; padding: 10px; background-color: white; " ClientIDMode="Static" CssClass="auto-style11">
        <asp:ImageButton ID="Profile_Imgbtn" runat="server" CssClass="auto-style19" ImageUrl="~/Images/BW-user-removebg-preview.png" OnClick="Profile_Imgbtn_Click" />
        <asp:ImageButton ID="Help_Imgbtn" runat="server" CssClass="auto-style21" ImageUrl="~/Images/BW-help-removebg-preview.png" OnClick="Help_Imgbtn_Click" />
        <asp:ImageButton ID="Setting_Imgbtn" runat="server" CssClass="auto-style22" ImageUrl="~/Images/BW-setting-removebg-preview.png" OnClick="Setting_Imgbtn_Click" />
        <asp:ImageButton ID="logout_Imgbtn" runat="server" CssClass="auto-style23" ImageUrl="~/Images/BW-logout-removebg-preview.png" OnClick="logout_Imgbtn_Click" />
        <asp:Label ID="Label2" runat="server" Text="Personal Details" Font-Bold="True" Font-Names="Arial" Font-Size="Larger" ForeColor="#3366CC" CssClass="auto-style13"></asp:Label>
                <strong>
                <asp:Button ID="Profile_btn" runat="server" BorderStyle="None" style="text-align: left;" Text="Profile" BackColor="White" Font-Size="Large" Font-Names="Arial" Font-Bold="True" CssClass="auto-style14" OnClick="Button5_Click" /> 
                <asp:Button ID="help_btn" runat="server" BackColor="White" BorderStyle="None" CssClass="auto-style16" Font-Names="Arial" Font-Size="Large" style="text-align: left;" Text="Help" OnClick="Button2_Click" />
                <asp:Button ID="Setting_btn" runat="server" BackColor="White" BorderStyle="None" CssClass="auto-style17" Font-Bold="True" Font-Names="Arial" Font-Size="Large" style="text-align: left;" Text="Settings" OnClick="Button3_Click" />
                <asp:Button ID="logout_btn" runat="server" BackColor="White" BorderStyle="None" CssClass="auto-style18" Font-Bold="True" Font-Names="Arial" Font-Size="Large" style="text-align: left;" Text="Logout" OnClick="Button4_Click1" />
                </strong>
        <br />
        <asp:ImageButton ID="ImageButton11" runat="server" CssClass="auto-style24" ImageUrl="~/Images/BW-profile-removebg-preview.png" />
        <asp:Label ID="Label3" runat="server" CssClass="auto-style25" Font-Names="Arial" Text="User name" OnLoad="Label3_Load"></asp:Label>
    </asp:Panel>
          </asp:Panel>

                 
              

        </div>
    </form>
</body>
</html>