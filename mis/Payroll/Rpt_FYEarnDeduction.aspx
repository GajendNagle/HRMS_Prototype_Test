<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_FYEarnDeduction.aspx.cs" Inherits="mis_Payroll_Rpt_FYEarnDeduction" %>

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
        <%--  <div class="container-fluid">
            <div class="row page-titles mb-4">
                <div class="col-md-5 align-self-center">
                    <h4 class="text-themecolor ">FY Earn Deduction Detail</h4>
                </div>
                <div class="col-md-7 align-self-center text-end">
                    <div class="d-flex justify-content-end align-items-center">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                            <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                            <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=Reports" title="click to go on">Reports</a></li>
                            <li class="breadcrumb-item active">FY Earn Deduction Report</li>
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
                            <li class="breadcrumb-item"><span>FY Earn Deduction Report</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <div class="card card-border-primary">
            <div class="card-header">
                <div class="row align-items-end">
                    <div class="col-lg-12">
                        <h5 class="card-title">FY Earn Deduction Report/

वित्तीय वर्ष आय कटौती रिपोर्ट</h5>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>FY Earn Deduction Detail/वित्तीय वर्ष में आय कटौती विवरण
                    </legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Office Type<br />
                                    कार्यालय का प्रकार<span style="color: red;"> *</span></label>
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
                                <label>Type of Post
                                    <br />
                                    पोस्ट का प्रकार<span style="color: red;">*</span></label>
                                <select class="form-control select2 ">
                                    <option value="0">Select</option>
                                    <option value="Permanent">Regular/Permanent</option>
                                    <option value="Fixed Employee">Fixed Employee(स्थाई कर्मी)</option>
                                    <option value="Contigent Employee">Contigent Employee</option>
                                    <option value="Samvida Employee">Samvida Employee</option>
                                    <option value="Theka Shramik">Theka Shramik</option>
                                    <option value="Outsource Employee">Outsource Employee</option>
                                    <option value="Other Employee">Other Employee</option>
                                    <option value="Deputation Employee">Deputation Employee</option>
                                    <option value="Daily Wages Employee">Daily Wages Employee</option>
                                    <option value="Daily Wages Federation">Daily Wages Federation</option>
                                    <option value="Job Rate Employee">Job Rate Employee</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Year<br />
                                    वर्ष<span style="color: red;"> *</span></label>
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
                                <label>Earn Deduction Type<br />
                                    कटौती प्रकार अर्जित करें<span style="color: red;"> *</span></label>
                                <select class="form-control select2">
                                    <option selected="selected" value="Select">Select</option>
                                    <option value="Earning">Earning</option>
                                    <option value="Deduction">Deduction</option>

                                </select>
                            </div>
                        </div>
                    </div>
                    <%--  <div class="row">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <button type="button" onclick="myFunction()" class="btn btn-success btn-block  btn-rounded">Search</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <a href="Rpt_FYEarnDeduction.aspx" class="btn btn-danger btn-block  btn-rounded">Clear</a>
                                </div>
                            </div>
                        </div>--%>
                    <hr />
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class=" btn btn-success w-lg btn-rounded">Search</button>
                            <a href="Rpt_FYEarnDeduction.aspx" class=" btn btn-outline-danger w-lg btn-rounded">Clear</a>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="show">
                    <legend>FY Earn Deduction Detail (Report)</legend>
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


                        <center>
                            <h5>Detail of HOUSE RENT ALLOWANCE From 1-APR-2022 to 31-Mar-2023 for Head Office<br />प्रधान कार्यालय के लिए 1-अप्रैल-2022 से 31-मार्च-2023 तक मकान किराया भत्ते का विवरण</h5>
                        </center>
                    </div>
                    <div class="row">
                        <div class="table-responsive">
                            <table class="table">

                                <tr style=" white-space:nowrap;">
                                    <th>Sr.No<br />
                                        क्रमांक</th>
                                    <th>EMPLOYEE NAME<br />
                                        कर्मचारी का नाम</th>
                                    <th>Arrear<br />
                                        अतिरिक्त</th>
                                    <th>APRIL<br />
                                        अप्रैल</th>
                                    <th>MAY<br />
                                        मई</th>
                                    <th>JUNE<br />
                                        जून</th>
                                    <th>JULY<br />
                                        जुलाई</th>
                                    <th>AUGUEST<br />
                                        अगस्त</th>
                                    <th>SEPTEMBER<br />
                                        सितंबर</th>
                                    <th>OCTOBER<br />
                                        अक्टूबर</th>
                                    <th>NOVEMBER<br />
                                        नवंबर</th>
                                    <th>DECEMBER<br />
                                        दिसंबर</th>
                                    <th>JANUARY<br />
                                        जनवरी</th>
                                    <th>FEBRUARY<br />
                                        फरवरी</th>
                                    <th>MARCH<br />
                                        मार्च</th>
                                    <th>Total<br />
                                        कुल</th>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td>Mr Ram Gopal Sharma</td>
                                    <td>0.00</td>
                                    <td>15124.00</td>
                                    <td>15124.00</td>
                                    <td>15124.00</td>
                                    <td>1400.00</td>
                                    <td>00.0</td>
                                    <td>500</td>
                                    <td>1011</td>
                                    <td>101800</td>
                                    <td>42756</td>
                                    <td>3325</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>46000.00</td>



                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Swaroop Singh Rajput</td>
                                    <td>0.00 </td>
                                    <td>15124.00</td>
                                    <td>15124.00</td>
                                    <td>15124.00</td>
                                    <td>15124.00</td>
                                    <td>15124.00</td>
                                    <td>5000</td>
                                    <td>1011</td>
                                    <td>98400</td>
                                    <td>41328</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>60000.00</td>


                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Arun Kumar Mishra</td>
                                    <td>0.00</td>
                                    <td>4200.00</td>
                                    <td>4200.00</td>
                                    <td>4200.00</td>
                                    <td>5000.00</td>
                                    <td>1063</td>
                                    <td>0</td>
                                    <td>00.00</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>17600</td>
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
                                        <li>User will be able to select the  <strong>Office Type</strong> from the dropdown which will automatically reflect <strong>Office Type Master.</strong></li>
                                    </ul>
                                </li>
                                <li><strong>Type of Post  (Dropdown)</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Type of Post  </strong>from dropdown. Data populated from <strong>Designation Type Master</strong>. </li>
                                    </ul>
                                </li>
                                <li><strong>Year (Dropdown)</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Year </strong>from dropdown. Data populated from <strong>Database Table</strong>. </li>
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

