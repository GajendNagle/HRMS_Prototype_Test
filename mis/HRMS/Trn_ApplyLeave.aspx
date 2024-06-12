<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_ApplyLeave.aspx.cs" Inherits="mis_Leave_Mgnt_Trn_ApplyLeave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #show {
            display: none;
        }
         textarea {
     resize: vertical;
     min-height: 40px; /* Set a minimum height */
 }
    </style>
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
                    <li class="breadcrumb-item"><span>Apply Leave</span></li>
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
                        <h4 class="card-title">Leave Type Master/
                            लीव टाइप मास्टर</h4>
                    </div>
                </div>
            </div>
            <div class="card-body">



    <%--<div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Apply Leave</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=LeaveProcess" title="click to go on">Leave Process</a></li>
                    <li class="breadcrumb-item active">Apply Leave</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">--%>
            <fieldset>
                <legend>Apply Leave/ छुट्टी के आवेदन करना</legend>
                <div class="row align-items-end">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Leave Type/<br />छुट्टी प्रकार <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Casual Leave</option>
                                <option value="Bhopal">Maternity Leave</option>
                                <option value="Bhopal">Marrige Leave</option>
                                <option value="Bhopal">Paternity Leave</option>
                                <option value="Bhopal">Medical Leave</option>
                                <option value="Bhopal">Earned Leave</option>
                                <option value="Bhopal">Leave Without Pay</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Year/<br />
वर्ष<span style="color: red">*</span></label>
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
                            <label>From Date/<br />तिथि से<span style="color: red">*</span></label>
                            <input type="date" class="form-control" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>To Date/<br /> तिथि तक<span style="color: red">*</span></label>
                            <input type="date" class="form-control" placeholder="" />
                        </div>
                    </div>
                    </div>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Leave Approval Authority/<br />अवकाश अनुमोदन प्राधिकारी<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Ashutosh Sharma - 11265</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Attach Supporting Document/<br />सहायक दस्तावेज़ संलग्न करें</label>
                            <input type="file" name="name" class="form-control" value="" />
                            <%--<span style="color: red; font-size: 12px;">Only JPEG/PNG/JPG/PDF/DOC/DOCX Formats are allowed.
Maximum Allowed Filesize (2MB)</span>--%>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Reason of Leave/<br />छुट्टी का कारण<span style="color: red">*</span></label>
                            <textarea class="form-control" id="workdescription" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Enter Remark For  Outstanding Grading"></textarea>
                        </div>
                    </div>

                </div>
                <hr />
                <div class="row justify-content-center">

                      <div class="col-md-12">
      <div class="form-group">
          <button type="button" class="Alert-Save btn w-lg btn-success btn-border">Save</button>
          <a href="Trn_ApplyLeave.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
      </div>
  </div>
                  <%--  <div class="col-md-3 ">
                        <div class="form-group">
                            <button type="button" class=" Alert-Save btn btn-success btn-rounded">Apply for Leave</button>
                            <a href="Trn_ApplyLeave.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>--%>
                </div>
            </fieldset>
            <fieldset id="show">
                <legend>Leave Details/छुट्टी का विवरण </legend>
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
                                    <th>Sr.No.</th>
                                    <th>Year</th>
                                    <th>From Date</th>
                                    <th>To Date</th>
                                    <th>Leave Approval Authority</th>
                                    <th>Supporting Document</th>
                                    <th>Reason of Leave</th>
                                    <th>Status</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>2023</td>
                                    <td>04-12-2023</td>
                                    <td>05-12-2023</td>
                                    <td>Ashutosh Sharma - 11265</td>
                                    <td class="text-center"><a ID="LinkButton3" runat="server" CssClass="btn view-but" ><i class="fas fa-eye"></i></a></td>
                                    <td>For some important work</td>
                                    <td>Pending</td>
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

                            <li><strong>Leave Type </strong>
                                <ul>
                                    <li>User will be able to Select the <strong>Leave Type </strong>. Data popolate from Leave Type Master</li>
                                </ul>
                            </li>
                            <li><strong>Year</strong>
                                <ul>
                                    <li>User will be able to Select <strong>Year </strong>from Dropdown. Data popolate from Year Master</li>
                                </ul>
                            </li>
                            <li><strong>From Date</strong>
                                <ul>
                                    <li>User will be able to Select the <strong>From Date </strong>from Calendar .</li>
                                </ul>
                            </li>
                            <li><strong>To Date</strong>
                                <ul>
                                    <li>User will be able to Select the <strong>To Date </strong>from Calendar .</li>
                                </ul>
                            </li>
                            <li><strong>Leave Approval Authority</strong>
                                <ul>
                                    <li>User will be able to Select the <strong>Leave Approval Authority</strong> from Dropdown. Data popolate from Department wise Leave Approval Master</li>
                                </ul>
                            </li>
                            <li><strong>Attach Supporting Document</strong>
                                <ul>
                                    <li>User will be able to Upload the <strong>Document</strong>.</li>
                                </ul>
                            </li>
                            <li><strong>Reason Of Leave</strong>
                                <ul>
                                    <li>User will be able to enter the <strong>Reason Of Leave</strong>.</li>
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
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Apply Leave?",
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
                                text: 'Leave Applied Successfully!',
                                timer: 2000

                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )

                        }

                        var x = document.getElementById("show");
                        if (x.style.display === "none") {
                            x.style.display = "block";
                        } else {
                            x.style.display = "block";
                        }
                    })
                });
                $('.Alert-Delete').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Delete Record?",
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
                                text: 'Record Deleted Successfully!',
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
                $('.Alert-Edit').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Edit Record?",
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
                        //if (result.value) {
                        //    Swal.fire({
                        //        type: 'success',
                        //        title: 'Success!',
                        //        text: 'Salary Generated Successfully!',
                        //        timer: 2000
                        //        // animation: false,
                        //        // customClass: {
                        //        //     popup: 'animated tada'
                        //        // }
                        //    }
                        //    )
                        //}
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
      <script>function autoResize(textarea) {
              textarea.style.height = 'auto'; // Reset height to auto
              textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
          }</script>
</asp:Content>



