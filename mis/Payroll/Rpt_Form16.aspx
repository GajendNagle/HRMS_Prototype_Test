<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_Form16.aspx.cs" Inherits="mis_Payroll_Rpt_Form16" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style type="text/css">
        .declaration-label {
    display: block;
    margin-bottom: 10px; /* Adjust margin as needed */
    font-size: 14px; /* Adjust font size as needed */
    line-height: 1.4; /* Adjust line height as needed */
}
        .customtxtbox {
            min-height: 30px !important;
            border-radius: 0rem;
            border: 1px solid #bbbbbb;
            transition: none !important;
            height: calc(1em + 0.50rem + 1px);
        }

        .table > :not(caption) > * > * {
            padding: 0.5rem !important;
        }

        .bggrey {
            background-color: #e1e2e3 !important;
        }

        .rowheight {
            line-height: 0.1rem !important;
            font-size: 10px;
        }

        .rowheighttable1 {
            line-height: 0.1rem;
            font-size: 12px;
        }

        .labeltextred {
            color: red;
        }

        .textgreen {
            color: green;
        }
    </style>

    <style>
        #show {
            display: none;
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
 <%--   <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Form - 16</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">Form - 16</li>
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
                        <li class="breadcrumb-item"><span>Form - 16</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Form - 16/

फॉर्म-16     </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Form - 16/

फॉर्म-16 </legend>
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
                            <label>Office Name<br />कार्यालय का नाम<span style="color: red">*</span></label>
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
                            <label>Employee ID<br />कर्मचारी आय.डी<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">234343</option>
                                <option value="Bhopal">343433</option>
                                <option value="Bhopal">453443</option>
                                <option value="Bhopal">455233</option>
                                <option value="Bhopal">324334</option>
                                <option value="Bhopal">675655</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Year<br />वर्ष<span style="color: red">*</span></label>
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
                   <%-- <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class="btn-block btn btn-success  btn-rounded">Search</button>
                        </div>
                    </div>
                    <div class="col-md-2 mt-4 ">
                        <div class="form-group">
                            <a href="Rpt_EmployeeSalarySlip.aspx" class="btn-block btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>--%>
                        <hr />
    <div class="col-md-12">
        <div class="form-group">
            <button type="button" onclick="myFunction()" class=" btn btn-success w-lg btn-rounded">Search</button>
            <a href="Rpt_Form16.aspx.aspx" class=" btn btn-outline-danger w-lg btn-rounded">Clear</a>
        </div>
    </div>
                </div>
            </fieldset>
            <fieldset id="show">
                <legend>Form-16/
