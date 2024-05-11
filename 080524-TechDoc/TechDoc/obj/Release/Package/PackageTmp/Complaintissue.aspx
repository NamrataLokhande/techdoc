<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Complaintissue.aspx.cs" Inherits="TechDoc.Complaintissue" %>

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

        .oval-button {
            border-radius: 10%;
            width: 100px; /* Adjust the width as needed */
            height: 40px; /* Adjust the height as needed */
            background-color: #007bff; /* Adjust the background color */
            color: white;
            border: none;
            outline: none;
            cursor: pointer;
            transition: background-color 0.3s; /* Add transition effect for smoother hover */
        }

        .oval-button:hover {
            background-color: #0056b3; /* Change the background color on hover */
        }
         .auto-style1 {
             z-index: 1;
             left: 194px;
             top: 77px;
             position: absolute;
         }
         .auto-style2 {
             z-index: 1;
             left: 362px;
             top: 82px;
             position: absolute;
             height: 19px;
         }
         .auto-style3 {
             z-index: 1;
             left: 26px;
             top: 202px;
             position: absolute;
             height: 22px;
             width: 139px;
         }
         .custom-dropdown {
    font-family: Arial;
    font-size: 14px;
     left: 25px;
      top: 190px;
     position: absolute;
     height: 40px;
     width: 139px;
    border: 1px solid #ccc;
    border-radius: 5px;
    width: 200px;
}
         .custom-textbox {
    font-family: Arial;
    font-size: 14px;
    padding: 5px;
    border: 1px solid #999999;
    border-radius: 5px;
    width: 410px;
    box-sizing: border-box; /* Ensures the width includes padding and border */
}
 .auto-style13 {
            z-index: 1;
            left: 101px;
            top: 533px;
            position: absolute;
            width: 164px;
            height: 35px;
            border-radius: 20px; /* Adding rounded corners */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" style="height: 600px; width: 464px">
      <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 0px; top: 9px; position: absolute; height: 603px; width: 470px; border-radius: 20px; overflow: hidden;" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button">
          
          <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" style="z-index: 1; left: 27px; top: 63px; position: absolute" Text="Select the issue you are facing in your device"></asp:Label>
          <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="true" CssClass="custom-dropdown" Font-Names="Arial" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
              <%-- Placeholder --%>
              <asp:ListItem>Select an issue</asp:ListItem>
              <asp:ListItem>Battery Issues</asp:ListItem>
              <asp:ListItem>Charging Issues</asp:ListItem>
              <asp:ListItem>Connectivity Issues</asp:ListItem>
              <asp:ListItem>Camera Issues</asp:ListItem>
              <asp:ListItem>Audio Issues</asp:ListItem>
              <asp:ListItem>Other Hardware Issues</asp:ListItem>
              <asp:ListItem>Display Problem</asp:ListItem>
              <asp:ListItem>Other</asp:ListItem>
          </asp:DropDownList>
          <asp:Label ID="Label2" runat="server" CssClass="auto-style1" Font-Names="Arial" Font-Size="Small" Text="Couldn’t find your problem?" Visible="False"></asp:Label>
          <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style2" Font-Names="Arial" Font-Size="Small" OnClick="LinkButton1_Click" PostBackUrl="~/12-entermodel.aspx" Visible="False">Add here</asp:LinkButton>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="custom-textbox" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" style="z-index: 1; left: 23px; top: 127px; position: absolute; height: 39px; width: 410px" Placeholder="Enter your serial number" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
         <asp:TextBox ID="TextBox2" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" style="z-index: 1; left: 22px; top: 270px; position: absolute; height: 108px; width: 414px" OnTextChanged="TextBox2_TextChanged" TextMode="MultiLine"></asp:TextBox>
          <asp:Button ID="Button2" runat="server" BackColor="#339966" BorderColor="#339966" CssClass="auto-style13" ForeColor="White" OnClick="Button2_Click" style="left: 244px; top: 408px; position: absolute" Text="Continue" />
          &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/left-arrow.jpg" PostBackUrl="~/Complaint.aspx" style="z-index: 1; left: 7px; top: 7px; position: absolute; height: 40px; width: 40px" Height="45px" Width="45px" />
          <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 27px; top: 247px; position: absolute; height: 20px;" Text="Describe Issue:"></asp:Label>
          <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" style="z-index: 1; left: 254px; top: 193px; position: absolute" Visible="False"></asp:TextBox>
          <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#339966" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style13" ForeColor="#339966" style="left: 54px; top: 409px; position: absolute" Text="Cancel" />

         
     
     </asp:Panel>
    </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
