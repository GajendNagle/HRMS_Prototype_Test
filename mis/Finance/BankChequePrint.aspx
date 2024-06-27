<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="BankChequePrint.aspx.cs" Inherits="mis_Finance_BankChequePrint" %>

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
                        <li class="breadcrumb-item active"><a title="click to go on">Bank Cheque Print</a></li>
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
                            <h4 class="card-title">Bank Cheque Print/
                                बैंक चेक प्रिंट</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Bank Cheque Print/
                                बैंक चेक प्रिंट</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        A/c Payee/
                                        खाता भुगतानकर्ता<span style="color: red;"> *</span></label>
                                    <input type="checkbox" id="transaction" text="Transaction" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Cheque Date /
                                        चेक दिनांक का चयन करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="date" class="form-control" autocomplete="off" value="2024-04-01" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Beneficiary Name/<br />
                                        लाभार्थी का नाम दर्ज करें<span style="color: red;"> *</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Beneficiary Name" />
                                </div>
                            </div>

                        </div>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Amount/<br />
                                        राशि दर्ज करें<span style="color: red;"> *</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Amount" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                    
                                    <img border="0" alt="" src="../../img/pnb.png" width="100" height="100">
                                </div>
                            <div class="col-md-3 mb-4">
                                   <img border="0" alt="" src="../../img/sbi.png" width="50" height="50">
                                
                            </div>
                        </div>

                        <hr />
                      
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
    </script>
</asp:Content>

