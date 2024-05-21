<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="BEO_TransferApproval.aspx.cs" Inherits="mis_Transaction_BEO_TransferApproval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #EmployeeDetails1 {
            display: none;
        }


        #showsavebtn {
            display: none;
        }

        #btnApproveBEO {
            display: none;
        }

        #note {
            color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">BEO Transfer Approval</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                        <li class="breadcrumb-item active">BEO Transfer Approval</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>Transfer Approval</legend>
                    <div class="row">
                        <div class="col-md-12 mt-3">
                            <div class="form-group">
                                <span class="bg-megnalight">District : 
                              <b class="font-bold">Agar Malwa </b>
                                </span>&nbsp&nbsp&nbsp
                                <span class="bg-megnalight">Block : 
                              <b class="font-bold">Agar </b>
                                </span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Employee ID-Name/कर्मचारी आईडी-नाम<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="--Select--">543545-Ashok Kumar</option>
                                    <option value="--Select--">234343-Shiv Sharan</option>
                                    <option value="--Select--">453445-Hari Om</option>
                                    <option value="--Select--">435452-Ashutosh Sharma</option>
                                    <option value="--Select--">234343-Zaheer Ansari</option>
                                    <option value="--Select--">453445-Ajay Nagar</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>From Date<span style="color: red">*</span></label>
                                <input name="ename" id="firstDate2" type="date" class="form-control" autocomplete="off" onchange="updateSecondDate()" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>To Date<span style="color: red">*</span></label>
                                <input name="ename" id="firstDate3" type="date" class="form-control" autocomplete="off" onchange="updateSecondDate()" />
                            </div>
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group ">
                                <button type="button" onclick="HideShow()" class=" btn btn-success btn-rounded ">Search</button>
                                <a href="BEO_TransferApproval.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div id="EmployeeDetails1">
                    <fieldset>
                        <legend>Employee Details</legend>

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
                                    <table class="table table-bordered">
                                        <tr>
                                            <th rowspan="2">Sr.No.</th>
                                            <th rowspan="2">Action</th>
                                            <th rowspan="2">Office Type</th>
                                            <th rowspan="2">Employee ID-Name</th>
                                            <th rowspan="2">Employee Designation</th>
                                            <th rowspan="2">Employee Department</th>
                                            <th rowspan="2">Employee Subject</th>
                                            <th colspan="5" class="text-center">Current Location</th>
                                            <th colspan="5" class="text-center">Preference Location</th>
                                            <th rowspan="2">View Service Book</th>
                                        </tr>
                                        <tr>
                                            <th>Office Name</th>
                                            <th>Posted From</th>
                                            <th>District</th>
                                            <th>Block</th>
                                            <th>Sankul Code</th>
                                            <th>Office Name</th>
                                            <th>Reason For Transfer</th>
                                            <th>District</th>
                                            <th>Block</th>
                                            <th>Sankul Code</th>
                                        </tr>
                                        <tr>
                                            <th>1</th>
                                            <td>
                                                <input id="checkbox1" onclick="showhidesavebtn()" type="checkbox" /></td>
                                            <td>Head Office</td>
                                            <td>543545-Ashok Kumar</td>
                                            <td>Teacher</td>
                                            <td>DPI</td>
                                            <td>Hindi</td>
                                            <td>JOINT DIRECTORS</td>
                                            <td>14-05-23</td>
                                            <td>Agar Malwa</td>
                                            <td>Agar</td>
                                            <td>6564545</td>
                                            <td>Head Office</td>
                                            <td>No</td>
                                            <td>Bhopal</td>
                                            <td>Bhopal</td>
                                            <td>6564545</td>
                                            <td><a onclick="openPDF()" class="btn" onclientclick="return false;"><i class="fas fa-eye"></i>View</a></td>
                                        </tr>
                                        <tr>
                                            <th>2</th>
                                            <td>
                                                <input id="checkbox2" onclick="showhidesavebtn()" type="checkbox" /></td>
                                            <td>Head Office</td>
                                            <td>234343-Shiv Sharan</td>
                                            <td>Teacher</td>
                                            <td>DPI</td>
                                            <td>English</td>
                                            <td>School</td>
                                            <td>11-06-22</td>
                                            <td>Bhopal</td>
                                            <td>Bhopal</td>
                                            <td>6564545</td>
                                            <td>SANKUL/AEO</td>
                                            <td>No</td>
                                            <td>Agar Malwa</td>
                                            <td>Agar</td>
                                            <td>1546156</td>
                                            <td><a onclick="openPDF()" class="btn" onclientclick="return false;"><i class="fas fa-eye"></i>View</a></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div>
                                    <p id="note"><b>Approve The Application After Clicking On The Checkbox/चेक बॉक्स पर क्लिक करने के उपरांत आवेदन का अनुमोदन करें |</b></p>
                                </div>
                                <br />
                            </div>
                        </div>
                        <div id="btnApproveBEO" class="row justify-content-center">
                            <div class="col-md-12 text-center">
                                <button onclientclick="return false;" type="button" onclick="()" class="Alert-ApproveT btn btn-success ">Approve By BEO</button>
                                <button type="button" class=" btn btn-danger Alert-RejectT">Reject By BEO</button>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <fieldset>
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">
                                <li><strong>Employee ID</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Employee ID </strong>from the dropdown and the data will be populated from the <strong>Employee Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>From Date / To Date</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Date</strong>from the calendar.</li>
                                    </ul>
                                </li>
                                <li><strong>Search </strong>
                                    <ul>
                                        <li>User should be able to click on Search button.</li>
                                        <li>After clicking on Search button the School details will show on the screen according to the selected field.</li>
                                    </ul>
                                </li>
                                <li><strong>Clear</strong>
                                    <ul>
                                        <li>User should be able to click on Clear button.</li>
                                        <li>After clicking on Clear button all the dropdown should be Clear or reload the same page.</li>
                                    </ul>
                                </li>
                                <li><strong>Action</strong>
                                    <ul>
                                        <%--   <li>To approve the application, after clicking on the checkbox, the user can fill Order details like <strong>Order number(Order number is auto generated), Order Date, and Document</strong>.</li>--%>
                                        <li>To approve the application, after clicking on the checkbox, Approve and Request Button wil be shown</li>
                                    </ul>
                                </li>
                                <li><strong>View E Service Book</strong>
                                    <ul>
                                        <li>User should be able to click on View Icon.</li>
                                        <li>After clicking on the View Icon a <strong>E Service Book</strong> will open in another tab.</li>
                                    </ul>
                                </li>
                                <li><strong>Approve By BEO</strong>
                                    <ul>
                                        <li>User Can Click Approve By BEO Button.</li>
                                        <li>On Approve By BEO button click form field should be validated.</li>
                                        <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                        <li>If click on Yes – Data will be forwarded to DEO panel and remove form this grid, and message will appear on the screen – Message ("Success!" "Record Saved Successfully!")</li>
                                        <li>If click on NO the data will not be saved and will return to the same page.</li>
                                    </ul>
                                </li>
                                <li><strong>Reject By BEO</strong>
                                    <ul>
                                        <li>User Can Click Reject By BEO Button.</li>
                                        <li>On Reject By BEO button click form field should be validated.</li>
                                        <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                        <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!")</li>
                                        <li>If click on NO the data will not be saved and will return to the same page.</li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function HideShow() {

            var x = document.getElementById("EmployeeDetails1");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/E-Service Book.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>
    <script>
        function showhidesavebtn() {
            var checkbox1 = document.getElementById("checkbox1");
            var checkbox2 = document.getElementById("checkbox2");
            var btnApproveBEO = document.getElementById("btnApproveBEO");
            if (checkbox1.checked || checkbox2.checked) {
                btnApproveBEO.style.display = "block"
            }
            else if (checkbox2.checked === false && checkbox1.checked === false) {
                btnApproveBEO.style.display = "none"
            }
            else {
                btnApproveBEO.style.display = "block"
            }
        }
    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-ApproveT').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Approve this Transfer?",
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
                                text: 'Transfer Approveed Successfully!',
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

                $('.Alert-RejectT').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Reject this Transfer?",
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
                                text: 'Transfer Rejected Successfully!',
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
