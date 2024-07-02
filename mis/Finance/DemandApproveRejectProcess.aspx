<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DemandApproveRejectProcess.aspx.cs" Inherits="mis_Finance_DemandApproveRejectProcess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
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
                            <a href="#Finance" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Finance</span></a>
                        </li>
                         <li class="breadcrumb-item"> <a href="#DemandProcess" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Demand Process</span></a></li>
                    <li class="breadcrumb-item active"><a title="click to go on"> Demand Request Process</a></li>
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
                            <h4 class="card-title">Demand Request Process /
                                मांग अनुरोध प्रक्रिया</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                     <fieldset>
                        <legend>Demand Details /
                                मांग विवरण</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                    Select Financial Year <br />
                                        वित्तीय वर्ष का चयन करें<span style="color: red;"> *</span></label>
                                    <input maxlength="4" autocomplete="off" class="form-control datepickerYear" placeholder="2024-25" type="text" data-val="true" value="2024-25" />
                                </div>
                            </div>
                             <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                    Select Month <br />
                                        माह का चयन करें<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                         <option value="6">June </option>
                                        <option value="1">January </option>
                                        <option value="2">February</option>
                                        <option value="3">March </option>
                                        <option value="4">April</option>
                                        <option value="5">May </option>
                                        <option value="7">July </option>
                                        <option value="8">August </option>
                                        <option value="9">September </option>
                                        <option value="10">October </option>
                                        <option value="11">November  </option>
                                        <option value="12">December  </option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Head Type <br />
                                        हेड प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="2">Expense</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Office Type
   <br />
                                         कार्यालय प्रकार का चयन करें<span style="color: red;"> *</span>
                                    </label>
                                    <select class="form-control select2">
                                        <option selected="selected" value="0">--Select --</option>
                                        <option value="1">Head Office</option>
                                        <option value="2"> JD Office</option>
                                        <option value="3">DEO Office</option>
                                        <option value="4">Block Office</option>
                                        <option value="5">Sankul</option>
                                        <option value="6">School</option>
                                    </select>
                                </div>
                            </div></div>
                            <div class="row">
                            <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Office Name<br />
                                कार्यालय नाम का चयन करें<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                        <option selected="selected" value="0">--Select --</option>
                                        <option value="1">Jabalpur</option>
                                        <option value="2"> Indore</option>
                                        <option value="3">Bhopal</option>
                                        <option value="4">Gwalior</option>
                                        <option value="5">Hoshangabad</option>
                                    </select>
                        </div>
                    </div>

                            <hr />
                            <div class="col-md-12 justify-content-center">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                <a id="clearfirst" href="DemandApproveRejectProcess.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>
                        </div>

                        </div>
                    </fieldset>
                        <fieldset id="FS_Details" style="display: none">
                        <legend>Demand Details /
                                मांग विवरण </legend>
                        <div class="row justify-content-end">
                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered" id="mainTable">
                                        <thead>
                                            <tr align="center" valign="middle">
                                                <th>Sr. No. <br />
                                                    क्रमांक
                                                </th>
                                                <th>Check Box <br />
                                                    चेक बॉक्स
                                                </th>
                                                <th>Ledger Code 
                                            <br />
                                                    बहीखाता कोड
                                                <th>Ledger Name<br />
                                                    बहीखाता का नाम</th>
                                                <th>Date 
                                            <br />
                                                    दिनांक 
                                                </th>
                                                <th>Date Wise Total Amount 
                                            <br />
                                                    दिनांकवार कुल राशि
                                                </th>
                                                <th>Status 
                                            <br />
                                                    कार्यवाही
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>1</span>
                                                </td>
                                                <td align="center" valign="middle" ><input id="ContentBody_chck1" type="checkbox" name="ctl00$ContentBody$chck1" />
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>10.01.01</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Basic Pay/Special Pay/Dearness Allowance</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>02-02-2023</a>
                                                </td>
                                                 <td align="center" valign="middle">
                                                    <a>543000.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Pending</a>
                                                </td>
                                            </tr>
                                          <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>2</span>
                                                </td>
                                              <td align="center" valign="middle" ><input id="ContentBody_chck1" type="checkbox" name="ctl00$ContentBody$chck1" />
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>10.02.01</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Medical Expense Reimbursement</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>07-06-2023</a>
                                                </td>
                                                 <td align="center" valign="middle">
                                                    <a>100054.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Pending</a>
                                                </td>
                                            </tr>
                                        <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>3</span>
                                                </td>
                                            <td align="center" valign="middle" ><input id="ContentBody_chck1" type="checkbox" name="ctl00$ContentBody$chck1" />
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>10.03.01</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Stationery, Font Copy, Bidding</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>05-08-2023</a>
                                                </td>
                                                 <td align="center" valign="middle">
                                                    <a>10000.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Pending</a>
                                                </td>
                                            </tr>
                                             <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span></span>
                                                </td>
                                            <td align="center" valign="middle" >
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span></span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a></a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a><b>Total</b></a>
                                                </td>
                                                 <td align="center" valign="middle">
                                                    <a>743054.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a></a>
                                                </td>
                                            </tr>
                                            <!-- Add more rows as needed -->
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                            <div class="col-md-12 justify-content-center">
                            <div class="form-group text-center">
                                <button type="button" class=" Alert-Approve btn btn-outline-success btn-border w-lg">Approve</button>
                            <a class="Alert-Reject  btn btn-outline-danger w-lg btn-border">Reject</a>
                                <a id="clearfirst" href="DemandApproveRejectProcess.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
     <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear % 100); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                //setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        $('.datepickerYear2').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear2").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                //setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        // Function to set default value to current financial year
        function setDefaultFinancialYear() {
            var currentDate = new Date();
            var currentYear = currentDate.getFullYear();
            var nextYear = currentYear + 1;
            var financialYear = currentYear + '-' + (nextYear);
            $(".datepickerYear").val(financialYear);
        }
        // Set default value to current financial year on page load
        $(document).ready(function () {
            //setDefaultFinancialYear();
        });

        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Approve').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Approve Demand Request Details?",
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
                                text: 'Demand Request Details Approved Successfully!',
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
                        text: "Do you want to Reject Demand Request?",
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
                                text: 'Demand Request Rejected Successfully!',
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

