<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RptLeaveHistory.aspx.cs" Inherits="mis_HRMS_RptLeaveHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <script>
        function showhide() {
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
            <h4 class="text-themecolor ">Leave History</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=LeaveProcess" title="click to go on">Leave Process</a></li>
                    <li class="breadcrumb-item active">Leave History</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">--%>
    <div class="row">
        <div class="col-md-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#LeaveReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Leave Report</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Leave History </span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-12">
                            <h4 class="card-title">Leave History / अवकाश का इतिहास </h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Leave History / अवकाश का इतिहास</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Select Year<br />
                                        वर्ष का चयन करें<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">2023</option>
                                        <option value="Bhopal">2024</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Select Office Type<br />
                                        कार्यालय प्रकार का चयन करें<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="1">Principal Secretary</option>
                                        <option value="12">Secretary</option>
                                        <option value="12">Deputy Secretary</option>
                                        <option value="12">CPI</option>
                                        <option value="12">CRSK</option>
                                        <option value="12">DPI</option>
                                        <option value="12">Collector</option>
                                        <option value="12">CEO, ZP</option>
                                        <option value="12">Joint Director</option>
                                        <option value="12">DEO</option>
                                        <option value="12">DPC</option>
                                        <option value="12">BEO</option>
                                        <option value="12">BRC</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Select Designation Type<br />
                                        पदनाम प्रकार का चयन करें<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Clerical">Clerical</option>
                                        <option value="Executive">Executive</option>
                                        <option value="Ministry">Ministry</option>
                                        <option value="Teaching">Teaching</option>
                                        <option value="Other Department">Other Department</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Select Employee Name/ID <br />
                                        कर्मचारी का नाम/आई.डी का चयन करें<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="1">Krishna Tiwari - 38938</option>
                                        <option value="12">Gopal Sharma - 89330</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <hr />

                        <div class="row justify-content-center">

                            <div class="col-md-12">
                                <div class="form-group">
                                    <button type="button" onclick="showhide()" class="Alert-Save btn w-lg btn-success btn-border">Search</button>
                                    <a href="RptLeaveHistory.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                                </div>
                            </div>
                        </div>

                        <%-- <div class="col-md-3">
                        <div class="form-group">
                            <button type="button" onclick="showhide()" class=" Alert-Save btn btn-success btn-rounded">Search</button>
                            <a href="RptLeaveHistory.aspx" class=" btn  btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>--%>
                    </fieldset>
                    <fieldset id="show">
                        <legend>Details / विवरण</legend>
                        <div class="row justify-content-end">
                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <p><strong>Year:2024, Office Type:HO, Designation Type: Teaching, EmployName/ID: Krishna Tiwari - 38938</strong></p>
                                    <table class="table text-center">
                                        <tr>
                                            <th>Sr.No.
                                                <br />
                                                सरल क्र.</th>
                                            <th>Leave Type
                                                <br />
                                                अवकाश का प्रकार</th>
                                            <th>Opening As On 1st Jan of Selected Year<br />चयनित वर्ष की पहली जनवरी को खुलना</th>
                                            <th>Leave Credit For Selected Year<br />चयनित वर्ष के लिए क्रेडिट अवकाश</th>
                                            <th>Total Taken Leave (By ERP)<br />कुल ली गई अवकाश (ईआरपी द्वारा)</th>
                                            <th>Total Leave Balance Till Date<br />अब तक कुल अवकाश शेष</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Casual Leave</td>
                                            <td>0</td>
                                            <td>0.00</td>
                                            <td>0.00</td>
                                            <td>0</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Marriage  Leave</td>
                                            <td>0</td>
                                            <td>0.00</td>
                                            <td>0.00</td>
                                            <td>0</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Maternity Leave</td>
                                            <td>0</td>
                                            <td>0.00</td>
                                            <td>0.00</td>
                                            <td>0</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>Paternity Leave</td>
                                            <td>0</td>
                                            <td>0.00</td>
                                            <td>0.00</td>
                                            <td>0</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>Medical Leave</td>
                                            <td>0</td>
                                            <td>0.00</td>
                                            <td>0.00</td>
                                            <td>0</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>LWP</td>
                                            <td>0</td>
                                            <td>0.00</td>
                                            <td>0.00</td>
                                            <td>0</td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>Earned Leave</td>
                                            <td>0</td>
                                            <td>0.00</td>
                                            <td>0.00</td>
                                            <td>0</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <!--Description-->
                    <fieldset id="dcp" runat="server">
                        <legend>Description</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="main-ul">
                                    <li><strong>Year (Dropdown)</strong>
                                        <ul>
                                            <li>User will be able to select <strong>Year </strong>from dropdown. Data populated from Database Table</li>
                                        </ul>
                                    </li>
                                    <li><strong>Office Type (Dropdown)</strong>
                                        <ul>
                                            <li>User will be able to select the  <strong>Office Type</strong> from the dropdown which will automatically reflect<strong> Office Type Master.</strong> </li>
                                            <li>When User select the <strong>Office Type</strong> data will be cascaded in<strong> Dsesignation Type (Dropdown)</strong> </li>
                                        </ul>
                                    </li>
                                    <li><strong>Dsesignation Type (Dropdown)</strong>
                                        <ul>
                                            <li>User will be able to Select the <strong>Dsesignation Type</strong>. Data populate from Type of Post Master</li>
                                            <li>When User select the <strong>Dsesignation Type </strong>data will be cascaded in<strong> Employee Name/ID (Dropdown)</strong> </li>
                                        </ul>
                                    </li>
                                    <li><strong>Employee Name/ID (Dropdown)</strong>
                                        <ul>
                                            <li>User will be able to select <strong>Employee Name </strong>from dropdown. Data populated from <strong>Employee Registration </strong>. </li>
                                        </ul>
                                    </li>
                                    <li><strong>Excel</strong>
                                        <ul>
                                            <li>Excel button should be visible and user should be able to click.</li>
                                            <li>After clicking on Excel button grid view data export in Excel.</li>
                                        </ul>
                                    </li>
                                    <li><strong>PDF</strong>
                                        <ul>
                                            <li>PDF button should be visible and user should be able to click.</li>
                                            <li>After clicking on PDF button grid view data export in PDF.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Searchbox</strong>
                                        <ul>
                                            <li>Users can search for any text value, and only the relevant text related to the search will be displayed .</li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </fieldset>
                    <!-- End Description -->
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

