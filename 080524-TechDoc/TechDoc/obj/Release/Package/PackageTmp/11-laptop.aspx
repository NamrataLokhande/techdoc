<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="11-laptop.aspx.cs" Inherits="TechDoc.laptop" %>

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
    left: 23px;
    top: 21px;
    z-index: 1;
            width: 180px;
             height: 24px;
         }



.link-button {
    font-size: small;
    position: absolute;
    left: 86px;
    top: 51px;
    height: 21px;
    width: 143px;
    right: 226px;
    z-index: 1;
   // font-size :30px;

}

.text-box {
    position: absolute;
    left: 24px;
    top: 73px;
    width: 326px;
    z-index: 1;
     height: 38px;
      border-radius: 5px; /* Adjust the value as needed */
      font-size: 16px;
  }

#TextBox3 {
    position: absolute;
    left: 367px;
    top: 142px;
    width: 44px;
    z-index: 1;
     height: 38px;
      border-radius: 5px; /* Adjust the value as needed */
      font-size: 16px;
  }

.search-button {
        border-style: none;
            border-color: inherit;
            border-width: medium;
            position: absolute;
            left: 365px;
            top: 49px;
    height: 38px;
    width: 80px;
            background-color: green;
            color: white;
            cursor: pointer;
            z-index: 1;
             margin-top: 24px;
             border-radius: 20px;
         }

         .auto-style1 {
             z-index: 1;
             left: 198px;
             top: 126px;
             position: absolute;
             height: 24px;
             bottom: 453px;
         }
         .auto-style2 {
             z-index: 1;
             left: 21px;
             top: 50px;
             position: absolute;
             width: 74px;
             height: 19px;
         }

         .auto-style3 {
             z-index: 1;
             left: 0px;
             top: 161px;
             position: absolute;
             height: 398px;
             width: 432px;
         }

               /* Styles for the dropdown container */
.dropdown-container {
    position: relative;
    width: 290px; /* Adjust as needed */
}

/* Styles for the dropdown */
.dropdown {
    /* Basic styles */
    border: 1px solid #ccc;
    background-color: #fff;
    color: #333;
    padding: 10px;
    border-radius: 5px;
    width: 100%;
    font-size: 16px;
    cursor: pointer;
    /* Additional styles for attractiveness */
   // box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
    //transition: box-shadow 0.3s ease;
}

/* Hover effect */
.dropdown:hover {
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
}

/* Style for dropdown options */
.dropdown-option {
   // padding: 8px 12px;
    cursor: pointer;
    //transition: background-color 0.3s ease;
}

/* Hover effect for dropdown options */
.dropdown-option:hover {
    background-color: #f0f0f0;
}

/* Styles for the dropdown options container */
.dropdown-options {
    position: absolute;
  // top: calc(100% + 5px); /* Adjust as needed */
   //left: 0;
   //z-index: 10;
    background-color: #fff;
    border: 1px solid #ccc;
    border-top: none;
    border-radius: 0 0 5px 5px;
    box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
    display: none;
}

