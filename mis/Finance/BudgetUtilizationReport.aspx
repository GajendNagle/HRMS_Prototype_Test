﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="BudgetUtilizationReport.aspx.cs" Inherits="mis_Finance_BudgetUtilizationReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
       <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor"></h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../mis/Module.aspx?ID=Finance" title="click to go on">Finance</a></li>
                    <li class="breadcrumb-item active"><a href="PaymentVoucher.aspx" title="click to go on">Budget Utilization Report</a></li>
                </ol>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">Budget Utilization Report /
                                बजट उपयोगिता रिपोर्ट</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
     <fieldset>
                        <legend>Budget Utilization Report /
                                बजट उपयोगिता रिपोर्ट</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                    Select Financial Year /
                                        वित्तीय वर्ष का चयन करें<span style="color: red;"> *</span></label>
                                    <input maxlength="4" autocomplete="off" class="form-control datepickerYear" placeholder="2024-25" type="text" data-val="true" value="2024-25" />
                                </div>
                            </div>
                             <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                    Select Month /
                                        महीना का चयन करें<span style="color: red;"> *</span></label>
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
                                        Select Head Type /<br />
                                        हेड टाइप का चयन करें<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="2">Expense</option>
                                        <option value="1">Annual</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Office Type/
   <br />
                                         ऑफिस टाइप का चयन करें<span style="color: red;"> *</span>
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
                                Select Office Name/<br />
                                ऑफिस नाम का चयन करें<span style="color: red;">*</span></label>
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
                                <a id="clearfirst" href="BudgetUtilizationReport.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>
                        </div>

                        </div>
                    </fieldset>
                      <fieldset id="FS_Details" style="display: none">
                        <legend>Budget Utilization Report /
                                बजट उपयोगिता रिपोर्ट</legend>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <button class="btn btn-outline-secondary btn-sm btn-rounded w-55" onclick="openPDF()">Print</button>
                                    <button class="btn btn-outline-success btn-sm btn-rounded w-55" onclick="exportFile()">Export</button>
                                </div>
                            </div>
                        </div>
                          <div class="row justify-content-center">
                            <h5>Budget Utilization Report(April -24-25)<br />
                                [Head Office]
                            </h5>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered" id="mainTable">
                                        <thead>
                                            <tr>
                                                <th>Sr. No. /<br />
                                                    क्र.सं.
                                                </th>
                                                <th>Ledger Code /
                                            <br />
                                                    बहीखाता कोड
                                                <th>Ledger Name /<br />
                                                    बहीखाता नाम</th>
                                                <th>Allocation /
                                            <br />
                                                    आवंटन 
                                                </th>
                                                <th>Utilization /
                                            <br />
                                                    उपयोगीकरण
                                                </th>
                                                <th>% of Utilization/
                                            <br />
                                                    % उपयोगीकरण
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>1</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>10.01.01</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Basic Pay/Special Pay/Dearness Allowance</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>58745783.00</a>
                                                </td>
                                                 <td align="center" valign="middle">
                                                    <a>9913187.50</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>16.87%</a>
                                                </td>
                                            </tr>
                                          <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>2</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>10.01.02</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Medical Expense Reimbursement</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>12985757.00</a>
                                                </td>
                                                 <td align="center" valign="middle">
                                                    <a>0.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>0.00%</a>
                                                </td>
                                            </tr>
                                             <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>3</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>10.01.03</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Stationery, Font Copy, Bidding</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>12985757.00</a>
                                                </td>
                                                 <td align="center" valign="middle">
                                                    <a>0.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>0.00%</a>
                                                </td>
                                            </tr>
                                            <!-- Add more rows as needed -->
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                    </fieldset>


                </div>
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
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
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
        });</script>
</asp:Content>
