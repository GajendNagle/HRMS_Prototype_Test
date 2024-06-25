<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_IncomeTax.aspx.cs" Inherits="mis_Payroll_Rpt_IncomeTax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        #show {
            display: none;
        }
    </style>
    <style>
        .deschide {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--<div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Income Tax Report</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">Income Tax Report</li>
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
                        <li class="breadcrumb-item"><span>Income Tax Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Income Tax Report/
आयकर रिपोर्ट</h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Income Tax Report Office Wise/आयकर रिपोर्ट कार्यालय-वार</legend>
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
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Month<br />
                                माह<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">January-February-March</option>
                                <option value="Bhopal">April-May-June</option>
                                <option value="Bhopal">July-August-September</option>
                                <option value="Bhopal">October-November-December</option>
                            </select>
                        </div>
                    </div>


                    <%--   <div class="col-md-3 mt-4">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class=" btn btn-success  btn-rounded">Search</button>
                            <a href="Rpt_IncomeTax.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>--%>
                    <hr />
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class=" btn btn-success w-lg btn-rounded">Search</button>
                            <a href="Rpt_IncomeTax.aspx.aspx" class=" btn btn-outline-danger w-lg btn-rounded">Clear</a>
                        </div>
                    </div>

                </div>
            </fieldset>
            <div id="show">
                <fieldset>
                    <legend>Report: INCOME TAX (Deduction) Details (January-February-March-2023) of Head Office/रिपोर्ट: प्रधान कार्यालय का आयकर (कटौती) विवरण (जनवरी-फरवरी-मार्च-2023)</legend>
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
                                    <tr style="white-space:nowrap;">
                                        <th>Sr.No.<br />
                                            क्रमांक</th>
                                        <th>Employee Name<br />
                                            कर्मचारी का नाम</th>
                                        <th>Designation<br />
                                            पद</th>
                                        <th>Pan No.<br />
                                            पैन नंबर</th>
                                        <th>Jan Earning<br />
                                            जनवरी कमाई</th>
                                        <th>Feb Earning<br />
                                            फरवरी कमाई</th>
                                        <th>Mar Earning<br />
                                            मार्च कमाई</th>
                                        <th>Total Earning<br />
                                            कुल कमाई</th>
                                        <th>Jan Deduction<br />
                                            जनवरी कटौती</th>
                                        <th>Feb Deduction<br />
                                            फरवरी कटौती</th>
                                        <th>Mar Deduction<br />
                                            मार्च कटौती</th>
                                        <th>Total Deduction<br />
                                            कुल कटौती</th>
                                    </tr>

                                    <tr>
                                        <td>1</td>
                                        <td>Sunil Bujurk</td>
                                        <td>Asst. Grade-3</td>
                                        <td>ASIPS0219H</td>
                                        <td>103461.00</td>
                                        <td>103625.00</td>
                                        <td>103661.00</td>
                                        <td>310747.00</td>
                                        <td>33000.00</td>
                                        <td>33000.00</td>
                                        <td>31000.00</td>
                                        <td>97000.00</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Ram Bharos Yadav</td>
                                        <td>Stenographer</td>
                                        <td>AAPPC4856M</td>
                                        <td>109877.00</td>
                                        <td>109929.00</td>
                                        <td>109929.00</td>
                                        <td>329735.00</td>
                                        <td>45000.00</td>
                                        <td>45000.00</td>
                                        <td>45000.00</td>
                                        <td>136000.00</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Mr Rishiram Ranabhat </td>
                                        <td>Asst. Grade-1 </td>
                                        <td>ABPPK5506R</td>
                                        <td>161057.00</td>
                                        <td>161057.00</td>
                                        <td>161057.00</td>
                                        <td>483171.00</td>
                                        <td>41000.00</td>
                                        <td>41000.00</td>
                                        <td>42000.00</td>
                                        <td>124000.00</td>
                                    </tr>
                                </table>
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
                                    <li>User will be able to select the <strong>Office Type </strong>from the dropdown which will automatically reflect from Office Type Master.</li>
                                </ul>
                            </li>
                            <li><strong>Year (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Year </strong>from dropdown.</li>
                                </ul>
                            </li>
                            <li><strong>Month (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Month </strong>from dropdown.</li>
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
                            <li><strong>Grid</strong>
                                <ul>
                                    <li>The data of income tax being deducted on employee's monthly earnings will be visible quarterly.</li>
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
                            <li><strong>Searchbox (Searcheble box)</strong>
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

