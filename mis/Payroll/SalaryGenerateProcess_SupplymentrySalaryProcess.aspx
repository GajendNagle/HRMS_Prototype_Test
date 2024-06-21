<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SalaryGenerateProcess_SupplymentrySalaryProcess.aspx.cs" Inherits="mis_Payroll_SalaryGenerateProcess_SupplymentrySalaryProcess" %>

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
            <h4 class="text-themecolor ">Supplymentry Salary Process</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=SalaryGenerate" title="click to go on">SalaryGenerate</a></li>
                    <li class="breadcrumb-item active">Supplymentry Salary Process</li>
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
                    <li class="breadcrumb-item"><span>Supplymentry Salary Process</span></li>
                </ol>
            </div>
        </div>
    </div>
</div>
<div class="card card-border-primary">
    <div class="card-header">
        <div class="row align-items-end">
            <div class="col-lg-12">
                <h5 class="card-title">Supplymentry Salary Process/सप्लाईमेंट्री वेतन प्रक्रिया
                </h5>
            </div>
        </div>
    </div>
    <div class="card-body">
            <fieldset>
                <legend>Supplymentry Salary Generate/सप्लाईमेंट्री वेतन जनरेट करें</legend>
                <div class="row">
                   
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Office Type<br />कार्यालय का प्रकार</label>
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
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Year<br />वर्ष</label>
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
                            <label>Month<br />
माह</label>
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
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Type of Post<br />पोस्ट का प्रकार</label>
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
                  <%--  <div class="col-md-2 mt-4">
                        <div class="form-group">

                            <button type="button" onclick="myFunction()" class=" btn-block btn btn-success  btn-rounded">Search</button>
                        </div>
                    </div>
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <a href="SalaryGenerateProcess_SupplymentrySalaryProcess.aspx" class=" btn-block btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>--%><hr />
                                        <div class="col-md-12">
    <div class="form-group">
        <!-- Search button triggers search and toggles divs -->
        <button type="button"  onclick="myFunction()" class="btn btn-success w-lg btn-border">Search</button>
        <!-- Clear button (link) -->
        <a href="SalaryGenerateProcess_SupplymentrySalaryProcess.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
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
                                  <tr style="white-space:nowrap !important;">
                                        <th>All<br />सब<input id="ContentBody_ctl08e" type="checkbox" name="ctl00$ContentBody$ctl06" /></th>
                                        <th>Sr.No.<br />सरल क्र</th>

                                        <th>Employee ID/<br />कर्मचारी आयडी</th>
                                        <th>Employee Name [Attendance Status]<br />कर्मचारी का नाम [उपस्थिति स्थिति]</th>
                                        <th>Basic Salary ⟨₹⟩<br />मूल वेतन ⟨₹⟩</th>
                                        <th>Payabl Day’s<br />देय दिवस</th>
                                        <th>Earning Total ⟨₹⟩<br />कुल कमाई ⟨₹⟩</th>
                                        <th>Deduction Total ⟨₹⟩<br />कटौती कुल ⟨₹⟩</th>
                                        <th>Net Salary ⟨₹⟩<br />शुद्ध वेतन ⟨₹⟩</th>
                                        <th>Salary Status<br />वेतन स्थिति</th>
                                        <th>Detail’s<br />विवरण</th>
                                        <th>Action<br />कार्रवाई</th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input id="ContentBody_ctl08" type="checkbox" name="ctl00$ContentBody$ctl06" /></td>
                                        <td>1</td>
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
                    </div><hr />
                    <div class="row mt-12">
                        <div class="col-md-3">
                            <div class="form-group">
                                <button type="button" class=" w-lg Alert-Generate btn btn-success  btn-rounded">Generate Supplymentry Salary</button>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <!--Description-->
            <fieldset id="dcp" runat="server">
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
                                    <li>User should be able to click on <strong>Search button</strong>.</li>
                                    <li>On <strong>Search button</strong> click Grid will be visible.</li>
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
                                    <li><strong>PDF button </strong>should be visible and user should be able to click.</li>
                                    <li>After clicking on PDF button grid view data <strong>export in PDF</strong>.</li>
                                </ul>
                            </li>
                            <li><strong>Checkbox (Checkbox)</strong>
                                <ul>
                                    <li><strong>Checkbox</strong> is always be <strong>Unchecked</strong>.</li>
                                    <li>The user must have the right to check or uncheck the Checkbox. </li>
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
                            <li><strong>Generate Supplymentry Salary (Button)</strong>
                                <ul>
                                    <li><strong>Generate Supplymentry Salary button</strong> should be visible and user should be able to click.</li>
                                    <li>After clicking on Generate Supplymentry Salary button <strong>Checked </strong>data will be saved.</li>
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
                $('.Alert-Generate').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Generate Supplymentry Salary?",
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
