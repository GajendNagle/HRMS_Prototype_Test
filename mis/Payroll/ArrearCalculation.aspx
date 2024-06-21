<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ArrearCalculation.aspx.cs" Inherits="mis_Payroll_ArrearCalculation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #show {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--  <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Arrear Calculation</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=ArrearCalculation" title="click to go on">Arrear</a></li>
                    <li class="breadcrumb-item active">Arrear Calculation</li>
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
                            <a href="#ArrearCalculation" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Payroll')">
                                <span>Arrear</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Arrear Calculation</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Arrear Calculation/बकाया गणना
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Auto Arrear Calculation/अपना बकाया गणना</legend>
                <div class="row">

                    <div class="col-md-3">
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
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Type of Post<br />
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
                            <label>Pay Commission<br />
                                वेतन आयोग<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Fourth Pay Commission">Fourth Pay Commission</option>
                                <option value="Fifth Pay Commission">Fifth Pay Commission</option>
                                <option value="Sixth Pay Commission">Sixth Pay Commission</option>
                                <option value="Seventh Pay Commission">Seventh Pay Commission</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>From Year<br />
                                वर्ष से<span style="color: red">*</span></label>
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
                            <label>From Month<br />
                                माह से<span style="color: red">*</span></label>
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
                            <label>To Year<br />
                                साल तक<span style="color: red">*</span></label>
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
                            <label>To Month<br />
                                माह  तक<span style="color: red">*</span></label>
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
                            <label>Arrear Type<br />
                                बकाया प्रकार<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Salary Arrear</option>
                                <option value="Bhopal">DA Arrear</option>
                                <option value="Bhopal">Increment Arrear</option>
                                <option value="Bhopal">Other</option>
                            </select>
                        </div>
                    </div>
                    <%--<div class="col-md-2 mt-4">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class=" btn-block btn btn-success  btn-rounded">Search</button>
                        </div>
                    </div>
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <a href="ArrearCalculation.aspx" class=" btn-block btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>--%>
                    <hr />
                    <div class="col-md-12">
                        <div class="form-group">
                            <!-- Search button triggers search and toggles divs -->
                            <button type="button" onclick="myFunction()" class="btn btn-success w-lg btn-border">Search</button>
                            <!-- Clear button (link) -->
                            <a href="ArrearCalculation.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <br />
            <div id="show">
                <%--   <div class="row justify-content-center">
                    <div class="col-md-6">
                        <div class="form-group">
                            <h4>
                                <b>Detail of DA from April-2023 to July-2023 for Head Office</b></h4>
                        </div>
                    </div>
                </div>--%>
                <fieldset>
                    <legend>Detail of DA from April-2023 to July-2023 for Head Office/प्रधान कार्यालय के लिए अप्रैल-2023 से जुलाई-2023 तक डीए का विवरण</legend>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <fieldset>
                                    <legend>ORDER NUMBER AND DATE/ऑर्डर संख्या और दिनांक</legend>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Order No.<br />ऑर्डर संख्या<span style="color: red"></span></label>
                                                <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Order No." />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Order  Date<br />ऑर्डर  दिनांक<span style="color: red"></span></label>
                                                <input type="date" class="form-control" placeholder="" />
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <fieldset>
                                <legend>PAYMENT MONTH AND YEAR/भुगतान माह और वर्ष
 </legend>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Year<br />भुगतान  वर्ष
 </label>
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
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Month<br />भुगतान माह 
 </label>
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
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Details/ विवरण</legend>
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
                            <div class="form-group">
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr style="white-space:nowrap !important">
                                            <th>Sr.No.<br />
                                                सरल क्र</th>
                                            <th>Employee Name<br />
                                                कर्मचारी नाम</th>
                                            <th>Previous DA %<br />
                                                पिछला डीए %</th>
                                            <th>Current DA %<br />
                                                वर्तमान डीए %</th>
                                            <th>Diff_DA arrear %<br />डिफ_डीए बकाया %</th>
                                            <th>April-2023 ⟨₹⟩<br />अप्रैल-2023 ⟨₹⟩</th>
                                            <th>May-2023 ⟨₹⟩<br />
