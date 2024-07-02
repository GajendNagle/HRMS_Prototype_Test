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
                        <li class="breadcrumb-item">
                            <a href="#Finance" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Finance</span></a>
                        </li>
                       <li class="breadcrumb-item"> <a href="#FinanceReport" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Finance Report</span></a></li>
                    <li class="breadcrumb-item active"><a title="click to go on"> Bank Cheque Print</a></li>
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
                            <h4 class="card-title">Bank Cheque Print/
                                बैंक चेक प्रिंट</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <%--<fieldset>
                        <legend>Bank Cheque Print/
                                बैंक चेक प्रिंट</legend>--%>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="opening-balance">
                                    <input type="checkbox" id="Payee" text="Payee" />
                                    A/c Payee
                                </label>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Cheque Date <br />
                                        चेक दिनांक का चयन करें<span style="color: red;"> *</span></label>
                                <input name="ctl00$ContentBody$TextBox5" type="date" id="date" class="form-control" autocomplete="off" value="2024-04-01" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Beneficiary Name<br />
                                    लाभार्थी का नाम दर्ज करें<span style="color: red;"> *</span></label>
                                <input type="text" class="form-control" placeholder="Enter Beneficiary Name" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Amount<br />
                                    राशि दर्ज करें<span style="color: red;"> *</span></label>
                                <input type="text" class="form-control" placeholder="Enter Amount" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2 mb-5">
                            <img border="0" alt="" src="../../../img/pnb.png" width="100" height="80">
                        </div>
                        <div class="col-md-2">
                            <img border="0" alt="" src="../../../img/kotak.png" width="100" height="30">
                        </div>
                        <div class="col-md-2">
                            <img border="0" alt="" src="../../../img/icici.png" width="100" height="30">
                        </div>
                        <div class="col-md-2">
                            <img border="0" alt="" src="../../../img/canara.png" width="100" height="30">
                        </div>
                        <div class="col-md-2 mb-4">
                            <img border="0" alt="" src="../../../img/sbi.png" width="100" height="50">
                        </div>
                    </div>
                <hr />

                <%--  </fieldset>--%>
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

