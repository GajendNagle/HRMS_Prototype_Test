<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SalaryGenerateProcess_MonthlySalaryProcess.aspx.cs" Inherits="mis_Payroll_SalaryGenerateProcess_MonthlySalaryProcess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <script>
        function myFunction() {
            var x = document.getElementById("show");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
    <style>
        #show {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--   <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Monthly Salary Process</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=SalaryGenerate" title="click to go on">SalaryGenerate</a></li>
                    <li class="breadcrumb-item active">Monthly Salary Process</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">--%>
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
                            <a href="#Payroll" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Payroll</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#SalaryGenerate" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Payroll')">
                                <span>Salary Generate</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Monthly Salary Process</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Monthly Salary Process / मासिक वेतन प्रक्रिया
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Monthly Salary Generate / मासिक वेतन प्रक्रिया</legend>
                <div class="row align-items-end">

                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Office Type<br />
                                कार्यालय का प्रकार<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Head Office</option>
                                <option value="Bhopal">JOINT DIRECTORS</option>
                                <option value="Bhopal">DISTRICT EDUCATION OFFICERS</option>
                                <option value="Bhopal">BLOCK EDUCATION OFFICERS</option>
                                <option value="Bhopal">SANKUL/AEO</option>
                                <option value="Bhopal">SCHOOL</option>
                                <option value="Principal Secretary">Principal Secretary</option>
                                <option value="Secretary">Secretary</option>
                                <option value="Deputy Secretary">Deputy Secretary</option>
                                <option value="CPI">CPI</option>
                                <option value="CRSK">CRSK</option>
                                <option value="DPI">DPI</option>
                                <option value="Collector">Collector</option>
                                <option value="CEO, ZP">CEO, ZP</option>
                                <option value="DPC">DPC</option>
                                <option value="BRC">BRC</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Year<br />
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
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Month<br />
                                माह<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">January</option>
                                <option value="2">February</option>
                                <option value="3">March</option>
                                <option value="4">April</option>
                                <option value="5">May</option>
                                <option value="6">June</option>
                                <option value="7">July</option>
                                <option value="8">August</option>
                                <option value="9">September</option>
                                <option value="10">October</option>
                                <option value="11">November</option>
                                <option value="12">December</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Type of Post<br />
                                पोस्ट का प्रकार<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">All</option>
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
                    <%--   <div class="col-md-2 mt-4">
                        <div class="form-group">

                            <button type="button" onclick="myFunction()" class=" btn btn-success  btn-rounded btn-block">Search</button>
                        </div>
                    </div>
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <a href="SalaryGenerateProcess_MonthlySalaryProcess.aspx" class="btn btn-danger btn-rounded btn-block">Clear</a>
                        </div>
                    </div>--%>
                    <div class="col-md-12">
                        <hr />
                        <div class="form-group">
                            <!-- Search button triggers search and toggles divs -->
                            <button type="button" onclick="myFunction()" class="btn btn-success w-lg btn-border">Search</button>
                            <!-- Clear button (link) -->
                            <a href="SalaryGenerateProcess_MonthlySalaryProcess.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                        </div>
                    </div>

                </div>
            </fieldset>
            <div id="show">
                <fieldset>
                    <div class="row justify-content-end">
                        <div class="col-md-4 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-55">Excel</button>
                                <button class="btn btn-info btn-rounded w-55">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table">
                                    <tr style="white-space: nowrap !important;">
                                        <th>Sr.No.<br />
                                            सरल क्र</th>
                                        <th>
                                            <input id="ContentBody_ctl0f8" type="checkbox" name="ctl00$ContentBody$ctl06" />All<br />
                                            सभी
                                        </th>
                                        <th>Employee ID<br />
                                            कर्मचारी आय.डी</th>
                                        <th>Employee Name [Attendance Status]<br />
                                            कर्मचारी का नाम [उपस्थिति स्थिति]</th>
                                        <th>Basic Salary ⟨₹⟩<br />
                                            मूल वेतन ⟨₹⟩</th>
                                        <th>Payabl Day’s<br />
                                            देय दिवस</th>
                                        <th>Earning Total ⟨₹⟩<br />
                                            कुल कमाई ⟨₹⟩</th>
                                        <th>Deduction Total ⟨₹⟩<br />
                                            कटौती कुल ⟨₹⟩</th>
                                        <th>Net Salary ⟨₹⟩<br />
                                            शुद्ध वेतन ⟨₹⟩</th>
                                        <th>Salary Status<br />
                                            वेतन स्थिति</th>
                                        <th>Detail’s<br />
                                            विवरण</th>
                                        <th>Action<br />
                                            कार्रवाई</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>
                                            <input id="ContentBody_ctl08" type="checkbox" name="ctl00$ContentBody$ctl06" /></td>
                                        <td>E0025</td>
                                        <td>ABC</td>
                                        <td>24700</td>
                                        <td>30</td>
                                        <td>35904</td>
                                        <td>4409</td>
                                        <td>31495</td>
                                        <td>Generated</td>
                                        <td>
                                            <a href="#" class="btn" onclientclick="return false;"><i class="fas fa-eye"></i>View</a>
                                        </td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <hr />
                    <%--  <div class="row mt-4">

                        <div class="col-md-2">
                            <div class="form-group">
                                <button type="button" class="Alert-Generate btn btn-success btn-rounded  btn-block">GENERATE</button>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <button type="button" class="Alert-Hold  btn btn-success  btn-rounded  btn-block" style="color: orange;">HOLD</button>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <button type="button" class="Alert-Sendmsg  btn btn-success  btn-rounded  btn-block" style="color: yellow;">SEND SMS</button>
                            </div>
                        </div>
                    </div>--%>
                    <div class="col-md-12">
                        <div class="form-group">
                            <!-- Search button triggers search and toggles divs -->
                            <button type="button" class="Alert-Generate btn btn-success w-lg btn-border">GENERATE</button>
                            <button type="button" class="Alert-Hold  btn btn-outline-danger   w-lg btn-border">HOLD</button>
                            <button type="button" class="Alert-Sendmsg  btn btn-outline-warning  w-lg btn-border">SEND SMS</button>
                            <%-- <button type="button" onclick="toggleDivs()" class="btn btn-success w-lg btn-border">Search</button>--%>
                            <!-- Clear button (link) -->

                        </div>
                    </div>

                </fieldset>

            </div>
            <!--Description-->
            <fieldset runat="server">
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                            <li><strong>Office Type </strong>
                                <ul>
                                    <li>User will be able to select the <strong>Office Type </strong>from the dropdown which will automatically reflect from Office Type Master.</li>
                                </ul>
                            </li>
                            <li><strong>Office Name (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select the  <strong>Office Name</strong> from the dropdown which will automatically reflect from Office Master.</li>
                                </ul>
                            </li>
                            <li><strong>Year (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Year </strong>from dropdown. Year populated from <strong>Year Master</strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Month (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Month </strong>from dropdown. Month populated from <strong>Month Master </strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Type of post (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select the <strong>Type of Post Name </strong>from the dropdown which will automatically reflect from Post Master.</li>
                                </ul>
                            </li>
                            <li><strong>Search (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Search button.</li>
                                    <li>On Search button click Grid will be visible.</li>
                                </ul>
                            </li>
                            <li><strong>Clear (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Clear button.</li>
                                    <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                </ul>
                            </li>
                            <li><strong>Excel (Button)</strong>
                                <ul>
                                    <li>Excel button should be visible and user should be able to click.</li>
                                    <li>After clicking on the Excel button, showing the data will be export to Excel.</li>
                                </ul>
                            </li>
                            <li><strong>PDF (Button)</strong>
                                <ul>
                                    <li>PDF button should be visible and user should be able to click.</li>
                                    <li>After clicking on PDF button grid view data export in PDF.</li>
                                </ul>
                            </li>
                            <li><strong>Checkbox (Gridview)</strong>
                                <ul>
                                    <li>For employee attendance process it is mandatory to click on the checkbox in front of the data and on clicking the save button the data entry will be done.</li>
                                    <li>To save all the data at once, by clicking on the Select All checkbox, all the data can be saved at once.</li>
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
                            <li><strong>Generate (Button)</strong>
                                <ul>
                                    <li>User will check Checkbox, then click on Generate button.</li>
                                    <li>On Generate button click Monthly Salary will be Generated.</li>
                                </ul>
                            </li>
                            <li><strong>Hold (Button)</strong>
                                <ul>
                                    <li>User will check Checkbox, then click on Hold button.</li>
                                    <li>On Hold button click Monthly Salary will be Hold.</li>
                                </ul>
                            </li>
                            <li><strong>Send SMS (Button)</strong>
                                <ul>
                                    <li>User will check Checkbox, then click on Send SMS button.</li>
                                    <li>On Send SMS button click SMS will be sent.</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </fieldset>
            <!-- End Description -->
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">


    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                $('.Alert-Sendmsg').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Send SMS?",
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
                                text: 'SMS sent Successfully!',
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

                $('.Alert-Hold').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Hold Salary?",
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
                                text: 'Salary Holded Successfully!',
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
                $('.Alert-Generate').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Generate Salary?",
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
                                text: 'Salary Generated Successfully!',
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
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                $('.Alert-Delete').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Delete Details?",
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
                                text: 'Details Deleted Successfully!',
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
                        text: "Do you want to Edit Details?",
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



