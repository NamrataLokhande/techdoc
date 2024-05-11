<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="12-entermodel.aspx.cs" Inherits="TechDoc.entermodel" %>

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
    /* CSS styles */
    .panel-container {
        height: 618px;
           width: 491px;
       }

       .panel {
           z-index: 1;
           left: 145px;
           top: 127px;
           position: absolute;
           height: 313px;
           width: 1028px;
           background-color: white; /* Example background color */
           border: 1px solid black; /* Border color set to black */
           padding: 20px; /* Example padding */
           border-radius: 8px; /* Example border radius */
           #339966 /* Shadow effect */
       }    
    .label {
        z-index: 1;
        left: 70px;
        top: 52px;
        position: absolute;
        width: 420px;
        font-size: 30px; /* Example font size */
    }
    
    .textbox {
        z-index: 1;
        left: 81px;
        top: 126px;
        position: absolute;
        height: 32px;
        width: 768px;
        border: 1px solid #ccc; /* Example border */
        padding: 10px; /* Example padding */
        font-size: 16px; /* Example font size */
         border-radius: 5px; /* Example border radius */
    }
    
    .button-continue,
    .button-cancel {
        z-index: 1;
        position: absolute;
        height: 65px;
        width: 145px;
        font-size: 22px; /* Example font size */
         border-radius: 5px; /* Example border radius */

    }
    
    .button-continue {
        border-style: none;
           border-color: inherit;
           border-width: medium;
            left: 435px;
             top: 241px;
           background-color: rgb(41, 103, 176); /* Background color for the "Continue" button */
           color: white; /* Text color for the "Continue" button */
        /* Remove button border */
           cursor: pointer; /* Add pointer cursor on hover */
    }
    
    .button-cancel {
        left: 268px;
        top: 241px;
    }
    .textbox {
        z-index: 1;
        left: 82px;
        top: 126px;
        position: absolute;
        height: 35px;
        width: 768px;
        border: 1px solid black; /* Example border */
        padding: 10px; /* Example padding */
        font-size: 20px; /* Example font size */
        border-radius: 5px; /* Example border radius */
     //box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5); /* Shadow effect */
}
    .textbox::placeholder {
    font-size: 20px; /* Adjust the font size as needed */
}

  
       .auto-style2 {
           z-index: 1;
           left: 107px;
           top: 346px;
           position: absolute;
           height: 35px;
           width: 240px;
           font-size: 20px;
           border-radius: 5px;
           border: 1px solid black;
           margin-top: 1px;
           padding: 10px;
       }
       
  
       .auto-style5 {
           z-index: 1;
           left: 146px;
           top: 54px;
           position: absolute;
           width: 420px;
           font-size: 30px; /* Example font size */
       }

  
       .auto-style6 {
           position: absolute;
           top: 103px;
           left: 111px;
           z-index: 1;
           height: 194px;
           width: 257px;
       }
       .btn-cancel {
            z-index: 1;
            left: 66px;
            top: 519px;
            position: absolute;
            width: 164px;
            height: 40px;
            border-radius: 20px; /* Adding rounded corners */
        }

       .btn-Continue {
            z-index: 1;
            left: 251px;
            top: 519px;
            position: absolute;
            width: 164px;
            height: 40px;
            border-radius: 20px; /* Adding rounded corners */
        }
        .auto-style1 {
            height: 458px;
        }

  
   </style>

</head>
<body style="height: 615px; width: 492px">
    <form id="form1" runat="server">
        <div class="panel-container">
           <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 22px; top: 19px; position: absolute; height: 603px; width: 470px; border-radius: 20px;" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Can't find your Model" Font-Bold="True" Font-Names="Arial" Font-Size="Larger" ForeColor="#3366CC"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" placeholder="     Enter your Model " CssClass="auto-style2" style="border-radius:10px; " BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" CssClass="btn-Continue" Text="Continue" OnClick="Button1_Click" BackColor="#339966" BorderStyle="None" ForeColor="White" />
                <asp:Button ID="Button2" runat="server" CssClass="btn-cancel" Text="Cancel" BorderColor="#339966" BorderStyle="Solid" BorderWidth="1px" ForeColor="#339966" OnClick="Button2_Click" />
                <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style6" ImageUrl="~/Images/cantfind-removebg-preview.png" />
            </asp:Panel>
            <asp:ImageButton ID="ImageButton3" runat="server" Height="45px" ImageUrl="~/Images/left-arrow.jpg" style="z-index: 1; left: 30px; top: 27px; position: absolute" Width="45px" />
        </div>
    </form>
</body>
</html>
