<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_DepartmentWiseLeaveApproval.aspx.cs" Inherits="mis_Leave_Mgnt_Mst_DepartmentWiseLeaveApproval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #show {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
   <%-- <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Department Wise Leave Approval Master</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=LeaveProcess" title="click to go on">Leave Process</a></li>
                    <li class="breadcrumb-item active">Department Wise Leave Approval Master</li>
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
                          <a href="#LeaveProcess" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                              <span>Leave Process</span></a>
                      </li>
                      <li class="breadcrumb-item"><span>Department Wise Leave Approval Master</span></li>
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
                          <h4 class="card-title">Department Wise Leave Approval Master / विभागवार अवकाश स्वीकृति मास्टर
                          </h4>
                      </div>
                  </div>
              </div>
              <div class="card-body">
            <fieldset>
                <legend>Set Leave approver/अवकाश अनुमोदक सेट करें</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label fs-6" for="DepartmentId">Department Name/<br />विभाग का नाम <span class="mr-5" style="color: red;">*</span></label>
                            <select class="form-select select2" data-val="true" data-val-required="Field is required." id="DepartmentId" name="DepartmentId">
                                <option value="">Select</option>
                                <option value="1">1-Department of Education </option>
                                <option value="2">2-Tribal Welfare Department</option>
                                <option value="3">3-Local Body</option>
                                <option value="4">4-Other State Govt Managed</option>
                                <option value="5">5-Minority Affairs Dept</option>
                                <option value="6">6-Social Welfare Department</option>
                                <option value="7">7-Ministry of Labour</option>
                                <option value="8">8-Government Aided</option>
                                <option value="9">9-Partially Govt Aided</option>
                                <option value="10">10-Private Unaided  Recognized</option>
                                <option value="11">11-Kendriya Vidyalaya</option>
                                <option value="12">12-Jawahar Navodaya Vidyalaya</option>
                                <option value="13">13-Sainik School</option>
                                <option value="14">14-Railway School</option>
                                <option value="15">15-Central Tibetan School</option>
                                <option value="16">16-Other Central Govt PSU Schools</option>
                                <option value="17">17-Unrecognized</option>
                                <option value="18">18-Madrasa Private Unaided Recognized</option>
                                <option value="19">19-Madrasa Aided Recognized</option>
                                <option value="20">20-Madarsa Unrecognized</option>
                            </select>
                            <span class="text-danger field-validation-valid" data-valmsg-for="DepartmentId" data-valmsg-replace="true"></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>OIS Type/<br />ओ.आई.एस. प्रकार
<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Office">Office</option>
                                <option value="Institute">Institute</option>
                                <option value="School">School</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Leave Type/<br />छुट्टी का प्रकार <span style="color: red">*</span></label>
                            <select class="form-select select2" data-val="true" data-val-required="Field is required." id="LeaveTypeId" name="LeaveTypeId">
                                <option value="">Select</option>
                                <option value="4">4-Earned Leave</option>
                                <option value="5">5-Half Pay</option>
                                <option value="6">6-commuted Leve</option>
                                <option value="7">7-Extra Leave</option>
                                <option value="8">8-Leave not due</option>
                                <option value="11">11-Paternity Leave</option>
                                <option value="12">12-Medical Leave</option>
                                <option value="18">18-Casual Leave</option>
                                <option value="19">19-Optional leave</option>
                                <option value="22">22-half day</option>
                                <option value="24">24-Maternity Leave</option>
                                <option value="25">25-CCL</option>
                            </select>

                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label" for="UserId">First Level Approval Officer HM Pricipal/<br />प्रथम स्तर अनुमोदन अधिकारी  एच.एम प्रिंसिपल <span style="color: red;">*</span></label>
                            <select class="form-select select2" data-val="true" data-val-required="Field is required." id="UserId" name="UserId">
                                <option value="">Select</option>
                            </select>
                            <span class="text-danger field-validation-valid" data-valmsg-for="UserId" data-valmsg-replace="true"></span>
                        </div>
                    </div></div>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label" for="LeaveLimit">Enter First Approver Leave Limit/<br />प्रथम अनुमोदक अवकाश सीमा दर्ज करें <span style="color: red;">*</span></label>
                            <input autocomplete="off" class="form-control number" placeholder="Enter Leave Limit" type="text" data-val="true" data-val-number="The field Enter First Approver Leave Limit must be a number." data-val-required="Field is required." id="LeaveLimit" name="LeaveLimit" value="" />
                            <span class="text-danger field-validation-valid" data-valmsg-for="LeaveLimit" data-valmsg-replace="true"></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label" for="SecondUserId">Second Level Approval Officer / Sankul Pricipal/<br />द्वितीय स्तर अनुमोदन अधिकारी/संकुल प्राचार्य
