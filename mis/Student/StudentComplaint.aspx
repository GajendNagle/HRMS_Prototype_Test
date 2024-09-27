<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentComplaint.aspx.cs" Inherits="mis_Student_StudentComplaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .table-container {
            max-width: 100%;
            overflow-x: auto;
        }

        #tbl_class {
            display: none;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#StudentManage" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Academic Management</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Student Complaint By Teacher</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="marqueecontainer border-0">
                <div class="headertext btn btn-primary rounded-pill d-flex align-items-center mt-1 fw-semibold">
                    शिक्षक द्वारा छात्र की शिकायत
                </div>
                <div>
                    <marquee style="width: 100%; margin-top: 0.5rem;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-dark fw-semibold ">
                        <b>NOTE</b> - टीचर द्वारा लिया गया एक्शन   Form को Save करें|
                    </marquee>
                </div>



            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Student Complaint By Teacher /  शिक्षक द्वारा छात्र की शिकायत</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="txtSamagra">
                                Select Samagra Id /<br />
                                विद्यार्थी की समग्र आईडी दर्ज करें     
                                <span style="color: red">*</span>
                            </label>
                            <input type="text" id="txtSamagra" class="form-control" placeholder="Enter Samagra Id" maxlength="9" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="page-size" style="margin-right: 10px; white-space: nowrap;">
                                Date /<br />
                                दिनांक
       
                            </label>
                            <input type="date" id="currentDate" name="name" value="" class="form-control" />
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group ">
                            <button class="btn w-lg btn-success btn-border " onclick="Searchbtn_Click(); return false;" style="margin-top: 3.2rem">Search</button>

                        </div>
                    </div>
                </div>
                <div id="Field1" style="display: none;">
                    <fieldset>
                        <legend>Student Information / छात्र जानकारी</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="txtName">
                                        Student Name /
                                        <br />
                                        छात्र का नाम
                                    </label>
                                    <input type="text" id="txtName" class="form-control" placeholder="Enter Name" value="Arjun" maxlength="50" readonly style="background-color: lightgray; color: black;">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="classSelect">
                                        Class /
                                        <br />
                                        कक्षा
                                    </label>
                                    <%--   <select id="classSelect" class="form-control" disabled="disabled">
                                        <option>Class 1</option>
                                        <option>Class 2</option>
                                        <option>Class 3</option>
                                        <option>Class 4</option>
                                        <option>Class 5</option>
                                        <option>Class 6</option>
                                        <option>Class 7</option>
                                        <option>Class 8</option>
                                    </select>--%>
                                    <input type="text" id="classSelect" class="form-control" value="Class 1" maxlength="50" readonly style="background-color: lightgray; color: black;">
                                </div>
                            </div>
                            <%--    <div class="col-md-3">
                                <div class="form-group">
                                    <label for="txtClassteacher">
                                        Class Teacher / 
                                        <br />
                                        कक्षा अध्यापक
                                    </label>
                                    <input type="text" id="txtClassteacher" class="form-control" placeholder="Enter Class Teacher" value="Rajesh Agrabal" maxlength="50" readonly style="background-color: lightgray; color: black;">
                                </div>
                            </div>--%>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="txtClassteacher">
                                        Monthly Attendance /<br />
                                        मासिक उपस्थिति
                                    </label>
                                    <input type="text" id="txtMonthalyAttedence" class="form-control" placeholder="Enter  Monthly Attendance " value="20" readonly style="background-color: lightgray; color: black;" maxlength="50">
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>


                <div id="Field2" style="display: none;">
                    <fieldset>
                        <legend>Wraise Student Complaint / छात्र शिकायत दर्ज करें</legend>
                        <div class="row">
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label>
                                        Enter Complaint /
                                        छात्र की शिकायत<span style="color: red">*</span></label>
                                    <input type="text" class="form-control datepicker" placeholder="Enter Complaint" />

                                </div>
                            </div>
                            <div class="mt-4" style="text-align: center;">
                                <button type="button" id="btnAdd" onclick="addData2()" class="Alert-Confirmation btn w-lg btn-success btn-border mr-3">Save</button>
                                <a href="StudentComplaint.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                            </div>
                        </div>

                    </fieldset>

                </div>



            </fieldset>
        </div>

    </div>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        let rowCount = 1;

        // Initialize Select2 for the first row
        $(document).ready(function () {
            $('.select2').select2();
        });

        // Function to add a new row
        function addRow() {
            rowCount++; // Increment row count
            const tableBody = document.getElementById("tableBody");

            const newRow = document.createElement("tr");
            newRow.id = "row" + rowCount;

            newRow.innerHTML = `
            <td>${rowCount}</td>
            <td>
                <select id="ddlSubject${rowCount}" class="form-control select2">
                    <option selected="selected" value="0">--Select--</option>
                    <option value="Science">Science</option>
                    <option value="Social Science">Social Science</option>
                    <option value="Mathes">Mathes</option>
                    <option value="English">English</option>
                    <option value="Hindi">Hindi</option>
                </select>
            </td>
            <td>
                <input type="text" class="form-control" id="txtHomework${rowCount}" placeholder="Enter Homework" />
            </td>
            <td>
                <button type="button" onclick="deleteRow(${rowCount})" class="btn btn-danger">Delete</button>
            </td>
        `;

            tableBody.appendChild(newRow);

            // Re-apply select2 to new elements
            $('.select2').select2();
        }

        // Function to delete a row
        function deleteRow(rowId) {
            const row = document.getElementById("row" + rowId);
            row.parentNode.removeChild(row);

            // Reorder Sr.No.
            const tableBody = document.getElementById("tableBody");
            const rows = tableBody.getElementsByTagName("tr");
            for (let i = 0; i < rows.length; i++) {
                rows[i].cells[0].innerHTML = i + 1; // Update Sr.No
            }
            rowCount--;
        }
