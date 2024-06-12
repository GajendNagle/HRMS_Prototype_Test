<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_ViewLeaveRequest_Approve.aspx.cs" Inherits="mis_Leave_Mgnt_Trn_ViewLeaveRequest_Approve" %>

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
                        <a href="#LeaveProcess" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                            <span>Leave Process</span></a>
                    </li>
                    <li class="breadcrumb-item"><span>View Leave Request & Approve Leave</span></li>
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
                        <h4 class="card-title">View Leave Request & Approve Leave/
                          छुट्टी का अनुरोध देखें और छुट्टी स्वीकृत करें</h4>
                    </div>
                </div>
            </div>
            <div class="card-body">
  <%--      <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">View Leave Request & Approve Leave</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=LeaveProcess" title="click to go on">Leave Process</a></li>
                    <li class="breadcrumb-item active">View Leave Request & Approve Leave</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">--%>
            <fieldset>
                <legend>View Leave Request</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>From Date<span style="color: red">*</span></label>
                            <input type="date" class="form-control" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>To Date<span style="color: red">*</span></label>
                            <input type="date" class="form-control" placeholder="" />
                        </div>
                        </div>
                    </div>
                    <br />
                    <hr />

                                  <div class="row justify-content-center">

                    <div class="col-md-12">
    <div class="form-group">
        <button type="button"  onclick="showhide()"  class="Alert-Save btn w-lg btn-success btn-border">Save</button>
        <a href="Trn_ViewLeaveRequest_Approve.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
    </div>
</div>

                   <%-- <div class="col-md-3 mt-4">
                        <div class="form-group">
                            <button type="button" onclick="showhide()" class=" btn btn-success btn-rounded">Search</button>
                            <a href="Trn_ViewLeaveRequest_Approve.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>--%>
                </div>
            </fieldset>
            <fieldset id="show">
                <legend>Details</legend>
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
                            <table class="table">
                                <tr>
                                    <th>
                                        <input type="checkbox" /></th>
                                    <th>Sr.No.</th>
                                    <th>Employee Name</th>
                                    <th>Department </th>
                                    <th>From Date </th>
                                    <th>To Date </th>
                                    <th>Total Days </th>
                                    <th>Approve Status </th>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" />

                                    </td>
                                    <td>1</td>
                                    <td>Mr. Ashok Kumar Mishra</td>
                                    <td>HR</td>
                                    <td>01-10-2023</td>
                                    <td>05-10-2023</td>
                                    <td>5</td>
                                    <td>Pending</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" />
                                    </td>
                                    <td>2</td>
                                    <td>Mr. Sanjay Sharma</td>
                                    <td>Finance</td>
                                    <td>10-10-2023</td>
                                    <td>11-10-2023</td>
                                    <td>2</td>
                                    <td>Pending</td>
                                </tr>
                            </table>
                        </div>

                    </div>
                    <div class="col-md-12">
                        <label style="color: red;">Approve The Application After Clicking On The Checkbox/चेक बॉक्स पर क्लिक करने के उपरांत आवेदन को अनुमोदन करें|</label>
                    </div>
                </div>
               <%-- <div class="row justify-content-center">

                    <div class="col-md-4 ">
                        <div class="form-group">
                            <button type="button" class=" Alert-Approve btn btn-success  btn-rounded">Approve Leave Request</button>
                            <a class="Alert-Reject  btn btn-danger  btn-rounded">Reject Leave</a>
                        </div>
                    </div>--%><hr />
                              <div class="row justify-content-center">

                    <div class="col-md-12">
    <div class="form-group">
        <button type="button" class=" Alert-Approve btn w-lg btn-success btn-border">Approve Leave Request</button>
        <a href="#" class=" Alert-Reject btn btn-outline-danger w-lg btn-border">Reject Leave</a>
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
                            <li><strong>From Date</strong>
                                <ul>
                                    <li>User will be able to Select <strong>From Date </strong>from Calendar .</li>
                                </ul>
                            </li>
                            <li><strong>To Date</strong>
                                <ul>
                                    <li>User will be able to Select <strong>To Date </strong>from Calendar .</li>
                                </ul>
                            </li>
                            <li><strong>Approve Leave Request (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Approve Leave Request button.</li>
                                    <li>Click on Approve Leave Request button form all mandatory filed should be validate in process.</li>
                                    <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                    <li>If click on Yes – record will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!")..</li>
                                    <li>If click on NO the record will not be saved and will return to the same page.</li>
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
                            <li><strong>Reject Leave (Button)</strong>
                                <ul>
                                    <li>User will be able to click on Reject Leave button.</li>
                                    <li>After clicking on Reject Leave will be Rejected</li>
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
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Approve').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Approve Leave?",
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
                                text: 'Leave Approved Successfully!',
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
                $('.Alert-Reject').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Reject Leave?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Leave Rejected Successfully!',
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




