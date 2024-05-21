<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SalaryFinalizationProcess.aspx.cs" Inherits="mis_Payroll_SalaryFinalizationProcess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .deschide {
            display: none;
        }

        .hidden {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Salary Finalization</h4>
        </div>
        <%--<div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=SalaryFinalization" title="click to go on">Salary Finalization</a></li>
                    <li class="breadcrumb-item active">Salary Finalization Process</li>
                </ol>
            </div>
        </div>--%>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item active">Salary Finalization</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Reset Or Finalize Salary</legend>
                <div class="row justify-content-center">
                    <div class="col-md-3">
                        <div class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="customRadio1" name="customRadio" class="form-check-input">
                                <label class="form-check-label" for="customRadio11">Reset Salary</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="customRadio2" name="customRadio" class="form-check-input">
                                <label class="form-check-label" for="customRadio11">Generate Supplementary Salary</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="customRadio3" name="customRadio" class="form-check-input">
                                <label class="form-check-label" for="customRadio11">Generate Final Salary</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Office Type</label>
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
                            <label>Type of Post</label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Additional Director">Additional Director</option>
                                <option value="Joint Director">Joint Director</option>
                                <option value="Deputy Director">Deputy Director</option>
                                <option value="Asstt Director">Asstt Director</option>
                                <option value="Regional Librarian">Regional Librarian</option>
                                <option value="Planning Officer">Planning Officer</option>
                                <option value="Director (ELTI)">Director (ELTI)</option>
                                <option value="Director(SISE)">Director(SISE)</option>
                                <option value="Principal (PGBT)">Principal (PGBT)</option>
                                <option value="Principal (DIET)">Principal (DIET)</option>
                                <option value="Principal HSS">Principal HSS</option>
                                <option value="Principal HS">Principal HS</option>
                                <option value="Lecturer">Lecturer</option>
                                <option value="HM(MS)">HM(MS)</option>
                                <option value="Teacher (UDT)">Teacher (UDT)</option>
                                <option value="Music Teacher">Music Teacher</option>
                                <option value="Tabla Teacher">Tabla Teacher</option>
                                <option value="Craft Teacher">Craft Teacher</option>
                                <option value="HM(PS)">HM(PS)</option>
                                <option value="Asstt Teacher(LDT)">Asstt Teacher(LDT)</option>
                                <option value="Varistha Adhyapak">Varistha Adhyapak</option>
                                <option value="Adhyapak">Adhyapak</option>
                                <option value="Sahayak Adhyapak">Sahayak Adhyapak</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Year</label>
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
                            <label>Month</label>
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
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <button type="button" onclick="toggleDivs()" class=" btn-block btn btn-success  btn-rounded">Search</button>
                        </div>
                    </div>
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <a href="SalaryFinalizationProcess.aspx" class=" btn-block btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset class="hidden" id="resetsalary">
                <legend>Reset Salary</legend>
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
                                    <tr>
                                        <th>All<br />
                                            <input id="ContentBody_ctl08e" type="checkbox" name="ctl00$ContentBody$ctl06" /></th>
                                        <th>Sr.No.</th>
                                        <th>Employee-ID</th>
                                        <th>Employee Name</th>
                                        <th>Basic Salary ⟨₹⟩</th>
                                        <th>Payable Days</th>
                                        <th>Earning Total ⟨₹⟩</th>
                                        <th>Deduction Total ⟨₹⟩</th>
                                        <th>Net Salary ⟨₹⟩</th>
                                        <th>Action</th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input id="ContentBody_ct2l08" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                        </td>
                                        <td>1</td>
                                        <td>ABC125</td>
                                        <td>Balram Singh</td>
                                        <td>64600</td>
                                        <td>30</td>
                                        <td>91732.00</td>
                                        <td>15068.00</td>
                                        <td>76664.00</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input id="ContentBody_ctl068" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                        </td>
                                        <td>2</td>
                                        <td>SCDX236</td>
                                        <td>Anurag Raikwar</td>
                                        <td>19500 </td>
                                        <td>30</td>
                                        <td>28798.00</td>
                                        <td>3523.00</td>
                                        <td>25275.00</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-2 mt-4">
                        <div class="form-group">

                            <button type="button" class=" btn-block Alert-Reset btn btn-success btn-rounded">Reset Salary</button>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset class="hidden" id="supplementarysalary">
                <legend>Generate Supplementary Salary</legend>
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
                                    <tr>
                                        <th>All<br />
                                            <input id="ContentBody_ctdl08e" type="checkbox" name="ctl00$ContentBody$ctl06" /></th>
                                        <th>Sr.No.</th>
                                        <th>Employee-ID</th>
                                        <th>Employee Name</th>
                                        <th>Basic Salary ⟨₹⟩</th>
                                        <th>Payable Days</th>
                                        <th>Earning Total ⟨₹⟩</th>
                                        <th>Deduction Total ⟨₹⟩</th>
                                        <th>Net Salary ⟨₹⟩</th>
                                        <th>Action</th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input id="ContentBody4_ctl08" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                        </td>
                                        <td>1</td>
                                        <td>ABC125</td>
                                        <td>Balram Singh</td>
                                        <td>64600</td>
                                        <td>30</td>
                                        <td>91732.00</td>
                                        <td>15068.00</td>
                                        <td>76664.00</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input id="ContentBody_ctl048" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                        </td>
                                        <td>2</td>
                                        <td>SCDX236</td>
                                        <td>Anurag Raikwar</td>
                                        <td>19500 </td>
                                        <td>30</td>
                                        <td>28798.00</td>
                                        <td>3523.00</td>
                                        <td>25275.00</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-3 mt-4">
                        <div class="form-group">
                            <button type="button" class=" btn-block Alert-Supplymentry btn btn-success btn-rounded">Generate Supplementary Salary</button>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset class="hidden" id="finalsalary">
                <legend>Generate Final Salary</legend>
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
                                    <tr>
                                        <th>All<br />
                                            <input id="ContentBody_ctld08e" type="checkbox" name="ctl00$ContentBody$ctl06" /></th>
                                        <th>Sr.No.</th>
                                        <th>Employee-ID</th>
                                        <th>Employee Name</th>
                                        <th>Basic Salary ⟨₹⟩</th>
                                        <th>Payable Days</th>
                                        <th>Earning Total ⟨₹⟩</th>
                                        <th>Deduction Total ⟨₹⟩</th>
                                        <th>Net Salary ⟨₹⟩</th>
                                        <th>Action</th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input id="ContentBody_ctl054" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                        </td>
                                        <td>1</td>
                                        <td>ABC125</td>
                                        <td>Balram Singh</td>
                                        <td>64600</td>
                                        <td>30</td>
                                        <td>91732.00</td>
                                        <td>15068.00</td>
                                        <td>76664.00</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input id="ContentBody_ctl08" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                        </td>
                                        <td>2</td>
                                        <td>SCDX236</td>
                                        <td>Anurag Raikwar</td>
                                        <td>19500 </td>
                                        <td>30</td>
                                        <td>28798.00</td>
                                        <td>3523.00</td>
                                        <td>25275.00</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-3 mt-4">
                        <div class="form-group">
                            <button type="button" class=" btn-block Alert-Final btn btn-success btn-rounded">Generate Final Salary</button>
                        </div>
                    </div>
                </div>
            </fieldset>
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
                            <li><strong>Reset Salary (Radio Button)</strong>
                                <ul>
                                    <li>To reset the salary, after clicking on the radio button and searching, the reset salary data will appear in the grid.. </li>
                                </ul>
                            </li>
                            <li><strong>Generate SuppluMentry Salary (Radio Button)</strong>
                                <ul>
                                    <li>To Generate SuppluMentry salary, after clicking on the radio button and searching, the Generate SuppluMentry  salary data will appear in the grid.. </li>
                                </ul>
                            </li>
                            <li><strong>Generate Final Salary (Radio Button)</strong>
                                <ul>
                                    <li>To Generate Final salary, after clicking on the radio button and searching, the Generate Final salary data will appear in the grid.. </li>
                                </ul>
                            </li>
                            <li><strong>Office Name (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Office Name </strong>from dropdown. Data populated from <strong>Office Master </strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Type of Post (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Type of Post </strong>from dropdown. Data populated from <strong>Post Master </strong>. </li>
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
                            <li><strong>Search (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Search button.</li>
                                    <li>On Search button click <strong>selected radio button</strong> wise grid will be open </li>
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
        function toggleDivs() {
            var checkbox1 = document.getElementById("customRadio1");
            var checkbox2 = document.getElementById("customRadio2");
            var checkbox3 = document.getElementById("customRadio3");
            var resetsalary = document.getElementById("resetsalary");
            var supplementarysalary = document.getElementById("supplementarysalary");
            var finalsalary = document.getElementById("finalsalary");

            if (checkbox1.checked) {
                resetsalary.style.display = "block"
                supplementarysalary.style.display = "none";
                finalsalary.style.display = "none";
            } else if (checkbox2.checked) {
                resetsalary.style.display = "none";
                supplementarysalary.style.display = "block";
                finalsalary.style.display = "none";
            }
            else if (checkbox3.checked) {
                resetsalary.style.display = "none";
                supplementarysalary.style.display = "none";
                finalsalary.style.display = "block";
            }
            else {
                resetsalary.style.display = "none";
                supplementarysalary.style.display = "none";
                finalsalary.style.display = "none";
            }
        }
    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                $('.Alert-Reset').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Reset Salary?",
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
                                text: 'Salary reset Successfully!',
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
                $('.Alert-Supplymentry').click(function () {
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
                $('.Alert-Final').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Generate Final Salary?",
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


