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
    <div class="row page-titles mb-4">
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
        <div class="card-body">
            <fieldset>
                <legend>Leave History</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Year<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">2023</option>
                                <option value="Bhopal">2024</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Office Type<span style="color: red">*</span></label>
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
                            <label>Dsesignation Type<span style="color: red">*</span></label>
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
                            <label>Employee Name/ID<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">Krishna Tiwari - 38938</option>
                                <option value="12">Gopal Sharma - 89330</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <button type="button" onclick="showhide()" class=" Alert-Save btn btn-success btn-rounded">Search</button>
                            <a href="RptLeaveHistory.aspx" class=" btn  btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="show">
                <legend>Details</legend>
                <div class="row justify-content-end">

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
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <p><strong>Year:2024, Office Type:HO, Designation Type: Teaching, EmployName/ID: Krishna Tiwari - 38938</strong></p>
                            <table class="table text-center">
                                <tr>
                                    <th>Sr.No.</th>
                                    <th>Leave Type</th>
                                    <th>Opening As On 1st Jan of Selected Year</th>
                                    <th>Leave Credit For Selected Year</th>
                                    <th>Total Taken Leave (By ERP)</th>
                                    <th>Total Leave Balance Till Date</th>
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
                                    <li>When User select the <strong> Office Type</strong> data will be cascaded in<strong> Dsesignation Type (Dropdown)</strong> </li>
                                </ul>
                            </li>
                            <li><strong>Dsesignation Type (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to Select the <strong>Dsesignation Type</strong>. Data populate from Type of Post Master</li>
                                     <li>When User select the <strong>Dsesignation Type </strong> data will be cascaded in<strong> Employee Name/ID (Dropdown)</strong> </li>
                                </ul>
                            </li>
                            <li><strong>Employee Name/ID (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong> Employee Name </strong>from dropdown. Data populated from <strong>Employee Registration </strong>. </li>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