<span style="color: red;">*</span></label>
                            <select class="form-select select2" data-val="true" data-val-required="Field is required." id="SecondUserId" name="SecondUserId">
                                <option value="">Select</option>
                            </select>
                            <span class="text-danger field-validation-valid" data-valmsg-for="SecondUserId" data-valmsg-replace="true"></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label" for="SecondLeaveLimit">Enter Second Approver Leave Limit/<br />दूसरा अनुमोदनकर्ता अवकाश सीमा दर्ज करें<span style="color: red;">*</span></label>
                            <input autocomplete="off" class="form-control number" placeholder="Enter Leave Limit" type="text" data-val="true" data-val-number="The field Enter Second Approver Leave Limit must be a number." data-val-required="Field is required." id="SecondLeaveLimit" name="SecondLeaveLimit" value="" />
                            <span class="text-danger field-validation-valid" data-valmsg-for="SecondLeaveLimit" data-valmsg-replace="true"></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label" for="ThirdUserId">Third Level Approval Officer / DEO/<br />तृतीय स्तर अनुमोदन अधिकारी/डी.ई.ओ<span style="color: red;">*</span></label>
                            <select class="form-select select2" data-val="true" id="ThirdUserId" name="ThirdUserId">
                                <option value="">Select</option>
                                <option value="32256">32256-Tej Bali Soni (DEO)</option>
                                <option value="288258">288258-Ganesh Prasad Patel (DEO)</option>
                                <option value="292442">292442-ARJUN NA NA (DEO)</option>
                            </select>
                            <span class="text-danger field-validation-valid" data-valmsg-for="ThirdUserId" data-valmsg-replace="true"></span>
                        </div>
                    </div></div>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label" for="ThirdLeaveLimit">Enter Third Approver Leave Limit/<br />तृतीय अनुमोदक अवकाश सीमा दर्ज करें<span style="color: red;">*</span></label>
                            <input autocomplete="off" class="form-control number" placeholder="Enter Leave Limit" type="text" data-val="true" data-val-number="The field Enter Third Approver Leave Limit must be a number." id="ThirdLeaveLimit" name="ThirdLeaveLimit" value="" />
                            <span class="text-danger field-validation-valid" data-valmsg-for="ThirdLeaveLimit" data-valmsg-replace="true"></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label" for="FourthUserId">Fourth Level Approval Officer CPI/<br />चतुर्थ स्तरीय अनुमोदन अधिकारी/सीपीआई<span style="color: red;">*</span></label>
                            <select class="form-select select2" data-val="true" id="FourthUserId" name="FourthUserId">
                                <option value="">Select</option>
                                <option value="284263">284263-Vimala  Sharma (CPI)</option>
                                <option value="286109">286109-Ram Prasad Kol (CPI)</option>
                                <option value="292443">292443-HARIOM NA NA (CPI)</option>
                            </select>
                            <span class="text-danger field-validation-valid" data-valmsg-for="FourthUserId" data-valmsg-replace="true"></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label" for="FourthLeaveLimit">Enter Fourth Approver Leave Limit/<br />चतुर्थ अनुमोदक अवकाश सीमा दर्ज करें<span style="color: red;">*</span></label>
                            <input autocomplete="off" class="form-control number" placeholder="Enter Leave Limit" type="text" data-val="true" data-val-number="The field Enter Fourth Approver Leave Limit must be a number." id="FourthLeaveLimit" name="FourthLeaveLimit" value="" />
                            <span class="text-danger field-validation-valid" data-valmsg-for="FourthLeaveLimit" data-valmsg-replace="true"></span>
                        </div>
                    </div>
                    <hr />
                    <br />
                <div class="col-md-12">
     <div class="form-group">
         <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
         <a href="Mst_DepartmentWiseLeaveApproval.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
     </div>
 </div>
              <%--      <div class="col-md-3 mt-4">
                        <div class="form-group">
                            <button type="button" class=" Alert-Save btn btn-success btn-rounded">Save</button>
                            <a href="Mst_DepartmentWiseLeaveApproval.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>--%>
                </div>
            </fieldset>
            <fieldset >
                <legend>Leave Details</legend>
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
    </div>  <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <th>Sr.No.</th>
                                    <th>Department Name</th>
                                    <th>OIS Type</th>
                                    <th>Leave Type</th>
                                    <th>First Level Approval Officer / HM Pricipal</th>
                                    <th> First Approver Leave Limit</th>
                                    <th>Second Level Approval Officer / Sankul Pricipal</th>
                                    <th> Second Approver Leave Limit</th>
                                    <th>Third Level Approval Officer / DEO</th>
                                    <th>Third Approver Leave Limit</th>
                                    <th>Fourth Level Approval Officer / CPI </th>
                                    <th>Enter Fourth Approver Leave Limit </th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>  
                                <tr>
                                    <td>2</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td>--</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                              
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
                  </div>
            <!--Description-->
          <%--  <fieldset id="dcp" runat="server">
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                            <li><strong>Department</strong>
                                <ul>
                                    <li>User will be able to Select <strong>Department </strong>from Dropdown. Data populate from Department Master</li>
                                </ul>
                            </li>
                            <li><strong>Officer Name</strong>
                                <ul>
                                    <li>User will be able to Select the <strong>Officer Name</strong> from Dropdown. Data populate from User Master</li>
                                </ul>
                            </li>
                            <li><strong>Save (Button)</strong>
                                <ul>
                                    <li>User should be able to click on save button.</li>
                                    <li>Click on save button form all mandatory filed should be validating in process.</li>
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
                            <li><strong>Action Gridview(Edit)</strong>
                                <ul>
                                    <li>Click The Edit Icon - A Pop Up Message Will Open -Popup Message - Do You Want To Update The details?</li>
                                    <li>On Choose Yes Button option, The Form Will Come In The Editable format.</li>
                                    <li>After Editing The details in the from,  On Click The Update Button,( A Pop Up Message Will Open. )- Message- Do You Want To Update details.</li>
                                    <li>Choose YES - Popup Message - Data Updated Successfully.</li>
                                    <li>Choose No - Data will be not Update.</li>
                                </ul>
                            </li>
                            <li><strong>Action Gridview(Delete)</strong>
                                <ul>
                                    <li>If the user wants to delete a record – the user can click on the delete icon. Will permanently delete the record.</li>
                                    <li>A Pop Up Message Will Be Shown - Popup Message - Do You Want To Delete The record ?</li>
                                    <li>On Doing YES,</li>
                                    <li>The record Will Be Deleted And The Popup Message Will Be Shown</li>
                                    <li>Popup Message - Record Deleted Successfully.</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </fieldset>--%>
            <!-- End Description -->
        </div>
    </div></div>
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
</asp:Content>