/* Show dropdown options when the dropdown is clicked */
.dropdown-container.active .dropdown-options {
    display: block;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" style="height: 606px; width: 487px;">
    
    
     <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 16px; top: 16px; position: absolute; height: 603px; width: 470px; border-radius: 20px; overflow: hidden; right: 882px;" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button">
              <asp:ImageButton ID="ImageButton17" runat="server" Height="45px" ImageUrl="~/Images/left-arrow.jpg" OnClick="ImageButton17_Click" Width="45px" PostBackUrl="~/Complaint.aspx" />
              <br />
         <asp:Label ID="Label1" runat="server" style="margin-top: 0px; " Text="Laptop" Font-Size="Large" ForeColor="Black" CssClass="auto-style1" Font-Names="Arial"></asp:Label>
            <asp:ImageButton ID="ImgBtnLtp" runat="server" BorderColor="Gray" BorderWidth="1px" ImageUrl="~/Images/laptop.png" OnClick="ImgBtnLtp_Click" style="border-style: none; border-color: inherit; border-width: medium; position: relative; width: 106px; height: 103px; background-color: transparent; cursor: pointer; transition: transform 0.3s ease-in-out; z-index: 1; left: 173px; top: 13px; position: absolute;" />
          <br />
           <br />
              <asp:Panel ID="Panel2" runat="server" Height="477px" style="margin-top:0px" Width="455px">
                  <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" style="z-index: 1; left: 22px; top: 156px; position: absolute; right: 276px; margin-top: 0px; height: 32px;" Text="Select a Manufacturer"></asp:Label>
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <div style="display: flex; justify-content: space-between;">
                      <div style="width: 30%; padding: 5px;">
                          <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/apple (laptop).jpg" OnClick="ImageButton1_Click" style=" left: 345px; top: 81px; margin-left: 10px; border-radius: 10px; height: 50px; width: 80px" />
                      </div>
                      <div style="width: 30%; padding: 5px;">
                          <asp:ImageButton ID="imgacer_btn" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/acer.jpg"  style=" left: 345px;margin-left: 10px;  border-radius: 10px; top: 81px;  height: 50px; width: 80px" OnClick="imgacer_btn_Click" />
                      </div>
                      <div style="width: 30%; padding: 5px;">
                          <asp:ImageButton ID="ImageButton3" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" Height="106px" ImageUrl="~/Images/asus.jpg" OnClick="ImageButton3_Click" style=" left: 345px; top: 81px;  height: 50px; margin-left: 10px; border-radius: 10px; width: 80px" Width="191px" />
                      </div>
                      <div style="width: 30%; padding: 5px;">
                          <asp:ImageButton ID="ImageButton12" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/sony (laptop).jpg" style=" left: 345px; top: 81px; margin-left: 10px;  border-radius: 10px; height: 50px; width: 80px" />
                      </div>
                  </div>
                  <div style="display: flex; justify-content: space-between;">
                      <div style="width: 30%; padding: 5px;">
                          <asp:ImageButton ID="ImageButton4" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/avita.jpg" style=" left: 345px; top: 81px; margin-left: 10px; border-radius: 10px; height: 50px; width: 80px" />
                      </div>
                      <div style="width: 30%; padding: 5px;">
                          <asp:ImageButton ID="ImageButton5" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/dell.jpg" OnClick="ImageButton5_Click" style=" left: 345px; top: 81px;margin-left: 10px; border-radius: 10px; height: 50px; width: 80px" />
                      </div>
                      <div style="width: 30%; padding: 5px;">
                          <asp:ImageButton ID="ImageButton6" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/hp.jpg" style=" left: 345px; margin-left: 10px;  top: 81px; border-radius: 10px; height: 50px; width: 80px" />
                      </div>
                      <div style="width: 30%; padding: 5px;">
                          <asp:ImageButton ID="ImageButton11" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/msi.jpg" style=" left: 345px; top: 81px; margin-left: 10px;  border-radius: 10px; height: 50px; width: 80px" />
                      </div>
                  </div>
                  <div style="display: flex; justify-content: space-between;">
                      <div style="width: 30%; padding: 5px;">
                          <asp:ImageButton ID="ImageButton7" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/lenovo laptop.jpg" style=" left: 345px; top: 81px; margin-left: 10px; border-radius: 10px; height: 50px; width: 80px" />
                      </div>
                      <div style="width: 30%; padding: 5px;">
                          <asp:ImageButton ID="ImageButton8" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/lg.jpg" style=" left: 345px; top: 81px; margin-left: 10px;  border-radius: 10px; height: 50px;  width: 80px" />
                      </div>
                      <div style="width: 30%; padding: 5px;">
                          <asp:ImageButton ID="ImageButton9" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/microsoft.jpg" style=" left: 345px; top: 81px; margin-left: 10px; border-radius: 10px; height: 50px; width: 80px" />
                      </div>
                      <div style="width: 30%; padding: 5px;">
                          <asp:ImageButton ID="ImageButton10" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/samsung (laptop).jpg" style=" left: 345px; top: 81px; margin-left: 10px; border-radius: 10px; height: 50px; width: 80px" />
                      </div>
                  </div>
                  <div style="display: flex; justify-content: space-between;">
                      <div style="width: 30%; padding: 5px;">
                          <asp:ImageButton ID="ImageButton13" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/mi (laptop).jpg" style=" left: 345px; top: 81px; margin-left: 10px; border-radius: 10px; height: 50px; width: 80px" />
                      </div>
                      <div style="width: 30%; padding: 5px;">
                          <asp:ImageButton ID="ImageButton14" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/nokia (laptop).jpg" style=" left: 345px; top: 81px; margin-left: 10px;  border-radius: 10px; height: 50px;  width: 80px" />
                      </div>
                      <div style="width: 30%; padding: 5px;">
                          <asp:ImageButton ID="ImageButton15" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/realme (laptop).jpg" style=" left: 345px; top: 81px; margin-left: 10px; border-radius: 10px; height: 50px; width: 80px" />
                      </div>
                      <div style="width: 30%; padding: 5px;">
                          <asp:ImageButton ID="ImageButton16" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/toshiba.jpg" style=" left: 345px; top: 81px; margin-left: 10px; border-radius: 10px; height: 50px; width: 80px" />
                      </div>
                  </div>
              </asp:Panel>
              <br />
              <br />
           <br />

            <asp:Panel ID="Panel3" runat="server" CssClass="auto-style3">
                    <asp:Label ID="Label3" runat="server" CssClass="label" Font-Bold="True" Font-Size="Large" Text="Select a Model:" Font-Names="Arial"></asp:Label>
                 <br />
                    <asp:Label ID="Label5" runat="server" Text="Can't find," CssClass="auto-style2" Font-Names="Arial" Font-Size="Small"></asp:Label>
                 <asp:LinkButton ID="LinkButton2" runat="server" CssClass="link-button" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" Text="Enter your Model" OnClick="LinkButton2_Click" Font-Names="Arial"></asp:LinkButton>
                 <br />
                    <asp:TextBox ID="TextBox3" runat="server" Visible="False" ></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="text-box" onkeyup=" filterGrid1()" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    <br />
                    <asp:Button ID="ok_btn" runat="server" CssClass="search-button" OnClick="ok_btn_Click" Text="OK" />
                    <br />
                    <br />
        
<asp:GridView ID="GridView1" runat="server" CssClass="GridView1 table table-striped" AutoGenerateColumns="False" 
    Style="position: absolute; left: 28px; top: 131px; width: 332px; height: 200px;" 
    OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="3" PageSize="4" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
    <Columns>
        <asp:BoundField DataField="model_name" HeaderText="Model Name" SortExpression="model_name" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerSettings FirstPageText="First" LastPageText="Last" PageButtonCount="4" />
    <PagerStyle CssClass="pagination" BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>

                  
                
               </asp:Panel>

         </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechDocConnectionString %>" SelectCommand="SELECT [ProductMake], [Model] FROM [Product]"></asp:SqlDataSource>
   </div>
    </form>
        
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   
<script>
    ////////////////////////////////Apple ////////////////////////////////

    // Function to filter GridView1 based on user input
    function filterGrid1() {
        var input, filter, grid, cells, cell, i, found;
        input = document.getElementById("TextBox2");
        filter = input.value.toUpperCase();
        grid = document.getElementById("GridView1");
        cells = grid.getElementsByTagName("td");

        found = false; // Flag to track if any matching results are found

        for (i = 0; i < cells.length; i++) {
            cell = cells[i];
            if (cell) {
                if (cell.innerHTML.toUpperCase().indexOf(filter) > -1) {
                    cell.parentElement.style.display = "";
                    found = true; // Set flag to true if matching result is found
                } else {
                    cell.parentElement.style.display = "none";
                }
            }
        }

        // Update visibility of NoDataLabel based on flag value
        document.getElementById("NoDataLabel").style.display = found ? "none" : "block";
    }


    $(document).ready(function () {
        $("#GridView1 td").on("click", function () {
            // Update TextBox2 value with the clicked cell's content
            $("#TextBox2").val($(this).text().trim());
        });
    });

    ////////////////////////////samsung///////////////////////////////

</script>

</body>

</html>
