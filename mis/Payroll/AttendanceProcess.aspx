<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AttendanceProcess.aspx.cs" Inherits="mis_Payroll_AttendanceProcess1" %>

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
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Employee Attendance Process</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <%--<li class="breadcrumb-item"><a href="../Module.aspx?ID=Masters" title="click to go on">Masters</a></li>--%>
                    <%--<li class="breadcrumb-item"><a href="../Menu.aspx?ID=Masters&SubID=PayrollMaster" title="click to go on">Payroll Master</a></li>--%>
                    <li class="breadcrumb-item active">Employee Attendance Process</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Employee Attendance</legend>
                <div class="row">
                    <%-- <div class="col-md-3">
                        <div class="form-group">
                            <label>Office Type<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">District Office</option>
                                <option value="Bhopal">Division Office</option>
                                <option value="Bhopal">Block Office</option>
                            </select>
                        </div>
                    </div>--%>
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
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class="btn-block btn btn-success  btn-rounded">Search</button>
                        </div>
                    </div>
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <a href="AttendanceProcess.aspx" class="btn-block btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div id="show">
                <fieldset>
                    <legend>Employee Attendance Process</legend>
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
                                    <tr>
                                        <th>Sr.No.</th>
                                        <th>Action All
                                                    <br />
                                            <input id="ContentBody_dctl07" type="checkbox" name="ctl00$ContentBody$ctl06" /></th>
                                        <th>Add Leave</th>
                                        <th>Generate e Status</th>
                                        <th>Emp Name</th>
                                        <th>Total Days</th>
                                        <th>Total Leave</th>
                                        <th>Payable Days</th>
                                        <th>Earned Leave</th>
                                        <th>LWP</th>
                                        <th>Medical Leave</th>
                                        <th>Casual Leave</th>
                                        <th>Paternity Leave</th>
                                        <th>Marriage Leave</th>
                                        <th>other</th>
                                        <th>Maternity Leave</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>
                                            <input id="ContentBody_ctl07" type="checkbox" name="ctl00$ContentBody$ctl06" /></td>
                                        <td>
                                            <a runat="server" id="lnkOpenModal1" href="javascript:void(0)" onclientclick="return false;" class="btn btn-info w-100s">Add</a>
                                        </td>
                                        <td>Pending</td>
                                        <td>Rohit</td>
                                        <td>30</td>
                                        <td>4</td>
                                        <td>26</td>
                                        <td></td>
                                        <td>4</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>
                                            <input id="ContentBody_ctl04" type="checkbox" name="ctl00$ContentBody$ctl06" /></td>
                                        <td>
                                            <a runat="server" id="lnkOpenModal" href="javascript:void(0)" onclientclick="return false;" class="btn btn-info w-100s">Add</a>
                                        </td>
                                        <td>Generate</td>
                                        <td>Rahul</td>
                                        <td>30</td>
                                        <td>02</td>
                                        <td>30</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-md-4 mt-4">
                            <div class="form-group">
                                <button type="button" class=" Alert-Confirmation btn btn-success  btn-rounded">Generate Attendance</button>
                                <a href="AttendanceProcess.aspx" class=" btn btn-danger  btn-rounded">Clear</a>
                            </div>
                        </div>
                        <%-- <div class="col-md-2 mt-4">
                            <div class="form-group">
                           
                            </div>
                        </div>--%>
                    </div>
                </fieldset>
            </div>
            <!--Description-->
            <fieldset id="dcp" runat="server">
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                            <li><strong>Office Type </strong>
                                <ul>
                                    <li>User will be able to select the <strong>Office Type </strong>from the dropdown and the data will be populated from the<strong> Office Type Master.</strong></li>
                                </ul>
                            </li>
                            <li><strong>Office Name (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Office Name </strong>from dropdown. Data populated from <strong>Office Master </strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Year (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Year </strong>from dropdown. Data populated from <strong>Year Master </strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Month (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Month </strong>from dropdown. Data populated from <strong>Month Master </strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Type of Post (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Earning/Deduction Head </strong>from dropdown. Data populated from <strong>Post Master </strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Search (Button)</strong>
                                <ul>
                                    <li>User should be able to click on <strong>Search button</strong>.</li>
                                    <li>On <strong>Search button</strong> click Grid will be visible.</li>
                                </ul>
                            </li>
                            <li><strong>PDF (Button)</strong>
                                <ul>
                                    <li><strong>PDF button </strong>should be visible and user should be able to click.</li>
                                    <li>After clicking on PDF button grid view data <strong>export in PDF</strong>.</li>
                                </ul>
                            </li>
                            <li><strong>Excel (Button)</strong>
                                <ul>
                                    <li><strong>Excel button</strong> should be visible and user should be able to click.</li>
                                    <li>After clicking on Excel button grid view data <strong>export in Excel</strong>.</li>
                                </ul>
                            </li>
                            <li><strong>Checkbox (Gridview)</strong>
                                <ul>
                                    <li>For employee attendance process it is mandatory to click on the checkbox in front of the data and on clicking the save button the data entry will be done.</li>
                                    <li>To save all the data at once, by clicking on the Select All checkbox, all the data can be saved at once.</li>
                                </ul>
                            </li>
                            <li><strong>Add (Button)</strong>
                                <ul>
                                    <li><strong>Add button</strong> should be visible and user should be able to click.</li>
                                    <li>After clicking on Add button <strong>popup model </strong>will be open, there user can enter<strong> leave</strong> and save data, this leave data will affect on <strong>grid data</strong>.</li>
                                </ul>
                            </li>
                            <li><strong>Generate Attendance (Button)</strong>
                                <ul>
                                    <li>User should be able to click on<strong> Generate Attendance button</strong>.</li>
                                    <li>On Generate Attendance button click form field should be validated.</li>
                                    <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                    <li>If click on Yes – Attendance will be Generated and Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!")..</li>
                                    <li>If click on NO the data will not be saved and will return to the same page.</li>
                                </ul>
                            </li>
                            <li><strong>Clear (Button)</strong>
                                <ul>
                                    <li>User should be able to click on <strong>Clear button</strong>.</li>
                                    <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </fieldset>
            <!-- End Description -->
        </div>
        <!-- Add the Modal -->
        <div id="myModal" class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="card">
                        <div class="card-header">
                            School Registration
     <asp:Label ID="Label1" runat="server" Text="" Visible="true"></asp:Label>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <fieldset>
                                        <legend>Add Leave</legend>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Earned Leave</label>
                                                    <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Value" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>LWP</label>
                                                    <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Value" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Medical Leave</label>
                                                    <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Value" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Casual Leave</label>
                                                    <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Value" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Paternity Leave</label>
                                                    <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Value" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Marriage Leave</label>
                                                    <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Value" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>other</label>
                                                    <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Value" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Maternity Leave</label>
                                                    <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Value" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2 mt-4">
                                                <div class="form-group">
                                                    <button type="button" class="btn-block Alert-Confirmation btn btn-success  btn-rounded">Save</button>
                                                </div>
                                            </div>
                                            <div class="col-md-2 mt-4">
                                                <div class="form-group">
                                                    <a href="AttendanceProcess.aspx" class="btn-block btn btn-danger  btn-rounded">Clear</a>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <div class="row fa-pull-right">
                                        <div class="col-md-2">
                                            <asp:Button runat="server" ID="btnclose" CssClass="btn btn-dark" Text="Close" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%= lnkOpenModal.ClientID %>').click(function () {
                $('#myModal').modal('show');
            });
        });
        $(document).ready(function () {
            $('#<%= lnkOpenModal1.ClientID %>').click(function () {
                $('#myModal').modal('show');
            });
        });
    </script>
</asp:Content>



