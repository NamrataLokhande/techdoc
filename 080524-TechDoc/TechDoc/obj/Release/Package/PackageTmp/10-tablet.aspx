<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="10-tablet.aspx.cs" Inherits="TechDoc.tablet" %>

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
    .rounded-ImageButton {
        border-radius: 8px;
        /* Add more styling as needed */
    }

    .panel-content {
        padding: 20px;
        /* Add more styling as needed */
    }
            .label {
    font-weight: bold;
    position: absolute;
    left: 19px;
    top: 17px;
    z-index: 1;
            width: 207px;
        }



.link-button {
    font-size: small;
    position: absolute;
    left: 81px;
    top: 55px;
    height: 21px;
    width: 184px;
    z-index: 1;
  

}
.text-box {
    position: absolute;
    left: 22px;
    top: 96px;
    width: 320px;
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
            left: 355px;
            top: 96px;
    height: 38px;
    width: 80px;
            background-color: green;
            color: white;
            cursor: pointer;
            z-index: 1;
            border-radius: 20px;
}



        .auto-style1 {
            z-index: 1;
            left: 19px;
            top: 55px;
            position: absolute;
            width: 74px;
        }
        .auto-style2 {
            z-index: 1;
            left: 18px;
            top: 192px;
            position: absolute;
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
    box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
    transition: box-shadow 0.3s ease;
}

/* Hover effect */
.dropdown:hover {
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
}

/* Style for dropdown options */
.dropdown-option {
   padding: 8px 12px;
    cursor: pointer;
   transition: background-color 0.3s ease;
}

/* Hover effect for dropdown options */
.dropdown-option:hover {
    background-color: #f0f0f0;
}

/* Styles for the dropdown options container */
.dropdown-options {
    position: absolute;
 
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
/* Styles for the GridView */
.gridview-style {
    cursor: pointer;
}

 /* Define CSS class for selected row */
    .selected-row {
        background-color: #cce5ff; /* Change to the desired color */
    }


</style>
    
   
   
</head>
<body>
     <form id="form1" runat="server">
 <div class="container" style="height: 601px; width: 480px;">
      
    <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 13px; top: 8px; position: absolute; height: 603px; width: 470px; border-radius: 20px; overflow: hidden;" BorderStyle="Solid" BorderWidth="1px" CssClass="rounded-button">
        <asp:ImageButton ID="ImageButton17" runat="server" ImageUrl="~/Images/left-arrow.jpg" style="position: absolute; width: 45px; height: 45px; top: 8px; left: 8px; z-index: 1;" PostBackUrl="~/Complaint.aspx" />
        <asp:ImageButton ID="ImgBtnTab" runat="server" BorderWidth="1px" ImageUrl="~/Images/tablet.png" OnClick="ImgBtnTab_Click" style="border-style: none; border-color: inherit; border-width: medium; position: relative; width: 106px; height: 131px; background-color: transparent; cursor: pointer; transition: transform 0.3s ease-in-out; top: -8px; left: 181px; margin-top: 3px;" PostBackUrl="~/Complaint.aspx" />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Large" ForeColor="Black" style="z-index: 1; left: 207px; top: 119px; position: absolute; height: 24px; margin-top: 0px; bottom: 460px;" Text="Tablet"></asp:Label>
        <asp:Panel ID="Panel2" runat="server" Height="298px" style="margin-top:0px" Width="476px">
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Text="Select a Manufacturer"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <div style="display: flex; justify-content: space-between;">
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton15" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/apple.jpg" OnClick="ImageButton15_Click" style=" left: 4px;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" />
                </div>
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton12" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/samsung.jpg" OnClick="ImageButton12_Click1" style="left: 4px;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" />
                </div>
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton13" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/sony.jpg" style="left: 4px;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" />
                </div>
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton6" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/poco.jpg" style=" left: 4px;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" />
                </div>
            </div>
            <div style="display: flex; justify-content: space-between;">
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton2" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/infinix.jpg" OnClick="ImageButton2_Click1" style="left: 4px;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" />
                </div>
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton4" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/oppo.jpg" style="left: 4px;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" />
                </div>
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton16" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/mi.jpg" OnClick="ImageButton16_Click" style="left: 4px;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" />
                </div>
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton5" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/honor.jpg" style=" left: 4px;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" />
                </div>
            </div>
            <div style="display: flex; justify-content: space-between;">
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton8" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/motorola.jpg" style="left: 4px;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" />
                </div>
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton3" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/oneplus.jpg" style="  left: 4px;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" />
                </div>
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton14" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/vivo.jpg" style=" left: 4px;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" />
                </div>
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/iqoo.jpg" style=" left: 4px;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" />
                </div>
            </div>
            <div style="display: flex; justify-content: space-between;">
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton7" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/google.jpg" style="left: 4px;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" />
                </div>
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton9" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/nokia (tab).jpg" style="  left: 4px;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" />
                </div>
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton10" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/asus.jpg" style=" left: 4px;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" />
                </div>
                <div style="width: 30%; padding: 5px;">
                    <asp:ImageButton ID="ImageButton11" runat="server" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="rounded-ImageButton" ImageUrl="~/Images/realme (tab).jpg" style=" left: 4px;border-radius: 10px;margin-left: 10px; height: 50px; width: 80px" />
                </div>
            </div>
        </asp:Panel>
        <br />
        <br />

            <asp:Panel ID="Panel3" runat="server" style="z-index: 1; left: 3px; top: 165px; position: absolute; height: 419px; width: 468px;">
              <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Select a Model:" CssClass="label" Font-Names="Arial" Font-Size="Large"></asp:Label>
                <br /> 
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="link-button" Font-Names="Arial" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" OnClick="LinkButton2_Click" Text="Enter your Model"></asp:LinkButton>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" CssClass="text-box" onkeyup=" filterGrid1()" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                <br />
                <asp:Label ID="Label5" runat="server" CssClass="auto-style1" Font-Names="Arial" Font-Size="Small" Text="Can't find,"></asp:Label>
                <asp:Button ID="Button2" runat="server" CssClass="search-button" OnClick="Button2_Click" Text="OK" />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="5" style="position: absolute; left: 21px; top: 159px; height: 25px; width: 329px; overflow-y: auto;">
                    <Columns>
                        <asp:BoundField DataField="model_name" HeaderText="model_name" SortExpression="model_name" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerSettings PageButtonCount="5" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TechdocConnectionString2 %>" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT [model_name]
FROM [Techdoc].[dbo].[tecdoc_tablet_brand_model]
WHERE [brand_id] IN (
    SELECT [brand_id] 
    FROM [Techdoc].[dbo].[techdoc_brand] 
    WHERE [brand_name] IN ('Samsung', 'Apple', 'oppo', 'mi','Honor','Nokia','Motorola')
);
"></asp:SqlDataSource>
                <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" style="z-index: 1; left: 361px; top: 219px; position: absolute; width: 75px; height: 29px" Visible="False"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" style="z-index: 1; left: 357px; top: 162px; position: absolute; width: 79px" Visible="False"></asp:TextBox>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TechdocConnectionString2 %>" SelectCommand="SELECT [model_name]
                            FROM [Techdoc].[dbo].[tecdoc_tablet_brand_model]
                            WHERE [brand_id] = (SELECT [brand_id] FROM [Techdoc].[dbo].[techdoc_brand] WHERE [brand_name] = 'Samsung'); "></asp:SqlDataSource>
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
