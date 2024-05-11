<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="7-Profile_details.aspx.cs" Inherits="TechDoc.profile_details"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile Details</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#<%= Firstnametxt.ClientID %>, #<%= Emailtxt.ClientID %>, #<%= Mobilenutxt.ClientID %>').on('input', function () {
                updateProfile();
            });

            function updateProfile() {
                var newFullName = $('#<%= Firstnametxt.ClientID %>').val().trim();
                var newEmail = $('#<%= Emailtxt.ClientID %>').val().trim();
                var newMobileNo = $('#<%= Mobilenutxt.ClientID %>').val().trim();


                $.ajax({
                    type: 'POST',
                    url: 'profile_details.aspx/UpdateProfile',
                    data: JSON.stringify({ newFullName: newFullName, newEmail: newEmail, newMobileNo: newMobileNo }),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json',
                    success: function (response) {
                        if (response.d === true) {
                            console.log('Profile updated successfully!');
                        } else {
                            console.log('Failed to update profile.');
                        }
                    },
                    error: function (xhr, status, error) {
                        console.error('Error occurred while updating profile:', error);
                    }
                });
            }
        });

        function openFileInput() {
            document.getElementById('<%= fileUpload.ClientID %>').click();
        }

        function displayImage(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%= profileupdate_img.ClientID %>').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }

            function uploadImage() {
                console.log("uploadImage() function called");

                var fileInput = document.getElementById("fileInput");
                var file = fileInput.files[0];

                // Check if a file is selected
                if (file) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        console.log("Image loaded:", e.target.result); // Log the loaded image URL
                        // Set the source of ImageButton1 to the selected image
                        document.getElementById("profileupdate_img").src = e.target.result;
                    };

                    reader.readAsDataURL(file);
                }
            }

            // Function to handle double click on the image
            function changeImageButtonSrc() {
                var imageUrl = document.getElementById("profileupdate_img").src;
                console.log("Image source:", imageUrl); // Log the image source to check if it's correct
                document.getElementById("profileupdate_img").src = imageUrl + "?" + new Date().getTime(); // Add a timestamp to force image refresh
            }
    </script>
    <style>

        @media (max-width: 768px) {
            .panel-content {
                padding: 10px; /* Adjust padding for smaller screens */
            }
        }

        .rounded-button {
            border-radius: 20px; /* Adjust border-radius as needed */
        }
        .rounded-border {
            border-radius: 10px; /* Adjust border-radius as needed */
            border-style: solid;
            border-width: 1px;
            padding: 5px; /* Add padding to give some space inside the textbox */
        }
        .rounded-image {
            border-radius: 50%; /* Make the image round */
        }
        .auto-style1 {
            z-index: 1;
            left: 167px;
            top: 21px;
            position: absolute;
            height: 33px;
            width: 267px;
        }
        .auto-style2 {
            z-index: 1;
            left: 157px;
            top: 51px;
            position: absolute;
            height: 135px;
            width: 153px;
        }


           .auto-style17 {
            position: absolute;
            top: 49%;
            left: 37%;
            transform: translate(-50%, -50%);
            text-align: center;
            padding: 10px;
/* Add padding */z-index: 9999;
            width: 270px;
            height: 8px;
            margin-top: 18px;
            color: RED;
        }

        .auto-style16 {
            position: absolute;
            top: 62%;
            left: 43%;
            transform: translate(-50%, -50%);
            text-align: center;
            padding: 10px; /* Add padding */
            z-index: 9999;
            width: 270px;
            height: 8px;
            margin-top: 18px;
            color: RED;
        }

          .auto-style20 {
            position: absolute;
            top: 75%;
            left: 37%;
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
            width: 53px;
            height: 49px;
        }
    </style>
