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
    <%-- <div class="row page-titles mb-4">
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
                        <li class="breadcrumb-item"><span>Monthly Pay Bill</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Monthly Pay Bill/

मासिक वेतन बिल          </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Monthly Pay Bill/मासिक वेतन बिल</legend>
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
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Month<br />माह<span style="color: red">*</span></label>
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
                            <label>Type of Post<br />पोस्ट का प्रकार<span style="color: red">*</span></label>
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
                   <%-- <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class=" btn-block btn btn-success  btn-rounded">Search</button>
                        </div>
                    </div>
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <a href="Rpt_MonthlyPayBill.aspx" class=" btn-block btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>--%>

                                          <hr />
<div class="col-md-12">
      <div class="form-group">
          <button type="button" onclick="myFunction()" class=" btn btn-success w-lg btn-rounded">Search</button>
     <a href="Rpt_MonthlyPayBill.aspx.aspx" class=" btn btn-outline-danger w-lg btn-rounded">Clear</a>
      </div>
  </div>
                </div>
            </fieldset>
            <fieldset id="show">
                <legend>Monthly Pay Bill Details (Report)/मासिक वेतन बिल विवरण (रिपोर्ट)</legend>
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

                 <%--   <div class="row justify-content-center">
                        <div class="col-md-4">
                            <h4><b>Monthly Pay Bill Details (Report)</b></h4>
                        </div>
                    </div>--%>

                    <div class="table-responsive">
                        <table class="table">
                               <tr style="white-space:nowrap !important;">
            <th>S.No.<br/>सरल क्र.</th>
            <th>Name Of Employee<br/>कर्मचारी का नाम</th>
            <th>Employee Code<br/>कर्मचारी कोड</th>
            <th>Designation<br/>पदनाम</th>
            <th>PAN No.<br/>पैन नंबर</th>
            <th>IFSC Code<br/>IFSC कोड</th>
            <th>Bank Account No.<br/>बैंक खाता संख्या</th>
            <th>EPF No.<br/>ईपीएफ नंबर</th>
            <th>UAN No.<br/>यूएएन नंबर</th>
            <th>GI No.<br/>जीआई नंबर</th>
            <th>Basic Pay ⟨₹⟩<br/>मूल वेतन ⟨₹⟩</th>
            <th>DEARNESS ALLOWANCE ⟨₹⟩<br/>महंगाई भत्ता ⟨₹⟩</th>
            <th>HOUSE RENT ALLOWANCE ⟨₹⟩<br/>घर किराए की सवारी ⟨₹⟩</th>
            <th>CONVEYANCE ALLOWANCE ⟨₹⟩<br/>यातायात भत्ता ⟨₹⟩</th>
            <th>ORD ALLOWANCE ⟨₹⟩<br/>ऑर्ड भत्ता ⟨₹⟩</th>
            <th>WASHING ALLOWANCE ⟨₹⟩<br/>कपड़े धोने की सवारी ⟨₹⟩</th>
            <th>SPECIAL PAY ⟨₹⟩<br/>विशेष वेतन ⟨₹⟩</th>
            <th>OTHER ALLOWANCE ⟨₹⟩<br/>अन्य भत्ता ⟨₹⟩</th>
            <th>TRIB ALLOWANCE ⟨₹⟩<br/>जनजातीय भत्ता ⟨₹⟩</th>
            <th>Total Pay ⟨₹⟩<br/>कुल वेतन ⟨₹⟩</th>
            <th>HANDICAP ALLOWANCE ⟨₹⟩<br/>विकलांगता भत्ता ⟨₹⟩</th>
            <th>CTC ⟨₹⟩<br/>सीटीसी ⟨₹⟩</th>
            <th>HOUSE LICENSE FEE ⟨₹⟩<br/>घर लाइसेंस शुल्क ⟨₹⟩</th>
            <th>EPF DEDUCTION ⟨₹⟩<br/>ईपीएफ कटौती ⟨₹⟩</th>
            <th>A.D.A. DEDUCTION ⟨₹⟩<br/>ए.डी.ए. कटौती ⟨₹⟩</th>
            <th>GROUP INSURANCE (GIS) ⟨₹⟩<br/>समूह बीमा (जीआईएस) ⟨₹⟩</th>
            <th>INCOME TAX ⟨₹⟩<br/>आयकर ⟨₹⟩</th>
            <th>PROFESSIONAL TAX<br/>व्यावसायिक कर</th>
            <th>RUNG. CHARGE<br/>रंग शुल्क</th>
            <th>Total Ded ⟨₹⟩<br/>कुल कटौती ⟨₹⟩</th>
            <th>VEHICLE ADVANCE ⟨₹⟩<br/>वाहन अग्रिम ⟨₹⟩</th>
            <th>STAFF ADVANCE ⟨₹⟩<br/>कर्मचारी अग्रिम ⟨₹⟩</th>
            <th>MISC. DEDUCTION ⟨₹⟩<br/>विविध कटौती ⟨₹⟩</th>
            <th>GRAIN ADVANCE ⟨₹⟩<br/>अनाज अग्रिम ⟨₹⟩</th>
            <th>FESTIVAL ADVANCE ⟨₹⟩<br/>त्योहार अग्रिम ⟨₹⟩</th>
            <th>HOUSE RENT/ LICENSE FEE ⟨₹⟩<br/>घर किराया / लाइसेंस शुल्क ⟨₹⟩</th>
            <th>H.B. LOAN ⟨₹⟩<br/>एच.बी. ऋण ⟨₹⟩</th>
            <th>RECOVERY ⟨₹⟩<br/>वसूली ⟨₹⟩</th>
            <th>VPF CONTRIBUTION ⟨₹⟩<br/>वीपीएफ योगदान ⟨₹⟩</th>
            <th>Net Pay ⟨₹⟩<br/>नेट वेतन ⟨₹⟩</th>
            <th>GENERAL PROVIDENT FUND (GPF) ⟨₹⟩<br/>सामान्य भविष्य निधि (जीपीएफ) ⟨₹⟩</th>
            <th>WATER CHARGES ⟨₹⟩<br/>पानी का शुल्क ⟨₹⟩</th>
            <th>PETROL CHARGE ⟨₹⟩<br/>पेट्रोल का शुल्क ⟨₹⟩</th>
            <th>EMPLOYEE INSURANCE ⟨₹⟩<br/>कर्मचारी बीमा ⟨₹⟩</th>
            <th>SPL. ADVANCE INTEREST ⟨₹⟩<br/>विशेष अग्रिम ब्याज ⟨₹⟩</th>
            <th>NATIONAL PENSION SYSTEM (NPS) ⟨₹⟩<br/>राष्ट्रीय पेंशन योजना (एनपीएस) ⟨₹⟩</th>
            <th>INTEREST PAY ADVANCE ⟨₹⟩<br/>अग्रिम ब्याज भुगतान ⟨₹⟩</th>
            <th>PAY ADVANCE ⟨₹⟩<br/>वेतन अग्रिम ⟨₹⟩</th>
            <th>MPEISS / ESIC ⟨₹⟩<br/>एमपीईआईएस / ईएसआईसी ⟨₹⟩</th>
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






