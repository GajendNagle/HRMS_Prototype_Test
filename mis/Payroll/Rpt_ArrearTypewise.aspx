<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_ArrearTypewise.aspx.cs" Inherits="mis_Payroll_ArrearReport_Rpt_ArrearTypewise" %>

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
            <h4 class="text-themecolor ">Arrear Type Wise Report</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">Arrear Type Wise Report</li>
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
                        <li class="breadcrumb-item"><span>Arrear Type Wise Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Arrear Type Wise Report/

बकाया प्रकार वार रिपोर्ट   </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Arrear Type Wise Report/बकाया प्रकार वार रिपोर्ट</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Office Name<br />
                                कार्यालय का नाम<span style="color: red">*</span></label>
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
                                Type of Post<br />
                                पोस्ट का प्रकार<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">All</option>
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
                </div>
                <%--   <div class="row justify-content-center">
                    <div class="col-md-2">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class=" btn btn-success btn-rounded">Search</button>
                            <a href="Rpt_ArrearTypewise.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>--%>
                <hr />
                <div class="col-md-12">
                    <div class="form-group">
                        <button type="button" onclick="myFunction()" class=" btn btn-success w-lg btn-rounded">Search</button>
                        <a href="Rpt_ArrearTypewise.aspx.aspx" class=" btn btn-outline-danger w-lg btn-rounded">Clear</a>
                    </div>
                </div>
            </fieldset>
            <div id="show">
                <fieldset>
                    <legend>Report/रिपोर्ट:</legend>
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
                    <%-- <div class="row justify-content-center">
                        <div class="col-md-3">
                            <label>Madhya Pradesh State Education</label>
                        </div>
                        <div class="col-md-3">
                            <label>Pay Sheet for the Month of [Head Office]</label>
                        </div>
                        <div class="col-md-3">
                            <label>From March-2023 to April-2023</label>
                        </div>
                    </div>--%>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table">
                                    <tr style="white-space: nowrap;">
                                        <th>Name of Employee<br />
                                            कर्मचारी का नाम</th>
                                        <th>Month<br />
                                            महीना</th>
                                        <th>Basic Pay<br />
                                            मूल वेतन</th>
                                        <th>D.A. Paid<br />
                                            दी गई डी.ए.</th>
                                        <th>D.A. to Be Paid<br />
                                            भुगतान के लिए डी.ए.</th>
                                        <th>Difference<br />
                                            अंतर</th>
                                        <th>E.P.F.<br />
                                            ई.पी.एफ.</th>
                                        <th>Gross Payment<br />
                                            कुल भुगतान</th>
                                    </tr>
                                    <tr>
                                        <td rowspan="4">Laxman Prasad Gautam [Asst. Grade-3] [100353720640]</td>
                                        <%-- <td>March-2023</td>
                                        <td>29500.00</td>
                                        <td>12210.00</td>
                                        <td>12390.00</td>
                                        <td>1180.00</td>
                                        <td>142.00</td>
                                        <td>1038.00</td>--%>
                                        <tr>
                                            <td>March-2023</td>
                                            <td>29500.00</td>
                                            <td>12210.00</td>
                                            <td>12390.00</td>
                                            <td>1180.00</td>
                                            <td>142.00</td>
                                            <td>1038.00</td>
                                        </tr>
                                        <tr>
                                            <td>April-2023</td>
                                            <td>29500.00</td>
                                            <td>12210.00</td>
                                            <td>12390.00</td>
                                            <td>1180.00</td>
                                            <td>142.00</td>
                                            <td>1038.00</td>
                                        </tr>
                                        <tr>

                                            <td><b>Total</b></td>

                                            <td><b>59000.00</b></td>
                                            <td><b>22420.00</b></td>
                                            <td><b>22420.00</b></td>
                                            <td><b>2360.00</b></td>
                                            <td><b>284.00</b></td>
                                            <td><b>2076.00</b></td>
                                        </tr>

                                    </tr>
                                    <%-- <tr>
                                        <td>April-2023</td>
                                        <td>29500.00</td>
                                        <td>12210.00</td>
                                        <td>12390.00</td>
                                        <td>1180.00</td>
                                        <td>142.00</td>
                                        <td>1038.00</td>
                                    </tr>--%>
                                    <%-- <tr>
                                        <td><b>Total</b></td>
                                        <td><b>59000.00</b></td>
                                        <td><b>22420.00</b></td>
                                        <td><b>22420.00</b></td>
                                        <td><b>2360.00</b></td>
                                        <td><b>284.00</b></td>
                                        <td><b>2076.00</b></td>
                                    </tr>--%>
                                    <%--   <tr><td>March-2023</td></tr>--%>
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
                            <li><strong>Office Name (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select the  <strong>Office Name</strong> from the dropdown which will automatically reflect from Office Master.</li>
                                </ul>
                            </li>
                            <li><strong>Type of post (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select the <strong>Type of Post Name </strong>from the dropdown which will automatically reflect from Post Master.</li>
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





