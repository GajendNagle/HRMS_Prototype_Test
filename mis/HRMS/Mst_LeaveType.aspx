<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_LeaveType.aspx.cs" Inherits="mis_Leave_Mgnt_Mst_LeaveType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space:nowrap;
        }
        #show {
            display: none;
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
                        <li class="breadcrumb-item"><span>Leave Type</span></li>
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
                        <div class="col-lg-6">
                            <h4 class="card-title">Leave Type Master<br />
                                लीव टाइप मास्टर</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Add Leave / अवकाश जोड़ें</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Leave Type /
                                        <br />
                                        अवकाश का प्रकार<span style="color: red">*</span></label>
                                    <input type="text" class="form-control" autocomplete="off" placeholder="Enter Leave Type" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Effective Date /
                                        <br />
                                        प्रभावी दिनांक<span style="color: red">*</span></label>
                                    <input type="date" class="form-control" placeholder="" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Leave Carry Forward /<br />
                                        <span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="1">Yes</option>
                                        <option value="12">No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Impact On Payroll /<br />
                                        पेरोल पर प्रभाव<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="1">Yes</option>
                                        <option value="12">No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3  ">
                                <div class="form-group ml-3 ">
                                    <input class="form-check-input" type="checkbox" />
                                    <span>
                                        <label>Impact On Earning & Deduction/<br />
                                            अर्निंग और कटौती पर प्रभाव<span style="color: red">*</span></label></span>
                                </div>
                            </div>
                            <hr />
                            <div class="col-md-12 ">
                                <div class="form-group">
                                    <button type="button" class=" Alert-Save btn btn-outline-success btn-border w-lg">Save</button>
                                    <a href="Mst_LeaveType.aspx" class=" btn btn-outline-danger btn-border w-lg">Clear</a>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="show">
                        <legend>Leave Details / अवकाश विवरण</legend>
                        <div class="row justify-content-end">

                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <th>Sr.No. / <br />सरल क्र.</th>
                                            <th>Leave Type / <br />अवकाश का प्रकार</th>
                                            <th>Impact On Payroll / <br />पेरोल पर प्रभाव</th>
                                            <th>Leave Carry Forward / <br /></th>
                                            <th>Impact On Earning & Deduction / <br />अर्निंग और कटौती पर प्रभाव</th>
                                            <th>Effective Date / <br />प्रभावी दिनांक</th>
                                            <th>Action</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Casual Leave (CL)</td>
                                            <td>NO</td>
                                            <td>NO</td>
                                            <td></td>
                                            <td></td>
                                            <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Marriage Leave(CL)</td>
                                            <td>NO</td>
                                            <td>NO</td>
                                            <td>Yes</td>
                                            <td>05/12/2023</td>
                                            <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <!--Description-->
                    <fieldset id="dcp" runat="server">
                        <legend>Description / विवरण</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="main-ul">
                                    <li><strong>Leave Type </strong>
                                        <ul>
                                            <li>User will be able to Enter the <strong>Leave Type </strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Effective Date</strong>
                                        <ul>
                                            <li>User will be able to Select the <strong>Effective Date </strong>from Calendar.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Leave Carry Forward</strong>
                                        <ul>
                                            <li>User will be able to Select the <strong>Leave Carry Forward</strong> from Dropdown.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Impact On Payroll</strong>
                                        <ul>
                                            <li>User will be able to Select the <strong>Impact On Payroll</strong> from Dropdown.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Impact On Earning & Deduction</strong>
                                        <ul>
                                            <li>User will be able to Check or Uncheck the <strong>Checkbox</strong>.</li>
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

