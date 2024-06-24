<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_EDLIReport.aspx.cs" Inherits="mis_Payroll_Rpt_EDLIReport" %>

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
        <%-- <div class="container-fluid">
              <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">EDLI For Year</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">EDLI For Year (1st Jan)</li>
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
                            <li class="breadcrumb-item"><span>EDLI For Year (1st Jan)</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <div class="card card-border-primary">
            <div class="card-header">
                <div class="row align-items-end">
                    <div class="col-lg-12">
                        <h5 class="card-title">EDLI For Year (1st Jan)/

वर्ष के लिए ई.डी.एल.आई. (1 जनवरी)</h5>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>EDLI REPORT/ई.डी.एल.आई. रिपोर्ट</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>EDLI For Year (1st Jan)<br />
                                    वर्ष के लिए ई.डी.एल.आई. (1 जनवरी)<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="2023">2023</option>
                                    <option value="2022">2022</option>
                                    <option value="2021">2021</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Last Salary Year<br />
                                    अंतिम वेतन वर्ष<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="2022">2022</option>
                                    <option value="2021">2021</option>
                                    <option value="2020">2020</option>
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
                        <%--<div class="col-md-1 mt-4">
                                <div class="form-group">
                                    <button type="button" onclick="myFunction()" class="btn btn-success  btn-rounded">Search</button>
                                </div>
                            </div>
                            <div class="col-md-1 mt-4">
                                <div class="form-group">
                                    <a href="Rpt_EDLIReport.aspx" class=" btn btn-danger  btn-rounded">Clear</a>
                                </div>
                            </div>--%>
                        <hr />
                        <div class="col-md-12">
                            <div class="form-group">
                                <button type="button" onclick="myFunction()" class=" btn btn-success w-lg btn-rounded">Search</button>
                                <a href="Rpt_EDLIReport.aspx" class=" btn btn-outline-danger w-lg btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>

                </fieldset>
                <fieldset id="show">
                    <legend>Payroll Salary Ledger Details (Report)/पेरोल वेतन बही विवरण (रिपोर्ट)</legend>
                    <%--   <div class="row justify-content-end">
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
                        </div>--%>
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
                                <tr style="white-space:nowrap;">
                                    <th>Sr.No<br />
                                        क्रमांक</th>
                                    <th>POLICY NO<br />
                                        पॉलिसी नंबर</th>
                                    <th>EDLI ID<br />
                                        EDLI आईडी</th>
                                    <th>RENEWAL DATE<br />
                                        नवीनीकरण तिथि</th>
                                    <th>EMPLOYEE NO<br />
                                        कर्मचारी नंबर</th>
                                    <th>UNIT NAME<br />
                                        इकाई का नाम</th>
                                    <th>EMPLOYEE NAME<br />
                                        कर्मचारी का नाम</th>
                                    <th>DOB<br />
                                        जन्म तिथि</th>
                                    <th>GENDER<br />
                                        लिंग</th>
                                    <th>APPOINTMENT DATE<br />
                                        नियुक्ति तिथि</th>
                                    <th>BASIC PAY<br />
                                        मूल वेतन</th>
                                    <th>DA<br />
                                        डी.ए.</th>
                                    <th>TOTAL PAY<br />
                                        कुल वेतन</th>
                                    <th>FREQUENCY<br />
                                        आवृत्ति</th>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td>59281</td>
                                    <td></td>
                                    <td>301/01/2023</td>
                                    <td></td>
                                    <td>Head Office</td>
                                    <td>Mr Sanjay Chandwani</td>
                                    <td>21/07/1986</td>
                                    <td>M</td>
                                    <td>65500.00</td>
                                    <td>22270.00</td>
                                    <td>87770.00</td>
                                    <td>12261.00</td>
                                    <td>M</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>59281</td>
                                    <td></td>
                                    <td>01/01/2023 </td>
                                    <td></td>
                                    <td>Head Office </td>
                                    <td>Mr Dilip Borse</td>
                                    <td>21/07/1986</td>
                                    <td>M</td>
                                    <td>65500.00</td>
                                    <td>12036.00</td>
                                    <td>47436.00</td>
                                    <td>12261.00</td>
                                    <td>M</td>
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
                                <li><strong>EDLI For Year (Dropdown)</strong>
                                    <ul>
                                        <li>User will be able to select <strong>EDLI For Year </strong>from dropdown. Data populated from <strong>Database Table</strong>. </li>
                                    </ul>
                                </li>
                                <li><strong>Last Salary Year (Dropdown)</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Last Salary Year </strong>from dropdown. Data populated from <strong>Database Table</strong>. </li>
                                    </ul>
                                </li>
                                <li><strong>Month (Dropdown)</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Month </strong>from dropdown. Data populated from <strong>Database Table</strong>. </li>

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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

