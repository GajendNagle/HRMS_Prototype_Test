<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_LeaveAllocation.aspx.cs" Inherits="mis_Leave_Mgnt_Mst_LeaveAllocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #show {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row">
        <div class="col-md-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#LeaveProcess" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Leave Process</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Leave Allocation</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">Leave Allocation / लीव स्टेटस<br />
                            </h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Leave Allocation</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Year /<br />
                                        वर्ष<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">2023</option>
                                        <option value="Bhopal">2024</option>
                                        <option value="Bhopal">2025</option>
                                        <option value="Bhopal">2026</option>
                                        <option value="Bhopal">2027</option>
                                        <option value="Bhopal">2028</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Leave Type /
                                        <br />
                                        लीव का प्रकार<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Casual Leave</option>
                                        <option value="Bhopal">Maternity Leave</option>
                                        <option value="Bhopal">Marrige Leave</option>
                                        <option value="Bhopal">Paternity Leave</option>
                                        <option value="Bhopal">Medical Leave</option>
                                        <option value="Bhopal">Earned Leave</option>
                                        <option value="Bhopal">Leave Without Pay</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Class /
                                        <br />
                                        कक्षा<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Class I</option>
                                        <option value="Bhopal">Class II</option>
                                        <option value="Bhopal">Class III</option>
                                        <option value="Bhopal">Class IV</option>
                                        <option value="Bhopal">Class V</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Type of Post /
                                        <br />
                                        पोस्ट का प्रकार<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Regular/Permanent">Regular/Permanent</option>
                                        <option value="Fixed Employee">Fixed Employee</option>
                                        <option value="Contigent Employee">Contigent Employee</option>
                                        <option value="Samvida Employee">Samvida Employee</option>
                                        <option value="Theka Shramik">Theka Shramik</option>
                                        <option value="Outsource Employee">Outsource Employee</option>
                                        <option value="Deputation Employee">Deputation Employee</option>
                                        <option value="Contractual Employee">Contractual Employee</option>
                                        <option value="Daily Wage's Employee">Daily Wage's Employee</option>
                                        <option value="Dally Wages Federation">Dally Wages Federation</option>
                                        <option value="Job Rate Employee">Job Rate Employee</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Period /<br />
                                        अवधि<span style="color: red">*</span></label>
                                    <select id="dropdown" onchange="calculateResult()" class="form-control select2">
                                        <option value="0">--Select--</option>
                                        <option value="1">Monthly</option>
                                        <option value="3">Quarterly</option>
                                        <option value="6">Half Yearly</option>
                                        <option value="12">Yearly</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Leave Days Period Wise /<br />
                                        अवधि के अनुसार छुट्टी के दिन<span style="color: red">*</span></label>
                                    <input id="inputNumber" oninput="calculateResult()" runat="server" type="text" class="form-control" autocomplete="off" placeholder="Enter Leave Days" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Total Leave Days Year Wise<span style="color: red">*</span></label>
                                    <input id="result" type="text" disabled class="form-control" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Leave Carry Forward<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Yes</option>
                                        <option value="Bhopal">No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Max Leave Balance<span style="color: red">*</span></label>
                                    <input type="text" class="form-control" autocomplete="off" placeholder="Enter Leave Balance" />
                                </div>
                            </div>
                            <hr />
                            <div class="col-md-12">
                                <div class="form-group">
                                    <button type="button" class=" Alert-Save btn btn-outline-success btn-border w-lg">Save</button>
                                    <a href="Mst_LeaveAllocation.aspx" class=" btn btn-outline-danger btn-border w-lg">Clear</a>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="show">
                        <legend>Leave Allocation Details</legend>
                        <div class="row justify-content-end">

                            <div class="col-md-1">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-100">Excel</button>
                                </div>
                            </div>
                            <div class="col-md-1">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-100">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <th>Sr.No.</th>
                                            <th>Year</th>
                                            <th>Leave Type</th>
                                            <th>Class</th>
                                            <th>Type Of Post</th>
                                            <th>Period</th>
                                            <th>Leave Days Period Wise</th>
                                            <th>Total Leave Days Year Wise</th>
                                            <th>Leave Carry Forward</th>
                                            <th>Max Leave Balance</th>
                                            <th>Action</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>2023</td>
                                            <td>Casual Leave (CL)</td>
                                            <td>Class I</td>
                                            <td>Regular Permanent</td>
                                            <td>Monthly</td>
                                            <td>1.0</td>
                                            <td>12.0</td>
                                            <td>No</td>
                                            <td>0.0</td>
                                            <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>2023</td>
                                            <td>Casual Leave (CL)</td>
                                            <td>Class IV</td>
                                            <td>Regular Permanent</td>
                                            <td>Monthly</td>
                                            <td>1.0</td>
                                            <td>12.0</td>
                                            <td>No</td>
                                            <td>0.0</td>
                                            <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <!--Description-->
                    <fieldset id="dcp" runat="server">
                        <legend>Description</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="main-ul">
                                    <li><strong>Year</strong>
                                        <ul>
                                            <li>User will be able to Select <strong>Year </strong>. Data populate from Year Master</li>
                                        </ul>
                                    </li>
                                    <li><strong>Leave Type </strong>
                                        <ul>
                                            <li>User will be able to Select the <strong>Leave Type </strong>. Data populate from Leave Type Master</li>
                                        </ul>
                                    </li>
                                    <li><strong>Class</strong>
                                        <ul>
                                            <li>User will be able to Select the <strong>Class</strong>. Data populate from Class Master</li>
                                        </ul>
                                    </li>
                                    <li><strong>Type of Post</strong>
                                        <ul>
                                            <li>User will be able to Select the <strong>Type of Post</strong>. Data populate from Type of Post Master</li>
                                        </ul>
                                    </li>
                                    <li><strong>Period</strong>
                                        <ul>
                                            <li>User will be able to select the <strong>Period</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Leave Days Period Wise</strong>
                                        <ul>
                                            <li>User will be able to enter the <strong>Leave Days Period Wise</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Total Leave Days Year Wise</strong>
                                        <ul>
                                            <li>Total Leave Days Year Wise<strong></strong> will be automatically calculated.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Leave Carry Forward</strong>
                                        <ul>
                                            <li>User will be able to select Leave Carry Forward the <strong>Leave Carry Forward</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Max Leave Balances</strong>
                                        <ul>
                                            <li>User will be able to enter the <strong>Max Leave Balances</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Excel</strong>
                                        <ul>
                                            <li>Excel button should be visible and user should be able to click.</li>
                                            <li>After clicking on Excel button grid view data export in Excel.</li>
                                        </ul>
                                    </li>
                                    <li><strong>PDF</strong>
                                        <ul>
                                            <li>PDF button should be visible and user should be able to click.</li>
                                            <li>After clicking on PDF button grid view data export in PDF.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Searchbox</strong>
                                        <ul>
                                            <li>Users can search for any text value, and only the relevant text related to the search will be displayed .</li>
                                        </ul>
                                    </li>
                                    <li><strong>Save (Button)</strong>
                                        <ul>
                                            <li>User should be able to click on save button.</li>
                                            <li>Click on save button form all mandatory filed should be validate in process.</li>
                                            <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                            <li>If click on Yes – record will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!")..</li>
                                            <li>If click on NO the record will not be saved and will return to the same page.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Clear (Button)</strong>
                                        <ul>
                                            <li>User will be able to click on Clear button.</li>
                                            <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                        </ul>
                                    </li>
                                    <li><strong>Action Gridview(Edit)</strong>
                                        <ul>
                                            <li>Click The Edit Icon - A Pop Up Message Will Open -Popup Message - Do You Want To Update The details?</li>
                                            <li>On Choose Yes Button option, The Form Will Come In The Editable format.</li>
                                            <li>After Editing The details in the from,  On Click The Update Button,( A Pop Up Message Will Open. )- Message- Do You Want To Update details.</li>
                                            <li>Choose YES - Popup Message - Data Updated Successfully.</li>
                                            <li>Choose No - Data will be not Update.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Action Gridview(Delete)</strong>
                                        <ul>
                                            <li>If the user wants to delete a record – the user can click on the delete icon. Will permanently delete the record.</li>
                                            <li>A Pop Up Message Will Be Shown - Popup Message - Do You Want To Delete The record ?</li>
                                            <li>On Doing YES,</li>
                                            <li>The record Will Be Deleted And The Popup Message Will Be Shown</li>
                                            <li>Popup Message - Record Deleted Successfully.</li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </fieldset>
                    <!-- End Description -->
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        function calculateResult() {
            // Get values from dropdown and input
            var dropdownValue = parseFloat(document.getElementById("dropdown").value);
            var inputValue = parseFloat(document.getElementById("inputNumber").value);

            // Check if the values are valid numbers
            if (!isNaN(dropdownValue) && !isNaN(inputValue)) {
                // Perform multiplication
                var result = dropdownValue * inputValue;

                // Display the result in the label
                document.getElementById("result").innerText = result;
            } else {
                // Display an error message if the input is not a valid number
                document.getElementById("result").innerText = "Invalid input. Please enter valid numbers.";
            }
        }
    </script>

    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Save Details?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',

                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Details Saved Successfully!',
                                timer: 2000

                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )

                        }

                        var x = document.getElementById("show");
                        if (x.style.display === "none") {
                            x.style.display = "block";
                        } else {
                            x.style.display = "block";
                        }
                    })
                });
                $('.Alert-Delete').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Delete Record?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record Deleted Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                        }
                    })
                });
                $('.Alert-Edit').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Edit Record?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        //if (result.value) {
                        //    Swal.fire({
                        //        type: 'success',
                        //        title: 'Success!',
                        //        text: 'Salary Generated Successfully!',
                        //        timer: 2000
                        //        // animation: false,
                        //        // customClass: {
                        //        //     popup: 'animated tada'
                        //        // }
                        //    }
                        //    )
                        //}
                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
</asp:Content>



