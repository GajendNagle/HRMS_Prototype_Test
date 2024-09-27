<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GSTR-1.aspx.cs" Inherits="mis_Finance_GSTR_1" %>

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
            border:none !important;
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

        .table th {
    font-weight: 200;
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
                        <li class="breadcrumb-item active"><a href="OfficeWiseLedgerList.aspx" title="click to go on">GSTR-1</a></li>
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
                            <h4 class="card-title">GSTR-1</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>GSTR-1</legend>
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
                        <legend>GSTR-1 Detail /
                                GSTR-1 विवरण</legend>
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
                        <div class="row">
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
                        </div>
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
                                    <h5><b>01-04-2024 To 31-06-2024</b></h5>
                                </div>
                                <hr>
                                <div class="row">
                                             <div class="col-md-12">
                                        <h5><b>Return Summary</b></h5>
                                    </div>
                                    <hr>
                                    <div class="col-md-12">
                                    <div class="row mb-0">
                                        <div class="col-md-10 mb-0">
                                            <h5 style="color:cornflowerblue;">Total number of vouchers for the period</h5>
                                        </div>
                                        <div class="col-md-2 text-end mb-0">
                                            <h5>123</h5>
                                        </div>
                                    </div>
                         
                                    <div class="row mb-0">
                                        <div class="col-md-10 mb-0">
                                            <h5 style="color:cornflowerblue;">Include in returns</h5>
                                        </div>
                                        <div class="col-md-2 text-end mb-0">
                                            <h5>1</h5>
                                        </div>
                                    </div>
                              
                                    <div class="row mb-0">
                                        <div class="col-md-10 mb-0">
                                            <h5 style="color:cornflowerblue;">Includes in HSN/SAC Summary</h5>
                                        </div>
                                        <div class="col-md-2 text-end mb-0">
                                            <h5>1</h5>
                                        </div>
                                    </div>
                                    <div class="row mb-0">
                                        <div class="col-md-10 mb-0">
                                            <h5 style="color:cornflowerblue;">Incomplete HSN/SAC Information(to be provided)</h5>
                                        </div>
                                        <div class="col-md-2 text-end mb-0">
                                            <h5>0</h5>
                                        </div>
                                    </div>
                                    <div class="row mb-0">
                                        <div class="col-md-10 mb-0">
                                            <h5 style="color:cornflowerblue;">No relevant for returns</h5>
                                        </div>
                                        <div class="col-md-2 text-end mb-0">
                                            <h5>122</h5>
                                        </div>
                                    </div>
                                    <div class="row mb-0">
                                        <div class="col-md-10 mb-0">
                                            <h5 style="color:cornflowerblue;">Incomplete/Mismatch in information(to be resolved)</h5>
                                        </div>
                                        <div class="col-md-2 text-end mb-0">
                                            <h5>0
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="table-responsive">

                                                <table class="" id="Table">
                                                    <thead>
                                                        <tr style="border-width: 1px;border-left: 0;border-right: 0;">
                                                            <th><b>Sr. No. </b>
                                                            </th>
                                                            <th><b>Ledger Name</b></th>
                                                            <th><b>Voucher Count</b></th>
                                                            <th><b>Taxable Value </b></th>
                                                            <th><b>Integrated Tax Amount </b></th>
                                                            <th><b>Central Tax Amount  </b></th>
                                                            <th><b>State Tax Amount</b></th>
                                                            <th><b>Cess Amount</b></th>
                                                            <th><b>Tax Amount</b></th>
                                                            <th><b>Invoice Amount</b></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr role="row">
                                                            <td>1</td>
                                                            <td style="color:cornflowerblue;">Basic Pay/Special Pay/Dearness Allowance(10.00.01)</td>
                                                            <td>1</td>
                                                            <td>771144.00</td>
                                                            <td>0.00</td>
                                                            <td>6940.00</td>
                                                            <td>6940.00</td>
                                                            <td></td>
                                                            <td>13880.52</td>
                                                            <td>90995.00</td>
                                                        </tr>
                                                        <tr role="row" >
                                                            <td>2</td>
                                                            <td style="color:cornflowerblue;">Basic Pay/Special Pay/Dearness Allowance(10.00.02)</td>
                                                            <td>0</td>
                                                            <td>0.00</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td>0.00</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr role="row">
                                                            <td>3</td>
                                                            <td style="color:cornflowerblue;">Basic Pay/Special Pay/Dearness Allowance(10.00.03)</td>
                                                            <td>0</td>
                                                            <td>0.00</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td>0.00</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr role="row" >
                                                            <td>4</td>
                                                            <td style="color:cornflowerblue;">Basic Pay/Special Pay/Dearness Allowance(10.00.04)</td>
                                                            <td>0</td>
                                                            <td>0.00</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td>0.00</td>
                                                            <td>0.00</td>
                                                        </tr>
                                                        
                                                        <tr role="row" style="border-width: 1px;border-left: 0;border-right: 0;">
                                                            <td></td>
                                                            <td><b>Total</b></td>
                                                            <td><b>1</b></td>
                                                            <td><b>77114.00</b></td>
                                                            <td><b>0.00</b></td>
                                                            <td><b>6940.26</b></td>
                                                            <td><b>6940.26</b></td>
                                                            <td></td>
                                                            <td><b>13880.52</b></td>
                                                            <td><b>90995.00</b></td>
                                                        </tr>
                                                    
                                                        <tr role="row" >
                                                            <td></td>
                                                            <td style="color:cornflowerblue;">HSN/SAC Summary-12</td>
                                                            <td>0</td>
                                                            <td>77114.00</td>
                                                            <td>0.00</td>
                                                            <td>6940.26</td>
                                                            <td>6940.26</td>
                                                            <td>0.00</td>
                                                            <td>13880.52</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr role="row">
                                                            <td></td>
                                                            <td>Document Summary-13</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr role="row">
                                                            <td></td>
                                                            <td style="color:cornflowerblue;">HSN/SAC Item Wise Summary-12</td>
                                                            <td>0</td>
                                                            <td>77114.00</td>
                                                            <td>0.00</td>
                                                            <td>6940.26</td>
                                                            <td>6940.26</td>
                                                            <td>0.00</td>
                                                            <td>13880.52</td>
                                                            <td></td>
                                                        </tr>
                                                        <!-- Add more rows as needed -->
                                                    </tbody>
                                                </table>
                                                <p style="color:blue;">Note: Voucher Count and values are not provided for HSN/SAC Summary and Document Summary Drill down for details.</p>
                                            </div>

                                        </div>

                                    </div>


                                </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
        </div>
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