</head>
<body style="height: 617px; width: 489px">
    <form id="form1" runat="server">
        <div class="container" style="height: 612px; width: 478px; margin-left: 12px">
            <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 16px; top: 21px; position: absolute; height: 603px; width: 470px" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button">
                <asp:Label ID="Label1" runat="server" Text="Profile Update" Font-Bold="True" Font-Names="Arial" Font-Size="Larger" ForeColor="#3366CC" CssClass="auto-style1"></asp:Label>
               
                 <asp:TextBox ID="empid_txt" runat="server" CssClass="rounded-border" style="z-index: 1; left: 22px; top: 189px; position: absolute; height: 37px; width: 423px; right: 13px;" BorderColor="#B4B4B4" BorderStyle="Solid" BorderWidth="1px" Placeholder="  Full Name" OnTextChanged="empid_txt_TextChanged" Visible="False"></asp:TextBox>
                
                
                 <asp:TextBox ID="Firstnametxt" runat="server" CssClass="rounded-border" style="z-index: 1; left: 21px; top: 258px; position: absolute; height: 37px; width: 423px; right: 14px;" BorderColor="#B4B4B4" BorderStyle="Solid" BorderWidth="1px" Placeholder="  Full Name" OnTextChanged="Firstnametxt_TextChanged"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="FirstnametxtRequiredFieldValidator" runat="server" CssClass="auto-style17" ControlToValidate="Firstnametxt" ErrorMessage="Full Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="FirstnametxtRegularExpressionValidator" runat="server" CssClass="auto-style17" ControlToValidate="Firstnametxt" ErrorMessage="Please enter only characters." ValidationExpression="[a-zA-Z\s]+"></asp:RegularExpressionValidator>

               
                 <asp:TextBox ID="Emailtxt" runat="server" CssClass="rounded-border" style="z-index: 1; left: 22px; top: 335px; position: absolute; width: 423px; height: 37px" BorderColor="#B4B4B4" BorderStyle="Solid" BorderWidth="1px" Placeholder="  Email Address " OnTextChanged="Emailtxt_TextChanged"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="EmailtxtValidator" runat="server" CssClass="auto-style16" ControlToValidate="Emailtxt" ErrorMessage="Please enter a valid email address. *" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   <asp:RequiredFieldValidator ID="EmailtxtRequiredFieldValidator" runat="server" CssClass="auto-style16" ControlToValidate="Emailtxt" ErrorMessage="Email is required " ForeColor="Red"></asp:RequiredFieldValidator>
                 

                
                 <asp:TextBox ID="Mobilenutxt" runat="server" CssClass="rounded-border" style="z-index: 1; left: 22px; top: 416px; position: absolute; width: 423px; height: 37px" BorderColor="#B4B4B4" BorderStyle="Solid" BorderWidth="1px" Placeholder="  Mobile Number " OnTextChanged="Mobilenutxt_TextChanged"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="MobilenutxtValidator" runat="server" ControlToValidate="Mobilenutxt" CssClass="auto-style20" ErrorMessage="Please enter a valid 10-digit mobile number. *" ValidationExpression="^(?:\+91|0)?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="auto-style20" ControlToValidate="Mobilenutxt" ErrorMessage="Mobile Number is required " ForeColor="Red"></asp:RequiredFieldValidator>
                  


               
                
                 <asp:Button ID="Confirm_btn" runat="server" BackColor="#339966" ForeColor="White" CssClass="rounded-button" style="z-index: 1; left: 101px; top: 533px; position: absolute; width: 264px; height: 35px" Text="UPDATE" BorderStyle="None" OnClick="Confirm_btn_Click" />
               
                <asp:FileUpload ID="fileUpload" runat="server" style="display: none" onchange="displayImage(this)" />
                <asp:ImageButton ID="profileupdate_img" runat="server" CssClass="auto-style2 rounded-image" ImageUrl="~/Images/profile update1.jpeg" OnClientClick="openFileInput(); return false;" OnClick="profileupdate_img_Click" />

                <input type="file" id="fileInput" style="display:none" onchange="uploadImage()" />

                 <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style777" ImageUrl="~/Images/left-arrow.jpg" PostBackUrl="~/6-Personal_details.aspx" Height="45px" Width="45px" />
          

            </asp:Panel>
            <br />
        </div>
    </form>
</body>
</html>