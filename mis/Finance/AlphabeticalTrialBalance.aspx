﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AlphabeticalTrialBalance.aspx.cs" Inherits="mis_Finance_AlphabeticalTrialBalance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
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
                        <li class="breadcrumb-item"><a href="../mis/Module.aspx?ID=Finance" title="click to go on">Finance</a></li>
                        <li class="breadcrumb-item active"><a title="click to go on">Alphabetical Trial Balance</a></li>
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
                            <h4 class="card-title">Alphabetical Trial Balance/
                                वर्णमाला संतुलन परीक्षण</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Alphabetical Trial Balance/
                                वर्णमाला संतुलन परीक्षण</legend>
                        <div class="row align-items-end">
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
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="date1" class="form-control" autocomplete="off" value="2024-06-30" />
                                </div>
                            </div>
                             <div class="col-md-6">
                                  <div class="form-group">
                                <label for="opening-balance">
                                    Filter Amount:
   
                                    <input type="checkbox" id="opening-balance" text="Opening Balance" />
                                    Opening Bal.
 
                                </label>
                                <label for="transaction">
                                    <input type="checkbox" id="transaction" text="Transaction" />
                                    Transaction
 
                                </label>
                                <label for="closing-balance">
                                    <input type="checkbox" id="closing-balance" text="Closing Balance" />
                                    Closing Bal.
 
                                </label>
                            </div></div>
                             </div>
                            <div class="row">
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
                            </div> </div>
                        <hr />
                        <div class="col-md-12 justify-content-center">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                <a id="clearfirst" href="TrialBalance.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </fieldset> </div>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>Alphabetical Trial Balance/
                                वर्णमाला संतुलन परीक्षण </legend>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <button class="btn btn-outline-secondary btn-border" onclick="openPDF()">Print</button>
                                    <button class="btn btn-outline-success btn-border" onclick="exportFile()">Export</button>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center mb-0">
                            <h5>Alphabetical Trial Balance
                            </h5>
                        </div>
                        <div class="row justify-content-center mb-0">
                            <h5>Directorate of Public Instruction
                            </h5>
                        </div>
                        <div class="row justify-content-center mb-0">
                            <h5>[Head Office]
                            </h5>
                        </div>
                        <div class="row justify-content-center mb-0">
                            <h5>01-04-2024  To 31-06-2023 
                            </h5>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <div class="row align-items-end">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <table class="table table-bordered" id="mainTable">
                                                    <thead>
                                                        <tr>
                                                            <th>Ledger Name/<br />
                                                                खाताबही  का नाम</th>
                                                            <th>Opening/<br />
                                                                प्रारंभिक</th>
                                                            <th>Txn [Debit Amt.] /<br />
                                                                कर [डेबिट राशि]</th>
                                                            <th>Txn [Credit Amt.] /<br />
                                                                कर [क्रेडिट राशि]</th>
                                                            <th>Closing/<br />
                                                                समाप्ति</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr role="row" class="odd">
                                                            <td style="color:dodgerblue">Basic Pay/Special Pay/Dearness Allowance</td>
                                                            <td>13125550.12 Dr.</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td>13125550.12 Dr.</td>
                                                        </tr>
                                                        <tr role="row" class="odd">
                                                            <td style="color:dodgerblue">Gratuity Premium Payment</td>
                                                            <td>1083704.86 Cr.</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td>1083704.86 Cr.</td>
                                                        </tr>
                                                        <tr role="row" class="odd">
                                                            <td style="color:dodgerblue">Gratuity Payment</td>
                                                            <td>1415352.68 Dr.</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td>1415352.68 Dr.</td>
                                                        </tr>
                                                       <tr role="row" class="odd">
                                                            <td style="color:dodgerblue">Basic Pay/Special Pay/Dearness Allowance</td>
                                                            <td>26005372.97 Dr.</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td>26005372.97 Dr.</td>
                                                        </tr>
                                                        <tr role="row" class="odd">
                                                            <td style="color:dodgerblue">Gratuity Premium Payment</td>
                                                            <td>12875888.00 Dr.</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td>12875888.00 Dr.</td>
                                                        </tr>
                                                        <tr role="row" class="odd">
                                                            <td style="color:dodgerblue">Gratuity Payment</td>
                                                            <td>38881260.97 Cr.</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td>38881260.97 Cr.</td>
                                                        </tr>


                                                        <!-- Add more rows as needed -->
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
        </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
    <script>
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


        function toggleTaxDetails() {
            var taxDetails = document.getElementById('taxdetails');
            var taxSelect = document.getElementById('taxSelect');
            if (taxSelect.value == "1") {
                taxDetails.style.display = 'block';
            } else {
                taxDetails.style.display = 'none';
            }
        }

        document.getElementById('taxSelect').addEventListener('change', toggleTaxDetails);
    </script>
</asp:Content>
