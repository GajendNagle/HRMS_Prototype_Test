<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_MonthlyEarnDedDetail.aspx.cs" Inherits="mis_Payroll_Rpt_MonthlyEarnDedDetail" %>

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

    <div class="content-wrapper">
        <!-- Main content -->
        <div class="container-fluid">
      <%--      <div class="row page-titles mb-4">
                <div class="col-md-5 align-self-center">
                    <h4 class="text-themecolor ">Monthly Earning & Deduction Details Report</h4>
                </div>
                <div class="col-md-7 align-self-center text-end">
                    <div class="d-flex justify-content-end align-items-center">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                            <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                            <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=Reports" title="click to go on">Reports</a></li>
                            <li class="breadcrumb-item active">Monthly Earning &  Deduction Details Report</li>
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
                            <li class="breadcrumb-item"><span>Monthly Earning &  Deduction Details Report</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <div class="card card-border-primary">
            <div class="card-header">
                <div class="row align-items-end">
                    <div class="col-lg-12">
                        <h5 class="card-title">Monthly Earning &  Deduction Details Report/



मासिक आय एवं कटौती विवरण रिपोर्ट</h5>
                    </div>
                </div>
            </div>
            <div class="card-body">
                    <fieldset>
                        <legend>Monthly Earning & Deduction Details Report/
मासिक आय एवं कटौती विवरण रिपोर्ट</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Office Type<br />कार्यालय का प्रकार <span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="0">Select</option>
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
                                    <label>Year<br />वर्ष <span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="0">Select</option>
                                        <option value="2023">2023-24</option>
                                        <option value="2022">2022-23</option>
                                        <option value="2021">2021-22</option>
                                        <option value="2020">2020-21</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Month <br />माह <span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="0">Select</option>
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
                                    <label>Earning & Deduction Head<br />कमाई एवं कटौती शीर्ष<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="0">Select</option>
                                        <option value="1">DEARNESS ALLOWANCE (Earning)</option>
                                        <option value="2">HOUSE RENT ALLOWANCE (Earning)</option>
                                        <option value="3">CONVEYANCE ALLOWANCE (Earning)</option>
                                        <option value="4">ORD ALLOWANCE (Earning)</option>
                                        <option value="5">WASHING ALLOWANCE (Earning)</option>
                                        <option value="6">SPECIAL PAY (Earning)</option>
                                        <option value="7">OTHER ALLOWANCE (Earning)</option>
                                        <option value="8">EPF DEDUCTION (Deduction)</option>
                                        <option value="9">A.D.A. DEDUCTION (Deduction)</option>
                                        <option value="10">GROUP INSURANCE (GIS) (Deduction)</option>
                                        <option value="11">INCOME TAX (Deduction)</option>
                                        <option value="12">PROFESSIONAL TAX (Deduction)</option>
                                        <option value="13">RUNG. CHARGE (Deduction)</option>
                                        <option value="14">VEHICLE ADVANCE (Deduction)</option>
                                        <option value="16">STAFF ADVANCE (Deduction)</option>
                                        <option value="18">MISC. DEDUCTION (Deduction)</option>
                                        <option value="19">GRAIN ADVANCE (Deduction)</option>
                                        <option value="20">FESTIVAL ADVANCE (Deduction)</option>
                                        <option value="22">HOUSE RENT/ LICENSE FEE (Deduction)</option>
                                        <option value="23">H.B. LOAN (Deduction)</option>
                                        <option value="25">TRIB  ALLOWANCE (Earning)</option>
                                        <option value="27">HANDICAP  ALLOWANCE (Earning)</option>
                                        <option value="28">RECOVERY (Deduction)</option>
                                        <option value="29">CTC (Earning)</option>
                                        <option value="30">VPF CONTRIBUTION (Deduction)</option>
                                        <option value="31">GENERAL PROVIDENT FUND (GPF) (Deduction)</option>
                                        <option value="32">WATER CHARGES (Deduction)</option>
                                        <option value="33">PETROL CHARGE (Deduction)</option>
                                        <option value="34">EMPLOYEE INSURANCE (Deduction)</option>
                                        <option value="35">SPL. ADVANCE INTEREST (Deduction)</option>
                                        <option value="37">NATIONAL PENSION SYSTEM (NPS) (Deduction)</option>
                                        <option value="38">INTEREST PAY ADVANCE (Deduction)</option>
                                        <option value="36">PAY ADVANCE (Deduction)</option>
                                        <option value="39">HOUSE LICENSE FEE (Earning)</option>
                                        <option value="40">MPEISS / ESIC (Deduction)</option>
                                    </select>
                                    <small><span id="valddlEarnDeducHead" class="text-danger"></span></small>
                                </div>
                            </div>
                        </div>
                     <%--   <div class="row">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <button type="button" onclick="myFunction()" class="btn btn-success btn-block  btn-rounded">Search</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <a href="Rpt_MonthlyEarnDedDetail.aspx" class=" btn-block btn btn-danger  btn-rounded">Clear</a>
                                </div>
                            </div>
                        </div>--%>
                          <hr />
  <div class="col-md-12">
      <div class="form-group">
          <button type="button" onclick="myFunction()" class=" btn btn-success w-lg btn-rounded">Search</button>
          <a href="Rpt_MonthlyEarnDedDetail.aspx" class=" btn btn-outline-danger w-lg btn-rounded">Clear</a>
      </div>
  </div>
                    </fieldset>
                    <fieldset id="show">
                        <legend>Monthly Office Wise Single Head (Report)</legend>
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
                            <div class="table-responsive">
                                <table class="table">
                                   <tr>
    <th>Sr.No<br/>क्रमांक</th>
    <th>Employee Name<br/>कर्मचारी का नाम</th>
    <th>Designation<br/>पदनाम</th>
    <th>DEARNESS ALLOWANCE (Earning)<br/>महंगाई भत्ता (अर्जन)</th>
</tr>

                                    <tr>
                                        <td>1</td>
                                        <td>Pradeep jatav</td>
                                        <td>Asst. Grade-3</td>
                                        <td>15708.00</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Aman Patidar</td>
                                        <td>Asst. Grade-2</td>
                                        <td>17220.00</td>

                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Akash Patidar</td>
                                        <td>Vehicle Driver</td>
                                        <td>19362.00</td>
                                    </tr>
                                    <tr>
                                        <td>Total</td>
                                        <td></td>
                                        <td></td>
                                        <td>52290</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="ContentBody_dcp">
                        <legend>Description</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="main-ul">
                                    <li><strong>Office Type (Dropdown)</strong>
                                        <ul>
                                            <li>User will be able to select the  <strong>Office Type</strong> from the dropdown which will automatically reflect<strong>Office Type Master.</strong> </li>
                                        </ul>
                                    </li>
                                    <li><strong>Year (Dropdown)</strong>
                                        <ul>
                                            <li>User will be able to select <strong>Year </strong>from dropdown. Data populated from <strong>Database Table</strong>. </li>
                                        </ul>
                                    </li>
                                    <li><strong>Month (Dropdown)</strong>
                                        <ul>
                                            <li>User will be able to select <strong>Month </strong>from dropdown. Data populated from <strong>Database Table</strong>. </li>

                                        </ul>
                                    </li>
                                    <li><strong>Earn Deduction Type (Dropdown) </strong>
                                        <ul>
                                            <li>User will be able to select <strong>Earn Deduction Type </strong>from dropdown. Data populated from <strong>Earning and Deduction Master</strong>. </li>
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
                                    <li><strong>Searchbox (searchable box)</strong>
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
        </div>
 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