मई-2023 ⟨₹⟩</th>
                                            <th>June-2023 ⟨₹⟩<br />जून-2023 ⟨₹⟩</th>
                                            <th>Total DA ⟨₹⟩<br />कुल डीए ⟨₹⟩</th>
                                            <th>Total EPF ⟨₹⟩<br />कुल ई.पी.एफ ⟨₹⟩</th>
                                            <th>Net Amount ⟨₹⟩<br />शुद्ध राशि ⟨₹⟩</th>
                                            <th>Total Basic Salary⟨₹⟩<br />कुल मूल वेतन⟨₹⟩</th>
                                            <th>Action<br />कार्रवाई</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Dheeraj Uikey</td>
                                            <td>42.00</td>
                                            <td>44.00</td>
                                            <td>2.00</td>
                                            <td>1180</td>
                                            <td>1180</td>
                                            <td>1180</td>
                                            <td>3540</td>
                                            <td>425</td>
                                            <td>3115</td>
                                            <td>88500</td>
                                            <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Dilip Borse</td>
                                            <td>42.00</td>
                                            <td>44.00</td>
                                            <td>2.00</td>
                                            <td>1180</td>
                                            <td>1180</td>
                                            <td>1180</td>
                                            <td>3540</td>
                                            <td>425</td>
                                            <td>3115</td>
                                            <td>88500</td>
                                            <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--     <div class="row justify-content-center">
                        <div class="col-md-2 mt-4">
                            <div class="form-group">
                                <button type="button" class="Alert-Confirmation btn-block btn btn-success  btn-rounded">Save</button>
                            </div>
                        </div>
                        <div class="col-md-2 mt-4">
                            <div class="form-group">
                                <a href="ArrearCalculation.aspx" class=" btn-block btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>--%><hr />
                    <div class="col-md-12">
                        <div class="form-group">
                            <!-- Search button triggers search and toggles divs -->
                            <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border">Save</button>
                            <!-- Clear button (link) -->
                            <a href="ArrearCalculation.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                        </div>
                    </div>
                </fieldset>
            </div>
            <!--Description-->
            <fieldset>
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
                            <li><strong>Type of Post (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Type of Post </strong>from dropdown. Data populated from <strong>Post Master </strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Pay Commission (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Pay Commission </strong>from dropdown. Data populated from <strong>Pay Commission Master </strong>. </li>
                                </ul>
                            </li>
                            <li><strong>From Year (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>From Year </strong>from dropdown. Year populated from <strong>Year Master</strong>. </li>
                                </ul>
                            </li>
                            <li><strong>From Month (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>From Month </strong>from dropdown. Month populated from <strong>Month Master </strong>. </li>
                                </ul>
                            </li>
                            <li><strong>To Year (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>To Year </strong>from dropdown. Year populated from <strong>Year Master</strong>. </li>
                                </ul>
                            </li>
                            <li><strong>To Month (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>To Month </strong>from dropdown. Month populated from <strong>Month Master</strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Arrear Type (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Arrear Type </strong>from dropdown. Data populated from <strong>Arrear Master </strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Search (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Search button.</li>
                                    <li>On Search button click ORDER NUMBER AND DATE & PAYMENT MONTH AND YEAR will be open.</li>
                                </ul>
                            </li>
                            <li><strong>Clear (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Clear button.</li>
                                    <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                </ul>
                            </li>
                            <li><strong>ORDER NUMBER AND DATE</strong>
                                <ul>
                                    <li>User will be able to Enter <strong>Value </strong>in ORDER NUMBER.</li>
                                    <li>User will be able to select Date, the field should be in a calendar format</li>
                                </ul>
                            </li>
                            <li><strong>PAYMENT MONTH AND YEAR</strong>
                                <ul>
                                    <li>User will be able to select <strong>Year </strong>from dropdown. Data populated from <strong>Year Master</strong>. </li>
                                    <li>User will be able to select <strong>Month </strong>from dropdown. Data populated from <strong>Month Master</strong>. </li>
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
                            <li><strong>Save (Button)</strong>
                                <ul>
                                    <li>User should be able to click on save button.</li>
                                    <li>On save button click form field should be validated.</li>
                                    <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                    <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!")..</li>
                                    <li>If click on NO the data will not be saved and will return to the same page.</li>
                                </ul>
                            </li>
                            <li><strong>Clear (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Clear button.</li>
                                    <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
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
        function myFunction() {
            var x = document.getElementById("show");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
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