</script>


    <script>
        function myFunction() {
            document.getElementById('OfficerName').style.display = "block";
            document.getElementById('SankulCode').style.display = "block";
            document.getElementById('btn1').style.display = "block";


            //var x = document.getElementById("mySelect").value;
            //document.getElementById("demo").innerHTML = "You selected: " + x;
        }
    </script>

    <script>
        function Searchbtn_Click() {
            var Field1 = document.getElementById('Field1');
            var Field2 = document.getElementById('Field2');
            /* var Fieldset1 = document.getElementById('Fieldset1');*/

            var txtSamagra = document.getElementById('txtSamagra').value.trim();

            if (txtSamagra !== '') {
                Field1.style.display = 'block';
                //Fieldset1.style.display = 'block';
                Field2.style.display = 'block';
            }
        }
    </script>
    <!-- Button to trigger SweetAlert -->

    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };

            // examples
            SweetAlert.prototype.init = function () {
                // Basic
                // Success Message
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to send this record?",
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            // Simulating a save operation (e.g., AJAX request)
                            // You can replace this with your actual save logic
                            setTimeout(function () {
                                // Show success message after save operation
                                Swal.fire({
                                    icon: 'success',
                                    title: 'Success!',
                                    text: 'Record saved successfully!',
                                    timer: 2000,
                                    willClose: () => {
                                        // Hide the table or perform any action
                                        var table = document.getElementById("Table1");
                                        document.getElementById('tbody').style.display = "none";
                                    }
                                });
                            }, 1000); // Simulating a 1 second delay for save operation
                        }
                    });
                });
            };

            // init
            $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),

            // initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
</script>
    <script>
        let currentRow = 0;
        let clickCount = 0; // To track the number of clicks
        const table = document.getElementById('mytable');
        const rows = table.querySelectorAll('tbody tr');
        document.getElementById('btnAdd').addEventListener('click', function () {
            clickCount++; // Increase click count on each button click
            if (clickCount === 1) {
                table.style.display = 'table'; // Show table on first click
            }
            if (clickCount <= 20) {
                if (currentRow < rows.length) {
                    rows[currentRow].style.display = 'table-row'; // Show the current row
                    currentRow++; // Move to the next row for the next click
                }
            } else {
                alert('Cannot enter data for more than 20 people!'); // Show alert after 20 clicks
            }
        });
    </script>

    <script> 
        function addData2() {
            //var Field1 = document.getElementById('Field1');
            //var Field2 = document.getElementById('Field2');
            var Fieldset1 = document.getElementById('Fieldset1');

            /*  var txtSamagra = document.getElementById('txtSamagra').value.trim();*/

            if (txtSamagra !== '') {
                /* Field1.style.display = 'block';*/
                Fieldset1.style.display = 'block';
                Field2.style.display = 'none';
            }
        }
    </script>
    <script>
        function setTodayDate() {
            // Get today's date in YYYY-MM-DD format
            const today = new Date().toISOString().split('T')[0];

            // Set the value of the date input to today's date
            document.getElementById('currentDate').value = today;
        }

        // Automatically set today's date when the page loads
        window.onload = function () {
            setTodayDate();
        };
</script>

</asp:Content>
