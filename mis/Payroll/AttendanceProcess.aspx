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
    <%--  <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>

                        <li class="breadcrumb-item">
                            <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                        </li>
                        <li class="breadcrumb-item">Employee Attendance Process</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <div class="card">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Employee Attendance/कर्मचारी उपस्थिति
                    </h4>
                </div>
            </div>
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
                      <%--  <li class="breadcrumb-item">
                            <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>ACR</span></a>
                        </li>--%>
                        <li class="breadcrumb-item"><span>Employee Attendance Process</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Employee Attendance/कर्मचारी उपस्थिति
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Employee Attendance/कर्मचारी उपस्थिति</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Office Type<br />कार्यालय प्रकार का चयन करें<span style="color: red">*</span></label>
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
                            <label>Select Year<br />वर्ष चुनें<span style="color: red">*</span></label>
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
                            <label>Select Month<br />माह चुनें<span style="color: red">*</span></label>
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
                            <label>Select Type of Post<br />पोस्ट का प्रकार चुनें<span style="color: red">*</span></label>
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
                    <hr />
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class="btn btn btn-success w-lg btn-border">Search</button>
                            <a href="AttendanceProcess.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div id="show">
                <fieldset>
                    <legend>Employee Attendance Process/कर्मचारी उपस्थिति प्रक्रिया</legend>
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
                    <div class="row align-items-end">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table">
                                    <tr style="white-space:nowrap !important;">
                                        <th>Sr.No <br />क्र.सं.</th>
                                        <th>Action All <br />सभी कार्रवाई 
                                                    <%--<br />
                                            <input id="ContentBody_dctl07" type="checkbox" name="ctl00$ContentBody$ctl06" />--%></th>
                                        <th>Add Leave <br />अवकाश जोड़ें</th>
                                        <th>Generate e Status <br />ई स्टेटस जनरेट करें</th>
                                        <th>Emp Name <br />कर्मचारी का नाम</th>
                                        <th>Total Days <br />कुल दिन</th>
                                        <th>Total Leave <br />कुल छुट्टी</th>
                                        <th>Payable Days <br />देय दिन</th>
                                        <th>Earned Leave/अर्जित अवकाश</th>
                                        <th>LWP <br />एलडब्ल्यूपी</th>
                                        <th>Medical Leave <br />चिकित्सा छुट्टी</th>
                                        <th>Casual Leave <br />आकस्मिक अवकाश</th>
                                        <th>Paternity Leave <br />पितृत्व अवकाश</th>
                                        <th>Marriage Leave <br />शादी के लिए छुट्टी</th>
                                        <th>other <br />अन्य</th>
                                        <th>Maternity Leave <br />प्रसूति अवकाश</th>
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
                    <div class="row ">
                        <div class="col-md-12">
                            <div class="form-group">
                                <button type="button" class=" Alert-Confirmation btn btn-success w-lg btn-border">Generate Attendance</button>
                                <a href="AttendanceProcess.aspx" class=" btn w-lg btn-outline-danger btn-border">Clear</a>
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
                <legend>Description/विवरण</legend>
                <div class="row align-items-end">
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
                            School Registration/स्कूल पंजीकरण
     <asp:Label ID="Label1" runat="server" Text="" Visible="true"></asp:Label>
                        </div>
                        <div class="card-body">
                            <div class="row align-items-end">
                                <div class="col-md-12">
                                    <fieldset>
                                        <legend>Add Leave/अवकाश जोड़ें</legend>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Earned Leave/अर्जित अवकाश</label>
                                                    <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Value" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>LWP/एलडब्ल्यूपी</label>
                                                    <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Value" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Medical Leave/चिकित्सा छुट्टी</label>
                                                    <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Value" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Casual Leave/आकस्मिक अवकाश</label>
                                                    <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Value" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Paternity Leave/पितृत्व अवकाश</label>
                                                    <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Value" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Marriage Leave/शादी के लिए छुट्टी</label>
                                                    <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Value" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>other/अन्य</label>
                                                    <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Value" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Maternity Leave/प्रसूति अवकाश</label>
                                                    <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Value" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12 justify-content-center">
                                                <div class="form-group text-center">
                                                    <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border">Save</button>
                                                    <a href="AttendanceProcess.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
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
                                            <asp:Button runat="server" ID="btnclose" CssClass="btn btn-outline-danger w-lg btn-border" Text="Close" />
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



