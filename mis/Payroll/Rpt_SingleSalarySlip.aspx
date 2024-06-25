<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_SingleSalarySlip.aspx.cs" Inherits="mis_Payroll_Rpt_SingleSalarySlip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style type="text/css">
        .tdbgcolor {
            background-color: #e1e2e3 !important;
        }

        .tablerow {
            line-height: 0.1rem;
            font-size: 10px;
        }
    </style>
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

        .table > :not(caption) > * > * {
            padding: 0.5rem !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--<div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Employee Salary Slip</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">Employee Salary Slip</li>
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
                            <a href="#PayrollReports" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Payroll')">
                                <span>Reports
                                </span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Employee Salary Slip</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Employee Salary Slip/

कर्मचारी वेतन पर्ची</h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Single Salary Slip/एकल वेतन पर्ची</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Office Type<br />
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
                            <label>
                                Employee Name<br />
                                कर्मचारी का नाम<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Abhishek</option>
                                <option value="Bhopal">Rohan</option>
                                <option value="Bhopal">Shyam</option>
                                <option value="Bhopal">Ram</option>
                                <option value="Bhopal">Sahil</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Year<br />
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
                            <label>
                                Month<br />
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
                    <hr />
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class=" btn btn-success w-lg btn-rounded">Search</button>
                            <a href="Rpt_SingleSalarySlip.aspx" class=" btn btn-outline-danger w-lg btn-rounded">Clear</a>
                        </div>
                    </div>
                    <%--<div class="col-md-2">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class="btn-block btn btn-success btn-rounded">Search</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <a href="Rpt_SingleSalarySlip.aspx" class="btn-block btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>--%>
                </div>
            </fieldset>
            <div id="show">
                <fieldset>
                    <legend>Salary Slip/ वेतन पर्ची:</legend>
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
                        <div class="col-md-12 ">
                            <div class="table-responsive">
                                <table class="table border table-bordered">
                                    <tr>
                                        <td class="tdbgcolor">
                                            <label>NAME OF EMPLOYEE:</label>
                                        </td>
                                        <td>
                                            <label>SHRI SAJI VARGHESE</label>
                                        </td>
                                        <td class="tdbgcolor">
                                            <label>BANK ACCOUNT NUMBER:</label>
                                        </td>
                                        <td>
                                            <label>03021004411</label>
                                        </td>
                                        <td class="tdbgcolor">
                                            <label>EPF/UAN:</label>
                                        </td>
                                        <td>
                                            <label>-</label>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="tdbgcolor">
                                            <label>FATHER'S/HUSBAND NAME:</label>
                                        </td>
                                        <td>
                                            <label>LATE MR PV VARKEY</label>
                                        </td>
                                        <td class="tdbgcolor">
                                            <label>BANK NAME:</label>
                                        </td>
                                        <td>
                                            <label>STATE BANK OF INDIA</label>
                                        </td>
                                        <td class="tdbgcolor">
                                            <label>G.INS NUMBER:</label>
                                        </td>
                                        <td>
                                            <label>-</label>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="tdbgcolor">
                                            <label>DESIGNATION:</label>
                                        </td>
                                        <td>
                                            <label>ASST. GRADE-1</label>
                                        </td>
                                        <td class="tdbgcolor">
                                            <label>IFSC CODE:</label>
                                        </td>
                                        <td>
                                            <label>SBIN0030005</label>
                                        </td>
                                        <td class="tdbgcolor">
                                            <label>NET SALARY:</label>
                                        </td>
                                        <td>
                                            <label>70052</label>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="tdbgcolor">
                                            <label>EMPLOYEE CODE:</label>
                                        </td>
                                        <td>
                                            <label>E00083</label>
                                        </td>
                                        <td colspan="4">
                                            <label></label>
                                        </td>
                                    </tr>
                                </table>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 ">
                            <div class="table-responsive">
                                <table class="table border table-bordered tablerow">
                                    <tr>
                                        <td colspan="2">PAY</td>
                                        <td colspan="2">DEDUCTIONS</td>
                                    </tr>
                                    <tr>
                                        <td class="tdbgcolor">
                                            <label>BASIC SALARY:</label></td>
                                        <td>
                                            <label>80000</label></td>
                                        <td class="tdbgcolor">
                                            <label>EPF DECUCTION:</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td class="tdbgcolor">
                                            <label>DEARNESS ALLOWANCE:</label></td>
                                        <td>
                                            <label>25578</label></td>
                                        <td class="tdbgcolor">
                                            <label>A.D.A. DECUCTION:</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td class="tdbgcolor">
                                            <label>HOUSE RENT ALLOWANCE:</label></td>
                                        <td>
                                            <label>1924</label></td>
                                        <td class="tdbgcolor">
                                            <label>GROUP INSURANCE:</label></td>
                                        <td>
                                            <label>200</label></td>
                                    </tr>
                                    <tr>
                                        <td class="tdbgcolor">
                                            <label>CONVEYANCE ALLOWANCE:</label></td>
                                        <td>
                                            <label>0</label></td>
                                        <td class="tdbgcolor">
                                            <label>INCOME TAX:</label></td>
                                        <td>
                                            <label>2500</label></td>
                                    </tr>
                                    <tr>
                                        <td class="tdbgcolor">
                                            <label>ORD ALLOWANCE:</label></td>
                                        <td>
                                            <label>0</label></td>
                                        <td class="tdbgcolor">
                                            <label>PROFESSIONAL TAX :</label></td>
                                        <td>
                                            <label>250</label></td>
                                    </tr>
                                    <tr>
                                        <td class="tdbgcolor">
                                            <label>WASHING ALLOWANCE:</label></td>
                                        <td>
                                            <label>0</label></td>
                                        <td class="tdbgcolor">
                                            <label>RUNG. CHARGE:</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td class="tdbgcolor">
                                            <label>SPECIAL PAY:</label></td>
                                        <td>
                                            <label>0</label></td>
                                        <td class="tdbgcolor">
                                            <label>VEHICLE ADVANCE:</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td class="tdbgcolor">
                                            <label>OTHER ALLOWANCE:</label></td>
                                        <td>
                                            <label>0</label></td>
                                        <td class="tdbgcolor">
                                            <label>STAFF ADVANCE:</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td class="tdbgcolor">
                                            <label>TRIB ALLOWANCE:</label></td>
                                        <td>
                                            <label>0</label></td>
                                        <td class="tdbgcolor">
                                            <label>MISC. DEDUCTION:</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td class="tdbgcolor">
                                            <label>HANDICAP ALLOWANCE:</label></td>
                                        <td>
                                            <label>0</label></td>
                                        <td class="tdbgcolor">
                                            <label>GRAIN DEDUCTION:</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td class="tdbgcolor">
                                            <label>CTC:</label></td>
                                        <td>
                                            <label>0</label></td>
                                        <td class="tdbgcolor">
                                            <label>FESTIVAL ADVANCE:</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td class="tdbgcolor">
                                            <label>HOUSE LICENSE FEE:</label></td>
                                        <td>
                                            <label>0</label></td>
                                        <td class="tdbgcolor">
                                            <label>HOUSE RENT/LICENSE FEE:</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td class="tdbgcolor">
                                            <label>TOTAL PAY:</label></td>
                                        <td class="tdbgcolor">
                                            <label>88402</label></td>
                                        <td class="tdbgcolor">
                                            <label>H.B. LOAD:</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <label></label>
                                        </td>

                                        <td class="tdbgcolor">
                                            <label>RECOVERY:</label></td>
                                        <td>
                                            <label>2500</label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <label></label>
                                        </td>
                                        <td class="tdbgcolor">
                                            <label>VPF CONTRIBUTION:</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <label></label>
                                        </td>
                                        <td class="tdbgcolor">
                                            <label>GENERAL PROVIDENT FUND (GPD):</label></td>
                                        <td>
                                            <label>3000</label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <label></label>
                                        </td>
                                        <td class="tdbgcolor">
                                            <label>WATER CHARGES:</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <label></label>
                                        </td>
                                        <td class="tdbgcolor">
                                            <label>PETROL CHARGE:</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <label></label>
                                        </td>
                                        <td class="tdbgcolor">
                                            <label>EMPLOYEE INSURANCE:</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <label></label>
                                        </td>
                                        <td class="tdbgcolor">
                                            <label>SPL. ADVANCE INTEREST:</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <label></label>
                                        </td>
                                        <td class="tdbgcolor">
                                            <label>NATIONAL PENSION SYSTEM(NPS) :</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <label></label>
                                        </td>
                                        <td class="tdbgcolor">
                                            <label>INTEREST PAY ADVANCE :</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <label></label>
                                        </td>
                                        <td class="tdbgcolor">
                                            <label>PAY ADVANCE :</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <label></label>
                                        </td>
                                        <td class="tdbgcolor">
                                            <label>MPEISS/ESIC:</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <label></label>
                                        </td>
                                        <td class="tdbgcolor">
                                            <label>LIC PREMIUM:</label></td>
                                        <td>
                                            <label>0</label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <label></label>
                                        </td>
                                        <td class="tdbgcolor">
                                            <label>TOTAL DEDUCTION:</label></td>
                                        <td class="tdbgcolor">
                                            <label>8450</label></td>
                                    </tr>
                                </table>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>DOF SIGNATUTE</label>
                                    </div>
                                    <div class="col-md-12">
                                        <label>OFFICE SEAL </label>
                                    </div>
                                    <div class="col-md-12  mt-4">
                                        <label>THIS IS A COMPUTER GENERATED PAYSLIP</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <fieldset id="dcp" runat="server">
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                            <li><strong>Office Type </strong>
                                <ul>
                                    <li>User will be able to select the <strong>Office Type </strong>from the dropdown and the data will be populated from the<strong> Office Type Master.</strong></li>
                                </ul>
                            </li>
                            <li><strong>Employee Name</strong>
                                <ul>
                                    <li>User will be able to select the <strong>Employee Name </strong>from the dropdown and the data will be populated from the <strong>Employee Registration</strong></li>
                                </ul>
                            </li>
                            <li><strong>Year (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Year </strong>from dropdown. Data populated from <strong>Database Table</strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Month (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Month </strong>from dropdown. Data populated from <strong>Database Table </strong>. </li>
                                </ul>
                            </li>

                            <li><strong>Search </strong>
                                <ul>
                                    <li>User will Search data as per selected field.</li>
                                    <li>After click on Search button data will be visible in grid view.</li>
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
                                    <li>After clicking on Excel button grid view data export in Excel.</li>
                                </ul>
                            </li>
                            <li><strong>PDF (Button)</strong>
                                <ul>
                                    <li>PDF button should be visible and user should be able to click.</li>
                                    <li>After clicking on PDF button grid view data export in PDF.</li>
                                </ul>
                            </li>
                            <li><strong>Searchbox (Searchable box)</strong>
                                <ul>
                                    <li>Users can search for any text value, and only the relevant text related to the search will be displayed .</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

