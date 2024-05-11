<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="9-mobile.aspx.cs" Inherits="TechDoc.mobile" %>

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

        .label {
    font-weight: bold;
    position: absolute;
    left: 17px;
    top: 28px;
    z-index: 1;
            width: 207px;
        }



.link-button {
    font-size: small;
    position: absolute;
    left: 97px;
    top: 50px;
    height: 21px;
    width: 184px;
    right: 241px;
    z-index: 1;
   // font-size :30px;

}

.text-box {
    position: absolute;
    left: 29px;
    top: 81px;
    width: 283px;
    z-index: 1;
     height: 38px;
      border-radius: 10px; /* Adjust the value as needed */
      font-size: 16px;
}

.search-button {
        border-style: none;
            border-color: inherit;
            border-width: medium;
            position: absolute;
            left: 345px;
            top: 88px;
    height: 39px;
    width: 81px;
            background-color: green;
            color: white;
            cursor: pointer;
            z-index: 1;
            right: 6px;
        }


        .auto-style1 {
            position: absolute;
            left: 12px;
            top: 87px;
            width: 320px;
            z-index: 1;
            height: 38px;
            border-radius: 10px; /* Adjust the value as needed */;
            font-size: 16px;
        }
        .auto-style2 {
            font-size: small;
            position: absolute;
            left: 82px;
            top: 56px;
            height: 21px;
            width: 184px;
            right: 166px;
            z-index: 1; //;
            font-size : 30px;
        }


    </style>
      <script type="text/javascript">
          function toggleViews(panelToShow) {
              var panel2 = document.getElementById('<%= Panel2.ClientID %>');
            var panel3 = document.getElementById('<%= Panel3.ClientID %>');

            if (panelToShow === 'Panel2') {
                panel2.style.display = 'block';
                panel3.style.display = 'none';
            } else if (panelToShow === 'Panel3') {
                panel3.style.display = 'block';
                // Set the position of Panel3 relative to Panel2
                panel3.style.left = panel2.offsetLeft + 'px';
                panel3.style.top = panel2.offsetTop + panel2.offsetHeight + 20 + 'px'; // Adjust the offset as needed
                panel2.style.display = 'none';
            }
        }
    </script>
    
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" style="height: 631px; width: 467px;">
    
    
    <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 0px; top: 32px; position: absolute; height: 603px; width: 470px; border-radius: 20px; overflow: hidden;" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button">
           <asp:ImageButton ID="ImgBtnMobile" runat="server" ImageUrl="~/Images/mobileDevic.png" style="border-style: none; border-color: inherit; border-width: medium; position: relative; width: 106px; height: 103px; background-color: transparent; cursor: pointer; transition: transform 0.3s ease-in-out; top: 18px; left: 167px; margin-top: 3px;" BorderWidth="1px" OnClick="ImgBtnMobile_Click" />
        <br />
         
          <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 196px; top: 130px; position: absolute; height: 24px; margin-top: 0px; bottom: 449px;" Text="Mobile" Font-Size="Large" ForeColor="Black"></asp:Label>
          <br />

        
         <asp:Panel ID="Panel2" runat="server" Height="298px" style="margin-top:0px" Width="455px">
               <asp:Label ID="Label2" runat="server" Font-Bold="True" style="z-index: 1; left: 18px; top: 212px; position: absolute" Text="Select a Manufacturer" Font-Names="Arial"></asp:Label>
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />

               <div style="display: flex; justify-content: space-between;">

                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton3" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/oneplus.jpg"  style="border-radius: 10px; height: 50px; width: 80px; margin-left: 10px;" OnClick="ImageButton3_Click" />
                </div>

                <div style="width:30%; padding: 5px;">          
                    <asp:ImageButton ID="ImageButton4" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/oppo.jpg" style="border-radius: 10px; margin-left: 10px;height: 50px; width: 80px" />
                </div>

                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/realme.jpg" style="border-radius: 10px;margin-left: 10px; height: 50px; width: 80px"/>
                </div>
                    <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton7" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/google.jpg"  style=" position: absolute; margin-left: 10px; border-radius: 10px; height: 50px; width: 80px" />
                </div>
            </div>
               <div style="display: flex; justify-content: space-between;">
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton5" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/asus.jpg" style="border-radius: 10px; height: 50px; margin-left: 10px; width: 80px" />
                </div>
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton16" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/infinix.jpg" style="position: absolute;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" />
                </div>
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton8" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/poco.jpg" style="z-index: 1; position: absolute;border-radius: 10px; margin-left: 10px;height: 50px; width: 80px" />
                </div>
                     <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton6" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/iqoo.jpg"  style=" position: absolute;border-radius: 10px; height: 50px;margin-left: 10px; width: 80px" />
                </div>
            </div>
              <div style="display: flex; justify-content: space-between;">
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton9" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/nokia.jpg" style="border-radius: 10px; height: 50px; margin-left: 10px; width: 80px" />
                </div>
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton10" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/mi.jpg" style="position: absolute;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" />
                </div>
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton11" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/motorola.jpg" style="z-index: 1; position: absolute;border-radius: 10px; margin-left: 10px;height: 50px; width: 80px" />
                </div>
                     <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton12" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/honor.jpg"  style=" position: absolute;border-radius: 10px; height: 50px;margin-left: 10px; width: 80px" />
                </div>
            </div>
              <div style="display: flex; justify-content: space-between;">
                <div style="width: 35%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton15" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/apple.jpg" style=" position: absolute; left: 4px;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" OnClick="ImageButton15_Click" />
                </div>
                <div style="width: 35%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton13" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/sony.jpg" style=" position: absolute;border-radius: 10px; height: 50px;margin-left: 10px; width: 80px" />
                </div>
                <div style="width: 35%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton14" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/vivo.jpg"  style=" position: absolute;border-radius: 10px; height: 50px;margin-left: 10px; width: 80px" />
                </div>
                     <div style="width: 35%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton2" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/samsung.jpg"  style=" position: absolute;border-radius: 10px; height: 50px;margin-left: 10px; width: 80px" />
                </div>
                  
            </div>
           
         
 </asp:Panel>
           <asp:Panel ID="Panel3" runat="server" style="z-index: 1; left:5px; top: 150px; position: absolute; height: 298px; width: 432px;" >
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Select a Model:" Font-Size="Large" CssClass="label" Font-Names="Arial"></asp:Label>
        <br />
              <asp:LinkButton ID="entermodel_Linkbtn" runat="server" CssClass="auto-style2" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" OnClick="LinkButton1_Click" Text="Enter your Model" Font-Names="Arial"></asp:LinkButton>
         <br />
              <asp:TextBox ID="Searchtxt" runat="server" CssClass="auto-style1" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
              <asp:Button ID="Search_btn" runat="server" CssClass="search-button" OnClick="Button1_Click" Text="Search" BackColor="#339966" BorderStyle="None" />
         <br /> 
              <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 16px; top: 55px; position: absolute; width: 74px" Text="Can't find," Font-Names="Arial" Font-Size="Small"></asp:Label>
                <br />
                <br />
                <br />
                <br />
              <br />
              <br />
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" style="z-index: 1; left: 1px; top: 147px; position: absolute; height: 128px; width:430px" ForeColor="#333333" GridLines="None">
                  <AlternatingRowStyle BackColor="White" />
                  <EditRowStyle BackColor="#7C6F57" />
                  <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                  <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#E3EAEB" />
                  <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                  <SortedAscendingCellStyle BackColor="#F8FAFA" />
                  <SortedAscendingHeaderStyle BackColor="#246B61" />
                  <SortedDescendingCellStyle BackColor="#D4DFE1" />
                  <SortedDescendingHeaderStyle BackColor="#15524A" />
              </asp:GridView>
             </asp:Panel>


         </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechDocConnectionString %>" SelectCommand="SELECT [ProductMake], [Model] FROM [Product]"></asp:SqlDataSource>
   </div>
    </form>
</body>
</html>
