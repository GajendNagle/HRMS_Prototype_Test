<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_MonthlyPayBill.aspx.cs" Inherits="mis_Payroll_Rpt_MonthlyPayBill" %>

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
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Monthly Pay Bill</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">Monthly Pay Bill</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Monthly Pay Bill</legend>
                <div class="row">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Office Type<span style="color: red">*</span></label>
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
                            <label>Year<span style="color: red">*</span></label>
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
                            <label>Month<span style="color: red">*</span></label>
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
                            <label>Type of Post<span style="color: red">*</span></label>
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
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class=" btn-block btn btn-success  btn-rounded">Search</button>
                        </div>
                    </div>
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <a href="Rpt_MonthlyPayBill.aspx" class=" btn-block btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="show">
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

                    <div class="row justify-content-center">
                        <div class="col-md-4">
                            <h4><b>Monthly Pay Bill Details (Report)</b></h4>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table">
                            <tr>
                                <th>SNo.</th>
                                <th>Name Of Employee</th>
                                <th>Employee Code</th>
                                <th>Designation</th>
                                <th>PAN No.</th>
                                <th>IFSC Code</th>
                                <th>Bank Account No.</th>
                                <th>EPF No.</th>
                                <th>UAN No.</th>
                                <th>GI No.</th>
                                <th>Basic Pay ⟨₹⟩</th>
                                <th>DEARNESS ALLOWANCE⟨₹⟩</th>
                                <th>HOUSE RENT ALLOWANCE ⟨₹⟩</th>
                                <th>CONVEYANCE ALLOWANCE ⟨₹⟩</th>
                                <th>ORD ALLOWANCE ⟨₹⟩</th>
                                <th>WASHING ALLOWANCE ⟨₹⟩</th>
                                <th>SPECIAL PAY ⟨₹⟩</th>
                                <th>OTHER ALLOWANCE ⟨₹⟩</th>
                                <th>TRIB ALLOWANCE⟨₹⟩</th>
                                <th>Total Pay ⟨₹⟩</th>
                                <th>HANDICAP ALLOWANCE ⟨₹⟩</th>
                                <th>CTC ⟨₹⟩</th>
                                <th>HOUSE LICENSE FEE ⟨₹⟩</th>
                                <th>EPF DEDUCTION ⟨₹⟩</th>
                                <th>A.D.A. DEDUCTION ⟨₹⟩</th>
                                <th>GROUP INSURANCE (GIS) ⟨₹⟩</th>
                                <th>INCOME TAX ⟨₹⟩</th>
                                <th>PROFESSIONAL TAX</th>
                                <th>RUNG. CHARGE</th>
                                <th>Total Ded ⟨₹⟩</th>
                                <th>VEHICLE ADVANCE ⟨₹⟩</th>
                                <th>STAFF ADVANCE ⟨₹⟩</th>
                                <th>MISC. DEDUCTION ⟨₹⟩</th>
                                <th>GRAIN ADVANCE ⟨₹⟩</th>
                                <th>FESTIVAL ADVANCE ⟨₹⟩</th>
                                <th>HOUSE RENT/ LICENSE FEE ⟨₹⟩</th>
                                <th>H.B. LOAN⟨₹⟩</th>
                                <th>RECOVERY⟨₹⟩</th>
                                <th>VPF CONTRIBUTION ⟨₹⟩</th>
                                <th>Net Pay ⟨₹⟩</th>
                                <th>GENERAL PROVIDENT FUND (GPF) ⟨₹⟩</th>
                                <th>WATER CHARGES ⟨₹⟩</th>
                                <th>PETROL CHARGE ⟨₹⟩</th>
                                <th>EMPLOYEE INSURANCE⟨₹⟩</th>
                                <th>SPL. ADVANCE INTEREST ⟨₹⟩</th>
                                <th>NATIONAL PENSION SYSTEM (NPS) ⟨₹⟩</th>
                                <th>INTEREST PAY ADVANCE ⟨₹⟩</th>
                                <th>PAY ADVANCE ⟨₹⟩</th>
                                <th>MPEISS / ESIC ⟨₹⟩</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Dilip Kumar </td>
                                <td>115</td>
                                <td>Asst. Manager</td>
                                <td>ANBPS0000B</td>
                                <td>SBIN0016153</td>
                                <td>00000000000123'</td>
                                <td>5.563E+13</td>
                                <td>1E+11</td>
                                <td></td>
                                <td>101800</td>
                                <td>42756</td>
                                <td>3325</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>147881</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>17347</td>
                                <td>0</td>
                                <td>0</td>
                                <td>15000</td>
                                <td>250</td>
                                <td>0</td>
                                <td>32597</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>115284</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Ankit Mishra </td>
                                <td>420</td>
                                <td>Stenographer</td>
                                <td>ADMPS7353K</td>
                                <td>SBIN0011208</td>
                                <td>'10637969557''</td>
                                <td>5.563E+13</td>
                                <td>1E+11</td>
                                <td></td>
                                <td>98400</td>
                                <td>41328</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>139728</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>16767</td>
                                <td>0</td>
                                <td>0</td>
                                <td>15000</td>
                                <td>250</td>
                                <td>0</td>
                                <td>42827</td>
                                <td>0</td>
                                <td>0</td>
                                <td>10000</td>
                                <td>0</td>
                                <td>0</td>
                                <td>600</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>96901</td>
                                <td>0</td>
                                <td>210</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td></td>
                            </tr>
                        </table>
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
                            <li><strong>Year (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Year </strong>from dropdown. Year populated from <strong>Year Master<</strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Month (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Month </strong>from dropdown. Month populated from <strong>Month Master< </strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Type of post (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select the <strong>Type of Post Name </strong>from the dropdown which will automatically reflect from Post Master.</li>
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






