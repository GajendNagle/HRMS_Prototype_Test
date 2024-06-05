<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeJoiningInOffice.aspx.cs" Inherits="mis_Transaction_EmployeeJoiningInOffice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }

        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

        #Approve {
            display: none;
        }

        #Pending {
            display: none;
        }

        #Reject {
            display: none;
        }

        #All {
            display: none;
        }
    </style>
    <script> 
        function showhide() {
            var ddlApprove = document.getElementById("ddlApprove");
            var states = ["All", "Approve", "Pending", "Reject"];

            for (var i = 0; i < states.length; i++) {
                var element = document.getElementById(states[i]);
                element.style.display = ddlApprove.value === i.toString() ? "block" : "none";
            }
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Employee Joining In Office</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item active">Employee Joining In Office</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <nav class="navbar navbar-expand-lg topbar ">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                            <li>

                                <a class="nav-link  text-white " href="EmployeeJoiningInOfficeNotes.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                            </li>
                            <li>

                                <a class="nav-link  text-white " href="EmployeeJoiningInOffice.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Add Employee to Office
                                </b></a>
                            </li>

                            <li>

                                <a class="nav-link  text-white " href="Rpt_EmployeeJoining.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>
                                    Report
                                </b></a>

                            </li>
                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <div id="Approve">
                <fieldset>
                    <legend>Approve Details</legend>

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
                                <table class="table table-bordered text-center">
                                    <tr>
                                        <th rowspan="2">Sr.No.</th>
                                        <th rowspan="2">Office Type</th>
                                        <th rowspan="2">Employee Name</th>
                                        <th rowspan="2">Employee Designation</th>
                                        <th rowspan="2">Employee Department</th>
                                        <th rowspan="2">Employee Subject</th>
                                        <th colspan="5">Current Location</th>
                                        <th colspan="5">Preference Location</th>
                                        <th rowspan="2">Action</th>

                                    </tr>
                                    <tr>
                                        <th>Office Type</th>
                                        <th>Posted From</th>
                                        <th>District</th>
                                        <th>Block</th>
                                        <th>Sankul Code</th>
                                        <th>Office Type</th>
                                        <th>Reason For Transfer</th>
                                        <th>District</th>
                                        <th>Block</th>
                                        <th>Sankul Code</th>
                                    </tr>
                                    <tr>
                                        <th>1</th>
                                        <td>Head Office</td>
                                        <td>Ashok Kumar</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>Hindi</td>
                                        <td>Head Office</td>
                                        <td>21-05-23</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Joint Directors</td>
                                        <td>No</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Approve</td>
                                    </tr>
                                    <tr>
                                        <th>2</th>
                                        <td>Head Office</td>
                                        <td>Shiv Sharan</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>English</td>
                                        <td>Joint Directors</td>
                                        <td>18-06-22</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Head Office</td>
                                        <td>No</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Approve</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div>
                <fieldset>
                    <legend>Pending Details / लंबित विवरण</legend>

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
                                <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr>
                                            <th rowspan="2">Sr.No.<br />सरल क्र. </th>
                                            <th rowspan="2">Office Type<br />कार्यालय का प्रकार</th>
                                            <th rowspan="2">Employee Name<br />
                                                कर्मचारी का नाम</th>
                                            <th rowspan="2">Employee Designation<br />
                                                कर्मचारी पदनाम</th>
                                            <th rowspan="2">Employee Department<br />
                                                कर्मचारी विभाग</th>
                                            <th rowspan="2">Employee Subject<br />कर्मचारी विषय</th>
                                            <th colspan="5">Current Location<br />वर्तमान स्थान</th>
                                            <th colspan="5">Preference Location<br /></th>
                                            <th rowspan="2">Action<br /></th>
                                        </tr>

                                        <tr>
                                            <th>Office Type<br />
                                                कार्यालय का प्रकार</th>
                                            <th>Posted From<br />से कार्यरत </th>
                                            <th>District<br />जिला </th>
                                            <th>Block<br />विकासखण्ड </th>
                                            <th>Sankul Code<br />
                                                संकुल कोड
                                            </th>
                                            <th>Office Type<br />कार्यालय का प्रकार</th>
                                            <th>Reason For Transfer<br />
                                                स्थानांतरण का कारण</th>
                                            <th>District<br />जिला</th>
                                            <th>Block<br />विकासखण्ड</th>
                                            <th>Sankul Code<br />संकुल कोड</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <th>1</th>
                                        <td>Head Office</td>
                                        <td>Rajan Singh</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>Hindi</td>
                                        <td>Head Office</td>
                                        <td>25-02-23</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Joint Directors</td>
                                        <td>No</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>

                                        <td>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2" OnClientClick="return false;">Joining</asp:LinkButton>
                                            <%-- <button type="button" class=" Alert-Save btn btn-success btn-rounded" onclick="showhide()">Comfirm Joining</button>--%>

                                            <%--     <a class="Alert-Delete">Confoirm Joining</a></td>--%>
                                    </tr>
                                    <tr>
                                        <th>2</th>
                                        <td>Head Office</td>
                                        <td>Lokendra kumar</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>English</td>
                                        <td>Joint Directors</td>
                                        <td>23-08-23</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Head Office</td>
                                        <td>No</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2" OnClientClick="return false;">Joining</asp:LinkButton>
                                            <%-- <button type="button" class=" Alert-Save btn btn-success btn-block btn-rounded" onclick="showhide()">Comfirm Joining</button>--%></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header" id="myDIV">
                            <h4 class="modal-title text-" id="myLargeModalLabel1"><b>Employee Joining Approval</b></h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">

                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>New Joining Date <br /> नई ज्वाइनिंग दिनांक </label>
                                        <input type="date" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">

                                        <label>Remark <br /> टिप्पणी</label>
                                        <input type="text" class="form-control" placeholder="Enter Remark" />
                                    </div>
                                </div>
                                <div class="col-md-3 mt-5 ">
                                    <button type="button" class="btn btn-success Alert-request" data-bs-dismiss="modal">Approve</button>
                                    <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                            <%--<div class="row m-l-5 mt-4">
                                <div class="col-md-12">
                                    <label class="form-check m-b-0">
                                        <input type="checkbox" class="form-check-input">

                                        <span class="form-check-label"><b>जिला कार्यालय द्वारा आई डी क्रमांक:- E00015 से नवीन संकुल  सत्यापन उपरांत आज दिनांक 22/11/2023 को संकुल आवेदन अनुमोदन हेतु मुख्य कार्यालय  भेजा जा रहा है |</b></span>
                                      
                                    </label>
                                </div>
                            </div>--%>
                        </div>
                        <div class="modal-footer justify-content-center">
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>

            <!--Description-->
            <fieldset id="dcp" runat="server">
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                            <%--    <li><strong>Transfer Status</strong>
                                <ul>
                                    <li>User will be able to Select <strong>Transfer Status </strong>from Dropdown</li>
                                </ul>
                            </li>
                            <li><strong>Search (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Search button.</li>
                                    <li>After clicking on Search button the details will show on the screen according to the selected field..</li>
                                </ul>
                            </li>

                            <li><strong>Clear (Button)</strong>
                                <ul>
                                    <li>User will be able to click on Clear button.</li>
                                    <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                </ul>
                            </li>--%>
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
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                $('.Alert-request').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you really want to Approve Employee Joining?",
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
                                text: 'Approve Successfully!',
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
                        text: "Do you want to Edit Details?",
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

