<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="CustomDayBook.aspx.cs" Inherits="mis_Finance_CustomDayBook" %>

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
                    <li class="breadcrumb-item active"><a title="click to go on"> Custom Day Book</a></li>
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
                            <h4 class="card-title">Custom Day Book/
                                कस्टम डे बुक</h4>
                        </div>
                    </div>
                </div>
                  <div class="card-body">
                    <fieldset>
                        <legend>Custom Day Book/
                                कस्टम डे बुक</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select From Date <br />
                                       प्रारंभिक दिनांक का चयन करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="date" class="form-control" autocomplete="off" value="2024-12-10" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select To Date <br />
                                        अंतिम दिनांक का चयन करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="date1" class="form-control" autocomplete="off" value="2024-12-10" />
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
                            <div class="col-md-3">
                                <div class="form-group">
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
                            </div>
                        </div>
                        <hr />
                        <div class="col-md-12 justify-content-center">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                <a id="clearfirst" href="CustomDayBook.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>Custom Day Book/
                                कस्टम डे बुक</legend>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <button class="btn btn-outline-secondary btn-border" onclick="openPDF()">Print</button>
                                    <button class="btn btn-outline-success btn-border" onclick="exportFile()">Export</button>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center mb-0">
                            <h5>Custom Day Book
                               
                            </h5>
                        </div><div class="row justify-content-center mb-0">
                            <h5>
                                Directorate of Public Instruction,
                            </h5>
                        </div>
                        <div class="row justify-content-center mb-0">
                            <h5>[Head Office]
                            </h5>
                        </div>
                        <div class="row justify-content-center mb-0">
                            <h5>01-04-2024  To 31-06-2024 
                            </h5>
                        </div>
                        <div class="row align-items-end">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="mainTable">
                                        <thead>
                                            <tr align="center" valign="middle">
                                               <th> Voucher Date<br />वाउचर दिनांक</th>
                                               <th> Ledger Name<br />
                                                    बहीखाता का नाम</th>
                                               <th> Vch Type <br />वाउचर प्रकार</th>
                                               <th> Vch No. <br />वाउचर नं.</th>
                                               <th> Office Name<br /> कार्यालय का नाम</th>
                                               <th> Debt Amount<br /> डेबिट राशि</th>
                                               <th> Credit Amount<br /> क्रेडिट राशि</th>
                                               <th> Action<br /> कार्यवाही</th>
                                               

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd" align="center" valign="middle">
                                               <td>01/04/2024</td>
                                                <td style="text-align: left;">Basic Pay/Special Pay/Dearness Allowance (10.01.01)</td>
                                                <td>Payment</td>
                                                <td>H024-25VR1</td>
                                                <td>Head Office</td>
                                                <td>1658951.00</td>
                                                <td></td>
                                                <td style="white-space: nowrap;"><a class="Alert-View"><i class="fa fa-eye" onclick="openPDF()" aria-hidden="true"></i></a>|<a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                            </tr>
                                            <tr role="row" class="odd" align="center" valign="middle">
                                              <td>01/04/2024</td>
                                                 <td style="text-align: left;">Medical Expense Reimbursement (10.02.01)</td>
                                                <td>Receipt</td>
                                                <td>H024-25MR109</td>
                                                <td>Head Office</td>
                                                <td></td>
                                                <td>1131.00</td>
                                                <td><a class="Alert-View"><i class="fa fa-eye" onclick="openPDF()" aria-hidden="true"></i></a>|<a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
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
             </div> </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
     <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../../../img/Finance.pdf';

            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
         } 

        function exportFile() {
            var fileUrl = '../../../img/Finance.pdf';
            var a = document.createElement('a');
            a.href = fileUrl;
            a.download = 'HRMS_Document.pdf';  // Replace with the desired file name
            document.body.appendChild(a);
            a.click();
            document.body.removeChild(a);
        }
     </script>
</asp:Content>

