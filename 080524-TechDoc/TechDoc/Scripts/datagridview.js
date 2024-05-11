////////////// Apple gridvieww................///////////////////////////


// Function to filter GridView based on user input
  function filterGrid(gridId, textBoxId) {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById(textBoxId);
        filter = input.value.toUpperCase();
        table = document.getElementById(gridId);
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0]; // Assuming the first column contains the data to filter
            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }

 

// Apply filter for GridView1 for apple
filterGrid("GridView1");

// Apply filter for GridView2 for samsung
filterGrid("GridView2");

// Add event listeners to each cell in GridView1
var cells1 = document.getElementById("GridView1").getElementsByTagName("td");
for (var i = 0; i < cells1.length; i++) {
    cells1[i].addEventListener("click", function () {
        // Update TextBox2 value with the clicked cell's content
        document.getElementById("TextBox2").value = this.innerText.trim();
    });
}

// Add event listeners to each cell in GridView2
var cells2 = document.getElementById("GridView2").getElementsByTagName("td");
for (var j = 0; j < cells2.length; j++) {
    cells2[j].addEventListener("click", function () {
        // Update TextBox2 value with the clicked cell's content
        document.getElementById("TextBox2").value = this.innerText.trim();
    });
}

//////////////////samsung gridview....//////////////////////////////////////////////

    window.onload = function () {
        // For GridView1
        var grid1 = document.getElementById("GridView1");
        if (grid1) {
            var cells1 = grid1.getElementsByTagName("td");
            for (var i = 0; i < cells1.length; i++) {
                cells1[i].addEventListener("click", function () {
                    // Update TextBox2 value with the clicked cell's content
                    document.getElementById("TextBox2").value = this.innerText.trim();
                });
            }
        }

        // For GridView2
        var grid2 = document.getElementById("GridView2");
        if (grid2) {
            var cells2 = grid2.getElementsByTagName("td");
            for (var j = 0; j < cells2.length; j++) {
                cells2[j].addEventListener("click", function () {
                    // Update TextBox2 value with the clicked cell's content
                    document.getElementById("TextBox2").value = this.innerText.trim();
                });
            }
        }
    };






/////////samsung gridview///////



