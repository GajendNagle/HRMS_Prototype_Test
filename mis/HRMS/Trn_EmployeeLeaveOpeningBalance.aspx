<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_EmployeeLeaveOpeningBalance.aspx.cs" Inherits="mis_Leave_Mgnt_Trn_EmployeeLeaveOpeningBalance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #show {
            display: none;
        }
    </style>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Employee Leave Opening Balance</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                 <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=LeaveProcess" title="click to go on">Leave Process</a></li>
                    <li class="breadcrumb-item active">Employee Leave Opening Balance</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Leave Opening Balance</legend>
                <div class="row">


                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Office Name<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">HO</option>
                                <option value="12">DO</option>
                                <option value="12">RO</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Employee Name<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">Krishna Tiwari - 38938</option>
                                <option value="12">Gopal Sharma - 89330</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Date<span style="color: red">*</span></label>
                            <input type="date" class="form-control" placeholder="" />
                        </div>
                    </div>

                     <div class="col-md-3 mt-4">
                        <div class="form-group">
                             <button type="button" onclick="showhide()" class="btn btn-success btn-rounded">Search</button>
                              <a href="Trn_EmployeeLeaveOpeningBalance.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="show">
                <legend>Remaining Leaves</legend>
                <%--  <div class="row justify-content-end">
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
                </div>--%>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <th>Sr.No.</th>
                                    <th>Leave Type</th>
                                    <th>Remaining Leaves</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>
                                    Casual Leave
                                 <td>
                                     <input type="text" class="form-control" placeholder="Enter remaining leave" /></td>
                                    <tr>
                                        <td>2</td>
                                        <td>Maternity Leave</td>
                                        <td>
                                            <input type="text" class="form-control" placeholder="Enter remaining leave" /></td>
                                    </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Marriage Leave</td>
                                    <td>
                                        <input type="text" class="form-control" placeholder="Enter remaining leave" /></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Paternity Leave</td>
                                    <td>
                                        <input type="text" class="form-control" placeholder="Enter remaining leave" /></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Medical Leave</td>
                                    <td>
                                        <input type="text" class="form-control" placeholder="Enter remaining leave" /></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Earned Leave</td>
                                    <td>
                                        <input type="text" class="form-control" placeholder="Enter remaining leave" /></td>
                                </tr>
                            </table>
                        </div>
                    </div>

                </div>
                 <div class="row justify-content-center">

                          <div class="col-md-3">
                        <div class="form-group">
                               <button type="button" class="Alert-Confirmation  btn btn-success  btn-rounded">Save</button>
                             <a href="Trn_EmployeeLeaveOpeningBalance.aspx" class=" btn btn-danger btn-rounded">Clear</a>
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
                            <li><strong>Office Name</strong>
                                <ul>
                                    <li>User will be able to Select the <strong>Office Name </strong>from Dropdown. Data populate from Office Master</li>
                                </ul>
                            </li>
                            <li><strong>Employee Name</strong>
                                <ul>
                                   <li>User will be able to Select the <strong>Employee Name </strong>from Dropdown. Data populate from Employee Master</li>
                                </ul>
                            </li>
                            <li><strong>Date</strong>
                                <ul>
                                    <li>User will be able to Select the <strong>Date</strong> from Calendar .</li>
                                </ul>
                            </li>
                             <li><strong>Search (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Search button.</li>
                                    <li>On Search button click grid will be visible.</li>
                                </ul>
                            </li>
                            <li><strong>Clear (Button)</strong>
                                <ul>
                                    <li>User will be able to click on Clear button.</li>
                                    <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                </ul>
                            </li>
                            <li><strong>Remaining Leaves</strong>
                                <ul>
                                    <li>The user will be able to fill in the remaining leaves according to the leave type in the related textboxes.</li>
                                </ul>
                            </li>
                            <li><strong>Save (Button)</strong>
                                <ul>
                                    <li>User should be able to click on save button.</li>
                                    <li>Click on save button form all mandatory filed should be validate in process.</li>
                                    <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                    <li>If click on Yes – record will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!")..</li>
                                    <li>If click on NO the record will not be saved and will return to the same page.</li>
                                </ul>
                            </li>
                            <li><strong>Clear (Button)</strong>
                                <ul>
                                    <li>User will be able to click on Clear button.</li>
                                    <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
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
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Save Details?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',

                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Details Saved Successfully!',
                                timer: 2000

                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )

                        }


                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
</asp:Content>


