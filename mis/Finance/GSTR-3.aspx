<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GSTR-3.aspx.cs" Inherits="mis_Finance_GSTR_3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .custom-div {
            background-color: #f8f9fa; /* Background color */
            font-family: Arial, sans-serif; /* Font family */
            color: #343a40; /* Font color */
            padding: 20px; /* Padding for overall spacing */
        }

            .custom-div h5 {
                font-size: 12px;
            }

            .custom-div hr {
                border: none; /* Remove default border */
                height: 1px; /* Set custom height */
                background-color: #343a40; /* Custom color */
                margin: 10px 0; /* Vertical spacing */
            }

        .custom-table th, .custom-table td {
            border: none; /* Remove table borders */
        }

        .custom-table th {
            font-weight: bold; /* Bold headers */
        }

        .custom-table td {
            padding: 5px; /* Padding for table cells */
        }

        .table > thead {
            vertical-align: top !important;
        }

        .table tr:nth-child(even) {
            background-color: none !important; /*Striped rows */
        }

        .table tbody tr:hover {
            background: none !important;
        }

        .table td, .table th {
            border: none !important;
        }

        .table th {
            background-color: none !important;
            color: none !important;
        }

        .table tbody {
            border-top: none !important;
        }

        .table thead {
            border-bottom: none !important;
        }

        .no-border-table {
            border-collapse: collapse;
        }

            .no-border-table th,
            .no-border-table td {
                border: none;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item"><a href="../mis/Module.aspx?ID=Finance" title="click to go on">Finance</a></li>
                        <li class="breadcrumb-item active"><a href="OfficeWiseLedgerList.aspx" title="click to go on">GSTR-3</a></li>
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
                            <h4 class="card-title">GSTR-3</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>GSTR-3</legend>
                        <div class="row align-items-end">

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Office Type/
   <br />
                                        कार्यालय प्रकार का चयन करें<span style="color: red;"> *</span>
                                    </label>
                                    <select class="form-control select2">
                                        <option selected="selected" value="0">--Select --</option>
                                        <option value="1">Head Office</option>
                                        <option value="2">JD Office</option>
                                        <option value="3">DEO Office</option>
                                        <option value="4">Block Office</option>
                                        <option value="5">Sankul</option>
                                        <option value="6">School</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Office Name/<br />
                                        कार्यालय नाम का चयन करें<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option selected="selected" value="0">--Select --</option>
                                        <option value="1">Jabalpur</option>
                                        <option value="2">Indore</option>
                                        <option value="3">Bhopal</option>
                                        <option value="4">Gwalior</option>
                                        <option value="5">Hoshangabad</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select From Date /
                                        प्रारंभिक दिनांक का चयन करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="date" class="form-control" autocomplete="off" value="2024-04-01" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select To Date /
                                        अंतिम दिनांक का चयन करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="date1" class="form-control" autocomplete="off" value="2024-04-30" />
                                </div>
                            </div>



                        </div>

                        <hr />
                        <div class="col-md-12 justify-content-center">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                <a id="clearfirst" href="GSTR-1.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>GSTR-3 Detail /
                                GSTR-3   विवरण</legend>
                        <%--<div class="row">
                            <div class="col-md-10">
                                <div class="form-group">
                                    <button class="btn btn-outline-secondary btn-border" onclick="openPDF()">Print</button>
                                    <button class="btn btn-outline-success btn-border" onclick="exportFile()">Export</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>--%>
                        <%--    <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">

                                    <table class="table no-border-table" id="mainTable">
                                        <thead>
                                            <tr align="center" valign="middle">
                                                <th style="background: #9c9db5;">Taxable Value
                                                </th>
                                                <th>77114.00</th>
                                                <th style="background: #9c9db5;">SGST </th>
                                                <th>0.00
                                                </th>
                                                <th style="background: #9c9db5;">CGST
                                                </th>
                                                <th>0.00
                                                </th>
                                                <th style="background: #9c9db5;">IGST
                                                </th>
                                                <th>0.00
                                                </th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>

                            </div>
                        </div>--%>
                        <div class="row">
                            <div class="col-md-10">
                                <div class="form-group">
                                    <button class="btn btn-outline-secondary btn-border" onclick="openPDF()">Print</button>
                                    <button class="btn btn-outline-success btn-border" onclick="exportFile()">Export</button>
                                </div>
                            </div>
                        </div>
                        <div class="custom-div mt-0 mb-0" id="gstrsummary">
                            <div class="row align-items-end">
                                <div class="col-md-12 text-end">
                                    <h5><b>01-05-2024 To 31-05-2024</b></h5>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-12">
                                        <h5><b>Return Summary</b></h5>
                                    </div>
                                </div>
                                <hr>
                                <div class="col-md-12">
                                    <div class="row mb-0">
                                        <div class="col-md-10 mb-0">
                                            <h5 style="color: cornflowerblue;">Total number of vouchers for the period</h5>
                                        </div>
                                        <div class="col-md-2 text-end mb-0">
                                            <h5>17</h5>
                                        </div>
                                    </div>

                                    <div class="row mb-0">
                                        <div class="col-md-10 mb-0">
                                            <h5 style="color: cornflowerblue;">Included in returns</h5>
                                        </div>
                                        <div class="col-md-2 text-end mb-0">
                                            <h5>1</h5>
                                        </div>
                                    </div>

                                    <div class="row mb-0">
                                        <div class="col-md-10 mb-0">
                                            <h5 style="color: cornflowerblue;"> Participating in return tables </h5>
                                        </div>
                                        <div class="col-md-2 text-end mb-0">
                                            <h5>5</h5>
                                        </div>
                                    </div>
                                    <div class="row mb-0">
                                        <div class="col-md-10 mb-0">
                                            <h5 style="color: cornflowerblue;"> No direct implication in return tables </h5>
                                        </div>
                                        <div class="col-md-2 text-end mb-0">
                                            <h5>5</h5>
                                        </div>
                                    </div>
                                    <div class="row mb-0">
                                        <div class="col-md-10 mb-0">
                                            <h5 style="color: cornflowerblue;">Not relevant for returns</h5>
                                        </div>
                                        <div class="col-md-2 text-end mb-0">
                                            <h5>0</h5>
                                        </div>
                                    </div>
                                    <div class="row mb-0">
                                        <div class="col-md-10 mb-0">
                                            <h5 style="color: cornflowerblue;">Incomplete/Mismatch in information (to be resolved)</h5>
                                        </div>
                                        <div class="col-md-2 text-end mb-0">
                                            <h5>0</h5>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <table class="" id="Table">
                                                    <thead>
                                                        <tr style="border-width: 1px; border-left: 0; border-right: 0; border-bottom: 0;">
                                                            <th><b>S.No.</b></th>
                                                            <th><b>Ledger Name</b></th>
                                                            <th><b>Taxable Value </b></th>
                                                            <th><b>Integrated Tax Amount</b></th>
                                                            <th><b>Central Tax Amount</b></th>
                                                            <th><b>State Tax Amount</b></th>
                                                            <th><b>Cess Amount</b></th>
                                                            <th><b>Tax Amount</b></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td><b>3.1</b></td>
                                                            <td><b>Outward supplies and inward supplies liable to reverse charge</b></td>
                                                            <td><b>127805.00</b></td>
                                                            <td><b>0.00 </b></td>
                                                            <td><b>9045.12</b></td>
                                                            <td><b>9045.12</b></td>
                                                            <td><b></b></td>
                                                            <td><b>18090.24</b></td>
                                                        </tr>
                                                        <tr>

                                                            <td>A</td>
                                                            <td>Outward taxable supplies (other than zero rated, nil rated and exempted) </td>
                                                            <td>0.00</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td>0</td>
                                                        </tr>
                                                        <tr>


                                                            <td>B </td>
                                                            <td>Outward taxable supplies (zero rated)</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>

                                                            <td>C</td>
                                                            <td>Other Outward supplies (Nil rated, exempted) </td>
                                                            <td>0.00</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td>0.00</td>

                                                        </tr>
                                                        <tr>

                                                            <td>D</td>
                                                            <td>Inward supplies (liable to reverse charge) </td>
                                                            <td>127805.00</td>
                                                            <td>0.00</td>
                                                            <td>9045.12</td>
                                                            <td>9045.12</td>
                                                            <td>18090.24</td>

                                                        </tr>
                                                        <tr>

                                                            <td>E</td>
                                                            <td>Non-GST outward supplies</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>

                                                        </tr>
                                                        <tr>

                                                            <td><b>3.2 </b></td>
                                                            <td><b>Outward supplies and inward supplies liable to reverse charge</b></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>

                                                        </tr>
                                                        <tr>
                                                            <td>A </td>
                                                            <td>Supplies made to Unregistered Persons</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>

                                                        </tr>
                                                        <tr>
                                                            <td>B </td>
                                                            <td>Supplies made to Composition Taxable Persons</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>C </td>
                                                            <td>Supplies made to UIN holders</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>

                                                            <td><b>4 </b></td>
                                                            <td><b>Eligible ITC </b></td>
                                                            <td></td>
                                                            <td>0.00</td>
                                                            <td>58806.91</td>
                                                            <td>58806.91</td>
                                                            <td></td>
                                                            <td>117613.82</td>

                                                        </tr>
                                                        <tr>
                                                            <td>A </td>
                                                            <td>ITC Available (whether in full or part)</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>

                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td>(1) Import of goods</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>

                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td>(2) Import of services</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>

                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td>(3) Inward supplies liable to reverse charge (other than 1 & 2 above) 0.00 8100.00 8100.00 16200.00</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>

                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td>(4) Inward supplies from ISD</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>

                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td>(5) All other ITC </td>
                                                            <td></td>
                                                            <td>0.00</td>
                                                            <td>50706.91</td>
                                                            <td>50706.91</td>
                                                            <td></td>
                                                            <td>101413.82</td>

                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td>B ITC Reversed</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>

                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td>(1) As per rules 42 & 43 of CGST Rules</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>

                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td>(2) Others</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td>C Net ITC Available (A) - (B)</td>
                                                            <td></td>
                                                            <td>0.00</td>
                                                            <td>58806.91</td>
                                                            <td>58806.91</td>
                                                            <td></td>
                                                            <td>117613.82</td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td>A From a supplier under composition scheme, exempt and nil rated supply</td>
                                                            <td>0.00</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td>0.00</td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td>B Non GST supply</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td><b>5.1 </b></td>
                                                            <td><b>Interest and Late fee Payable</b></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td><b></b></td>
                                                            <td>A Interest</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td><b></b></td>
                                                            <td>B Late Fees</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>

                                                        </tr>
                                                    </tbody>
                                                    <!-- Add more rows as needed -->
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="row">
                                            <div class="col-md-12">

                                            <div class="table-responsive">

                                                <table class="w-100" id="Table2" >
                                                    <thead>
                                                        <tr style="border-width: 1px; border-left: 0; border-right: 0; border-top: 0;">
                                                            <th style="text-align: center; vertical-align: middle;"><b>Reverse Charge Liability and Input Credit to booked</b></th>


                                                        </tr>

                                                      <%--  <tr style="border-width: 1px; border-left: 0; border-right: 0; border-bottom: 0;">
                                                            <td>Reverse Charge Inward Supplies</td>
                                                           
                                                        </tr>--%>
                                                    </thead>
                                                    <tbody>

                                                        <tr>
                                                            <td>Reverse Charge Inward Supplies</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td>0.00</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Import of Service</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Input Credit to be Booked</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr style="border-width: 1px; border-left: 0; border-right: 0; border-top: 0;">
                                                            <td style="text-align: center; vertical-align: middle;"><b>Advance Payments </b></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Amount Unadjusted Against Purchases
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Purchase Against Advance from Previous Periods
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function printModalContent(modalId) {
            var modalContent = document.querySelector('#' + modalId).cloneNode(true);
            document.body.innerHTML = modalContent.outerHTML
            window.print();
            window.location.href = "GSTR-1.aspx";
        }
        document.addEventListener('keydown', function (event) {
            if (event.ctrlKey && event.key === 'p') {
                // Prevent default behavior of Ctrl+P (opening print dialog)
                event.preventDefault();
                // Print the content of the active modal

                printModalContent('gstrsummary');

            }
        });

        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/HRMS_Document%20(1).pdf';

            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }

        function exportFile() {
            var fileUrl = '../Document/HRMS_Document%20(1).pdf';
            var a = document.createElement('a');
            a.href = fileUrl;
            a.download = 'HRMS_Document.pdf';  // Replace with the desired file name
            document.body.appendChild(a);
            a.click();
            document.body.removeChild(a);
        }
    </script>
</asp:Content>

