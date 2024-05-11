<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Complaint.aspx.cs" Inherits="TechDoc.Complaint" %>

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

        body {
            display:flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            width: 400px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group input[type="text"], 
        .form-group input[type="email"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
        }

        .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
        }

        .submit-btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            outline: none;
             
        }

        .submit-btn:hover {
            background-color: #0056b3;
                  
        }
        .submit-btn {
        border-radius: 20px;
    }
         .rounded-ImageButton {
        border-radius: 10%;
    }
        .auto-style1:hover,
    .auto-style2:hover,
    .auto-style3:hover {
        color: #FF5733; /* Change to your desired hover color */
    }
        
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 648px; width: 480px;">
    
         <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 0px; top: 9px; position: absolute; height: 624px; width: 470px; border-radius: 20px; overflow: hidden;" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button">

             <asp:LinkButton ID="LinkBtnLap" runat="server" Font-Names="Arial" ForeColor="Black" OnClick="LinkBtnLap_Click" style="text-decoration:none; height: 24px;  width: 61px;" CssClass="auto-style3">Laptop</asp:LinkButton>

             <asp:LinkButton ID="LinkButton3" runat="server" CssClass="auto-style6" ForeColor="Black" style="text-decoration:none; font-family: Arial; " >Workstation</asp:LinkButton>

            <asp:Image ID="Image1" runat="server" style="z-index: 1; left: 38px; top: -3px; position: absolute; height: 203px; width: 376px;" ImageUrl="~/Images/1.png" CssClass="rounded" />
            <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 58px; top: 177px; position: absolute; height: 20px; width: 117px; right: 295px;" Text="Select Device:" Font-Names="Arial" Font-Size="Medium" Font-Bold="True"></asp:Label>
            <asp:ImageButton ID="ImgBtnLtp" runat="server" ImageUrl="~/Images/LaptopImg.jpeg" style="z-index: 1; left: 290px; top: 206px; position: absolute; height: 101px; width: 113px" BorderColor="Gray" OnClick="ImgBtnLtp_Click" />
             <asp:LinkButton ID="LinkBtnTab" runat="server" CssClass="auto-style2" Font-Names="Arial" ForeColor="Black" OnClick="LinkBtnTab_Click" style="text-decoration:none; height: 23px; width: 55px;">Tablet</asp:LinkButton>
             <asp:ImageButton ID="ImgBtnTab1" runat="server" BorderColor="#333333" ImageUrl="~/Images/TabletImg.jpeg" OnClick="ImgBtnTab_Click" style="z-index: 1; left: 58px; top: 216px; position: absolute; height: 90px; width: 113px; bottom: 314px;" />
             <asp:ImageButton ID="ImgBtnworkstn" runat="server" BorderColor="Gray" ImageUrl="~/Images/Workstation.jpeg" style="z-index: 1; left: 272px; top: 450px; position: absolute; width: 157px; height: 139px; bottom: 31px;" />
            <asp:LinkButton ID="LinkBtnMob0" runat="server" EnableTheming="True" style="text-decoration:none; " OnClick="LinkBtnMob_Click" CssClass="auto-style1" Font-Names="Arial" ForeColor="Black">Desktop</asp:LinkButton>
             <asp:ImageButton ID="ImgBtndektp" runat="server" BorderColor="#999999" ImageUrl="~/Images/desktop.jpg" style="z-index: 1; left: 60px; top: 358px; position: absolute; width: 113px; height: 90px; bottom: 172px;" />
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Black" CssClass="auto-style4" style="text-decoration:none; height: 18px; font-family: Arial; width: 74px;">Projector</asp:LinkButton>
              <asp:ImageButton ID="ImgBtnprojctor" runat="server" BorderColor="Gray" ImageUrl="~/Images/Projector.jpeg" style="z-index: 1; left: 287px; top: 350px; position: absolute; width: 119px; height: 94px; bottom: 176px;" />
             <asp:ImageButton ID="ImgBtnserver" runat="server" BorderColor="Gray" ImageUrl="~/Images/server1.png" style="z-index: 1; left: 59px; top: 494px; position: absolute; width: 113px; height: 90px; bottom: 36px;" />
              <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style5" ForeColor="Black" style="text-decoration:none; height: 23px; font-family: Arial; width: 66px;">Server</asp:LinkButton>
             
              <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/left-arrow.jpg" style="z-index: 1; left: 8px; top: 8px; position: absolute; height: 40px; width: 40px" PostBackUrl="~/6-Personal_details.aspx" Height="45px" Width="45px" />
             
              </asp:Panel>
    
                
    
         <asp:Image ID="Image2" runat="server" CssClass="rounded-ImageButton" ImageUrl="~/Images/WhatsApp Image 2024-03-12 at 1.13.35 PM.jpeg" style="z-index: 1; left: 235px; top: 76px; position: absolute; height: 31px; width: 47px" />
         <asp:Image ID="Image3" runat="server" CssClass="rounded-ImageButton" ImageUrl="~/Images/WhatsApp Image 2024-03-12 at 1.13.35 PM.jpeg" style="z-index: 1; left: 127px; top: 94px; position: absolute; height: 22px; width: 31px" />
         <asp:Image ID="Image4" runat="server" CssClass="rounded-ImageButton" ImageUrl="~/Images/WhatsApp Image 2024-03-12 at 1.13.35 PM.jpeg" style="z-index: 1; left: 329px; top: 108px; position: absolute; height: 12px; width: 19px" />
         <asp:Image ID="Image5" runat="server" CssClass="rounded-ImageButton" ImageUrl="~/Images/WhatsApp Image 2024-03-12 at 1.13.35 PM.jpeg" style="z-index: 1; left: 369px; top: 118px; position: absolute; height: 7px; width: 14px" />
    
                
    
    </div>
        


         <style>
    .k-floating-label-container {
        width: 100%;
    }
             #Submit1 {
                 z-index: 1;
                 left: 291px;
                 top: 423px;
                 position: absolute;
             }
             #Button1 {
                 z-index: 1;
                 left: 144px;
                 top: 642px;
                 position: absolute;
                 width: 190px;
                 height: 36px;
             }
             .auto-style1 {
                 z-index: 1;
                 left: 76px;
                 top: 451px;
                 position: absolute;
                 bottom: 140px;
                 width: 76px;
                 right: 318px;
             }
             .auto-style2 {
                 z-index: 1;
                 left: 88px;
                 top: 317px;
                 position: absolute;
             }
             .auto-style3 {
                 z-index: 1;
                 left: 315px;
                 top: 317px;
                 position: absolute;
             }
               .auto-style4 {
                 z-index: 1;
                 left: 312px;
                 top: 453px;
                 position: absolute;
             }
             
                .auto-style5 {
                 z-index: 1;
                 left: 82px;
                 top: 593px;
                 position: absolute;
                 
             }
             .auto-style6 {
                 z-index: 1;
                 left: 308px;
                 top: 590px;
                 position: absolute;
             }
         </style>
    </form>
</body>
</html>