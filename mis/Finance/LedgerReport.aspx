<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="LedgerReport.aspx.cs" Inherits="mis_Finance_LedgerReport" %>

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
                        <li class="breadcrumb-item"><a href="../mis/Module.aspx?ID=Finance" title="click to go on">Finance</a></li>
                        <li class="breadcrumb-item active"><a href="OfficeWiseLedgerList.aspx" title="click to go on">Ledger Report</a></li>
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
                            <h4 class="card-title">Ledger Report/
                                बहीखाता रिपोर्ट</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Ledger Report/
                                बहीखाता रिपोर्ट</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select From Date /
                                        प्रारंभिक दिनांक का चयन करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="date" class="form-control" autocomplete="off" value="2024-12-10" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select To Date /
                                        अंतिम दिनांक का चयन करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="date1" class="form-control" autocomplete="off" value="2024-12-10" />
                                </div>
                            </div>
                        </div>
                        <div class="row align-items-end">
                            <div class="col-md-6">
                                <label>Filter Amount</label>
                                <div class="row">
                                    <div class="col-md-3">
                                        <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Opening Bal.</span>

                                    </div>
                                    <div class="col-md-3">
                                        <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Debt Amt.</span>

                                    </div>
                                    <div class="col-md-3">
                                        <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Credit Amt.</span>

                                    </div>
                                    <div class="col-md-3">
                                        <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Closing Bal.</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 justify-content-end">
                                <label>Show Details</label>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Narration</span>

                                    </div>
                                    <div class="col-md-4">
                                        <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Opposite Ledger</span>

                                    </div>
                                </div>
                            </div> </div>

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
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>
                                            Select Ledger Name/<br />
                                            बहीखाता नाम का चयन करें<span style="color: red;">*</span></label>
                                        <select class="form-control select2">
                                            <option selected="selected" value="0">--Select --</option>
                                            <option value="1">Basic Pay/Special Pay/Dearness Allowance(10.00.01)</option>
                                            <option value="2">Gratuity Premium Payment(10.00.02)</option>
                                            <option value="3">Medical Expense Reimbursement(10.00.03)</option>
                                            <option value="4">Stationery, Font Copy, Bidding(10.00.04)</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <hr />
                            <div class="col-md-12 justify-content-center">
                                <div class="form-group text-center">
                                    <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                    <a id="clearfirst" href="BudgetAllocationReport.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                                </div>
                            </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>Ledger Report/
                                बहीखाता जानकारी </legend>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <button class="btn btn-outline-secondary btn-border" onclick="openPDF()">Print</button>
                                    <button class="btn btn-outline-success btn-border" onclick="exportFile()">Export</button>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center mb-0">
                            <h5>Directorate of Public Instruction
                            </h5>
                        </div>
                        <div class="row justify-content-center mb-0">
                            <h5>Ledger of: BASIC PAY/SPECIAL PAY/DEARNESS ALLOWANCE[10.01.01]
                            </h5>
                        </div>
                        <div class="row justify-content-center mb-0">
                            <h5>Head Name: Establishment Expenses
                            </h5>
                        </div>
                        <div class="row justify-content-center mb-0">
                            <h5>(01-04-2024  - 31-06-2023) Opening Bal:0.00 Cr
                            </h5>
                        </div>
                        <div class="row justify-content-center mb-0">
                            <h5>[Head Office]
                            </h5>
                        </div>
                         <div class="row justify-content-end">
                            <div class="col-md-2 justify-content-end">
                                <div class="form-group text-end">
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
                                               <th> Voucher Date/<br />वाउचर दिनांक</th>
                                               <th> Ledger Name/<br />
                                                    बहीखाता का नाम</th>
                                               <th> Vch Type /<br />वाउचर प्रकार</th>
                                               <th> Vch No. /<br />वाउचर नं.</th>
                                               <th> Debt Amount/<br /> डेबिट राशि</th>
                                               <th> Credit Amount/<br /> क्रेडिट राशि</th>
                                                <th> Clossing Bal./<br /> जमा राशि शेष </th>
                                               <th> Action/<br /> कार्रवाई</th>
                                               

                                            </tr>
                                        </thead>
                                        <tbody>
                                           <tr role="row" class="odd" align="center" valign="middle">
                                               <td>01/04/2024</td>
                                                <td>Basic Pay/Special Pay/Dearness Allowance(10.00.01)</td>
                                                <td>Payment</td>
                                                <td>H024-25VR1</td>
                                                <td>1658951.00</td>
                                               <td>1852.00</td>
                                               <td>16565399.00</td>
                                                <td><a class="Alert-View"><i class="fa fa-eye" onclick="openPDF()" aria-hidden="true"></i></a></td>
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
     </script>
</asp:Content>