फॉर्म-16</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <%--<div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>--%>
                </div>
                <div class="row">
                    <div class="col-md-12 ">
                        <div class="table-responsive">
                            <table class="table border table-bordered rowheighttable1">
                                <tr>
                                    <td class="bggrey">
                                        <label>Name</label></td>
                                    <td>
                                        <label>DILIP KUMAR PARMAR</label></td>
                                    <td class="bggrey">
                                        <label>Place Of Posting</label></td>
                                    <td>
                                        <label>Head Office</label></td>
                                    <td class="bggrey">
                                        <label>Designation</label></td>
                                    <td>
                                        <label>Deputy manager(Accounts)</label></td>
                                </tr>
                                <tr>
                                    <td class="bggrey">
                                        <label>Pan No</label></td>
                                    <td>
                                        <label>ABEPP9137A</label></td>
                                    <td class="bggrey">
                                        <label>Accounting Year</label></td>
                                    <td>
                                        <label>2022-2023</label></td>
                                    <td class="bggrey">
                                        <label>Assessment Year</label></td>
                                    <td>
                                        <label>2023-2024</label></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 ">
                        <div class="table-responsive">
                            <table class="table border table-bordered rowheight">
                                <tr>
                                    <td colspan="4">
                                        <p><b>COMPUTATION OF TAXABLE INCOME </b><span class="textgreen">(Senior Employee as per the DOB in ERP)</span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td rowspan="4">
                                        <label>1</label></td>
                                    <td colspan="2">
                                        <label>a)Total gross pay(Including arrear)</label></td>
                                    <td>
                                        <input type="text" class="customtxtbox form-control" autocomplete="off" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <label>b)Income from house property</label></td>
                                    <td>
                                        <input type="text" class="customtxtbox form-control" autocomplete="off" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <label>c)Income from other source</label></td>
                                    <td>
                                        <input type="text" class="customtxtbox form-control" autocomplete="off" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <label>d)Medical Reimbursement</label></td>
                                    <td>
                                        <input type="text" class="customtxtbox form-control" autocomplete="off" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>2</label></td>
                                    <td colspan="2">
                                        <label>Allowable deduction 150000 or Less (Under section section 80C)</label></td>
                                    <td>
                                        <input type="text" class="customtxtbox form-control" autocomplete="off" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>3</label></td>
                                    <td colspan="2">
                                        <label>Standard deduction (5000)</label></td>
                                    <td>
                                        <label>5000</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td rowspan="8">
                                        <label>4</label></td>
                                    <td colspan="2">
                                        <label>Any other deduction as per IT Act(if applicable 80/DUnder Section 24/80DD</label></td>
                                    <td rowspan="8">
                                        <label>0</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>a)Interest on home loan(Section 24)</label></td>
                                    <td>
                                        <input type="text" class="customtxtbox form-control" autocomplete="off" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>b)Mediclain (Section 80D)</label></td>
                                    <td>
                                        <input type="text" class="customtxtbox form-control" autocomplete="off" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>c)Desabled dependanct (Section 80DD)</label></td>
                                    <td>
                                        <input type="text" class="customtxtbox form-control" autocomplete="off" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>d)Other (Covid-19, PM Relief Fund, etc.)</label></td>
                                    <td>
                                        <input type="text" class="customtxtbox form-control" autocomplete="off" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>e)Interest on fixed deposit u section 80TTA</label></td>
                                    <td>
                                        <input type="text" class="customtxtbox form-control" autocomplete="off" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>f)Interest on fixed deposit u section 80TTB</label></td>
                                    <td>
                                        <input type="text" class="customtxtbox form-control" autocomplete="off" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>g)HRA Rebate</label></td>
                                    <td>
                                        <input type="text" class="customtxtbox form-control" autocomplete="off" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>5</label></td>
                                    <td colspan="2">
                                        <label>Professional tax</label></td>
                                    <td>
                                        <label>2500.00</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>6</label></td>
                                    <td colspan="2">
                                        <label>Taxable income</label></td>
                                    <td>
                                        <label>1987476</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td rowspan="3">
                                        <label>7</label></td>
                                    <td colspan="2">
                                        <label>Total Payable tax</label></td>
                                    <td>
                                        <label class="labeltextred">Please click on calculate button.</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <label>cess(4%)</label></td>
                                    <td>
                                        <label></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <label>Total payable tax including cess</label></td>
                                    <td>
                                        <label></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4">
                                        <label>Note: (1)Employees claiming exemption for H.R.A. have to enclose original receipt of rent paid to the owner for evidence.</label></td>
                                </tr>
                                <tr>
                                   <td colspan="4">
    <label class="declaration-label">DECLARATION: I declare that the information given above is based on my best possible estimate and proposed investment payments/deposits will be made by the end of the financial year.</label>
</td>
                                </tr>
                                <tr>
                                    <td colspan="4" rowspan="1">
                                        <label></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <label><b>Date</b></label></td>
                                    <td>
                                        <label><b>Signature</b></label></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
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
                            <li><strong>Employee ID</strong>
                                <ul>
                                    <li>User will be able to select the <strong>Employee ID </strong>from the dropdown and the data will be populated from the<strong> Employee Master.</strong></li>
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
                        </ul>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>






