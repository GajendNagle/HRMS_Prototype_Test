<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DetailedTrialBalance.aspx.cs" Inherits="mis_Finance_DetailedTrialBalance" %>

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
                        <li class="breadcrumb-item">
                            <a href="#Finance" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Finance</span></a>
                        </li>
                       <li class="breadcrumb-item"> <a href="#FinanceReport" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Finance Report</span></a></li>
                    <li class="breadcrumb-item active"><a title="click to go on"> Demand Details </a></li>
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
                            <h4 class="card-title">Detailed Trial Balance/
                                विस्तृत शेष परीक्षण </h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Detailed Trial Balance/
                                विस्तृत शेष परीक्षण</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select From Date <br />
                                        प्रारंभिक दिनांक का चयन करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="date" class="form-control" autocomplete="off" value="2024-04-01" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select To Date <br />
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
                                        Select Office Type
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
                                    Select Office Name<br />
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
                                <a id="clearfirst" href="DetailedTrialBalance.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </fieldset> </div>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>Detailed Trial Balance/
                                विस्तृत शेष परीक्षण</legend>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <button class="btn btn-outline-secondary btn-border" onclick="openPDF()">Print</button>
                                    <button class="btn btn-outline-success btn-border" onclick="exportFile()">Export</button>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center mb-0">
                            <h5>Detailed Trial Balance
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
                                                            <th>Group Name<br />
                                                                समूह का नाम</th>
                                                            <th>Opening<br />
                                                                प्रारंभिक</th>
                                                            <th>Txn [Debit Amt.] <br />
                                                                टैक्स [डेबिट राशि]</th>
                                                            <th>Txn [Credit Amt.] <br />
                                                                टैक्स [क्रेडिट राशि]</th>
                                                            <th>Closing<br />
                                                                समाप्ति</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr role="row" class="odd">
                                                            <td style="color:dodgerblue">Capital Account</td>
                                                            <td>419243807.86 Cr.</td>
                                                            <td>200000000.00</td>
                                                            <td>0.00</td>
                                                            <td>219243807.86 Cr.</td>
                                                        </tr>
                                                        <tr role="row" class="odd">
                                                            <td style="color:dodgerblue">Direct Income</td>
                                                            <td>0.00 Cr.</td>
                                                            <td>2482363052.39</td>
                                                            <td>1957922673.32</td>
                                                            <td>524440379.07 Dr.</td>
                                                        </tr>
                                                        <tr role="row" class="odd">
                                                            <td style="color:dodgerblue">Miscellaneous Income</td>
                                                            <td>0.00 Cr.</td>
                                                            <td>0.00</td>
                                                            <td>126286611.71</td>
                                                            <td>126286611.71 Dr.</td>
                                                        </tr>
                                                       <tr role="row" class="odd">
                                                            <td style="color:dodgerblue">Honey Herbal Medicine Etc(M.F.P Parc)(Income)</td>
                                                            <td>0.00 Cr.</td>
                                                            <td>0.00</td>
                                                            <td>7158930.88</td>
                                                            <td>7158930.88 Cr.</td>
                                                        </tr>
                                                        <tr role="row" class="odd">
                                                            <td style="color:dodgerblue">Bank Interest</td>
                                                            <td>0.00 Cr.</td>
                                                            <td>0.00</td>
                                                            <td>1163336.00</td>
                                                            <td>1163336.00 Cr.</td>
                                                        </tr>
                                                        <tr role="row" class="odd">
                                                            <td style="color:dodgerblue">Interest Earned</td>
                                                            <td>0.00 Cr.</td>
                                                            <td>2482363052.39</td>
                                                            <td>1455900967.00</td>
                                                            <td>1026462085.39 Dr.</td>
                                                        </tr>
                                                         <tr role="row" class="odd">
                                                            <td style="color:dodgerblue">Interest on Fixed Deposit</td>
                                                            <td>0.00 Cr.</td>
                                                            <td>0.00 </td>
                                                            <td>327143479.72</td>
                                                            <td>327143479.72 Cr.</td>
                                                        </tr>
                                                         <tr role="row" class="odd">
                                                            <td style="color:dodgerblue">Miscellaneous Income</td>
                                                            <td>0.00 Cr.</td>
                                                            <td>0.00 </td>
                                                            <td>40269348.01 </td>
                                                            <td>40269348.01 Cr.</td>
                                                        </tr>
                                                        <tr role="row" class="odd">
                                                            <td style="color:dodgerblue">Indirect Expenses</td>
                                                            <td>0.00 Cr.</td>
                                                            <td>452989931.68 </td>
                                                            <td>10443620.00 </td>
                                                            <td>442546311.68 Dr.</td>
                                                        </tr>
                                                         <tr role="row" class="odd">
                                                            <td style="color:dodgerblue">Establishment Expenses</td>
                                                            <td>0.00 Cr.</td>
                                                            <td>241070381.00 </td>
                                                            <td>1301096.00 </td>
                                                            <td>239769285.00 Dr.</td>
                                                        </tr>
                                                         <tr role="row" class="odd">
                                                            <td style="color:dodgerblue">Managerial Expenses</td>
                                                            <td>0.00 Cr.</td>
                                                            <td>14618526.59 </td>
                                                            <td>8832220.00 </td>
                                                            <td>137352806.59 Dr.</td>
                                                        </tr>
                                                         <tr role="row" class="odd">
                                                            <td style="color:dodgerblue">Depriciation Charges</td>
                                                            <td>0.00 Cr.</td>
                                                            <td>25363850.00 </td>
                                                            <td>0.00 </td>
                                                            <td>25363850.00 Dr.</td>
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

