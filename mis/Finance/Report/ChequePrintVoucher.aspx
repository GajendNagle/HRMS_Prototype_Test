<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ChequePrintVoucher.aspx.cs" Inherits="mis_Finance_ChequePrintVoucher" %>

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
                    <li class="breadcrumb-item active"><a title="click to go on"> Cheque Print Voucher</a></li>
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
                            <h4 class="card-title">Cheque Print Voucher/
                               चेक प्रिंट वाउचर</h4>
                        </div>
                    </div>
                </div>
                  <div class="card-body">
                    <fieldset>
                        <legend>Cheque Print Voucher/
                               चेक प्रिंट वाउचर</legend>
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
                                        Select List of Bank
   <br />
                                        बैंक की सूची का चयन करें<span style="color: red;"> *</span>
                                    </label>
                                    <select class="form-control select2">
                                        <option selected="selected" value="0">--Select --</option>
                                        <option value="1">Axis Bank</option>
                                        <option value="2">Canara Bank</option>
                                        <option value="3">Punjab & Sind Bank</option>
                                        <option value="4">ICICI Bank</option>
                                        <option value="5">Kotak Bank</option>
                                        <option value="6">State Bank of India</option>
                                    </select>
                                </div>
                            </div>
                           </div>
                        <hr />
                        <div class="col-md-12 justify-content-center">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                <a id="clearfirst" href="ChequePrintVoucher.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </fieldset> 
                       <fieldset id="FS_Details" style="display: none">
                        <legend>Cheque Print Voucher/
                               चेक प्रिंट वाउचर</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <div class="row align-items-end">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <table class="table table-bordered" id="mainTable">
                                                    <thead>
                                                        <tr>
                                                            <th>Sr. No.<br />
                                                   क्रमांक	
                                                </th>
                                                            <th>Voucher No.
                               वाउचर संख्या</th>
                                                            <th>Favouring Name<br />
                                                                अनुकूल नाम</th>
                                                            <th>A/c Payee <br />
                                                                खाता भुगतानकर्ता</th>
                                                            <th>Instrument No. <br />
                                                                उपकरण संख्या</th>
                                                            <th>Instrument Date. <br />
                                                                उपकरण दिनांक</th>
                                                            <th>Cheque Amt. <br />
                                                                चेक राशि </th>
                                                            <th>Action<br />
                                                    कार्यवाही</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr role="row" class="odd">
                                                            <td>1</td>
                                                            <td>SBI24-25VR001</td>
                                                            <td>YOUR SELF FOR NEFT BHOPAL SAHAKARI DUGDH SANGH MYDT</td>
                                                            <td>Yes</td>
                                                            <td>758433</td>
                                                            <td>5/06/2024</td>
                                                            <td>7200000.00</td>
                                                            <td align="center" valign="middle"><a><i class="fa fa-eye" onclick="openPDF()" aria-hidden="true"></i></a></td>
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/HRMS_Document%20(1).pdf';

            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');


            function exportFile() {
                var fileUrl = '../Document/HRMS_Document%20(1).pdf';
                var a = document.createElement('a');
                a.href = fileUrl;
                a.download = 'HRMS_Document.pdf';  // Replace with the desired file name
                document.body.appendChild(a);
                a.click();
                document.body.removeChild(a);
            }
        }
    </script>
</asp:Content>

