<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="CashBankBook.aspx.cs" Inherits="mis_Finance_CashBankBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                        <li class="breadcrumb-item">
                            <a href="#Finance" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Finance</span></a>
                        </li>
                        <li class="breadcrumb-item"> <a href="#FinanceReport" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Finance Report</span></a></li>
                    <li class="breadcrumb-item active"><a title="click to go on"> Cash Bank Book</a></li>
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
                            <h4 class="card-title">Cash Bank Book/
                                कैश बैंक बुक</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Cash Bank Book/
                                कैश बैंक बुक</legend>
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
                                        <option value="2">JD Office</option>
                                        <option value="3">DEO Office</option>
                                        <option value="4">Block Office</option>
                                        <option value="5">Sankul</option>
                                        <option value="6">School</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
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
                                </div>
                            <div class="col-md-6 mt-5" >
                                <label for="opening-balance">
                                    Filter Amount:
   
                                    <input type="checkbox" id="opening-balance" text="Opening Balance"  />
                                    Opening Bal.
 
                                </label>
                                <label for="transaction">
                                    <input type="checkbox" id="transaction" text="Transaction"  />
                                    Transaction
 
                                </label>
                                <label for="closing-balance" >
                                    <input type="checkbox" id="closing-balance" text="Closing Balance"/>
                                    Closing Bal.
 
                                </label>
                            </div>
                            </div>

                            <hr />
                            <div class="col-md-12 justify-content-center">
                                <div class="form-group text-center">
                                    <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                    <a id="clearfirst" href="CashBankBook.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                                </div>
                            </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>Expenses Report/
                                व्यय जानकारी </legend>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <button class="btn btn-outline-secondary btn-border" onclick="openPDF()">Print</button>
                                    <button class="btn btn-outline-success btn-border" onclick="exportFile()">Export</button>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center mb-0">
                            <h5>Cash/Bank Book(s)
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
                                                            <td>Bank Accounts</td>
                                                            <td>525658926.14 Dr.</td>
                                                            <td>7589685.14</td>
                                                            <td>143747658880.00</td>
                                                            <td>7317765120.87 Cr</td>

                                                        </tr>
                                                        <tr role="row" class="odd">
                                                            <td>Grand Total</td>
                                                            <td>525658926.14 Dr.</td>
                                                            <td>7589685.14</td>
                                                            <td>143747658880.00</td>
                                                            <td>7317765120.87 Cr</td>

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
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
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

