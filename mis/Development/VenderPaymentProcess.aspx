<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VenderPaymentProcess.aspx.cs" Inherits="mis_Development_VenderPaymentProcess" %>

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
                            <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Civil Construction</span></a>
                        </li>
                        <li class="breadcrumb-item">Vender Payment Process
                        </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Vender Payment Process / विक्रेता भुगतान प्रक्रिया
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                .
                            </marquee>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Vender Payment Process / विक्रेता भुगतान प्रक्रिया</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Select Project Year<br />
                            प्रोजेक्ट वर्ष का चयन करें<span style="color: red">*</span>
                        </label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option>2024</option>
                            <option>2023</option>
                            <option>2022</option>
                            <option>2021</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label>
                            Select Project No<br />
                            प्रोजेक्ट नंबर का चयन करें<span style="color: red;">*</span>
                        </label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option value="1">PWDMP001</option>
                            <option value="2">PWDMP002</option>
                            <option value="3">PWDMP003</option>
                            <option value="4">PWDMP004</option>
                        </select>
                    </div>
              
                    <div class="col-md-3">
                        <label>
                            Select Installment No. <br />
                            किस्त संख्या का चयन करें<span style="color: red;">*</span>
                        </label>
                      <select class="form-control select2" id="ddlProjectNo1" >
                            <option>Select</option>
                            <option value="1">First Installment </option>
                            <option value="1">Second Installment </option>
                            <option value="1">Third Installment </option>
                            <option value="1">Fourth Installment </option>
                           
                        </select>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border  w-lg" onclick="document.getElementById('table1').style.display='block'">Search</button>
                        <a href="VenderPaymentProcess.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table1" style="display: none;">
                <legend>Details / विवरण</legend>
 
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
 <br />
                                            क्रमांक</th>
                                        <th>GSTIN No.<br />
                                            जीएसटीआईएन नं.
                                        </th>
                                        <th>Pan No<br />
                                            पैन नंबर</th>
                                        <th>Work Category<br />
                                            कार्य श्रेणी</th>
                                        <th>Work Subcategory<br />
                                            कार्य उपश्रेणी</th>

                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>
                                    <td>
                                        <input type="text" class="form-control" value="22AAAAA0000A1Z5" readonly="readonly" /></td>

                                    <td>
                                        <input type="text" class="form-control" value="AFZPK7190K" readonly="readonly" /></td>
                                    <td>
                                        <input type="text" class="form-control" value="स्कूल मरम्मत/निर्माण" readonly="readonly" /></td>

                                    <td>
                                        <input type="text" class="form-control" value="इमारत मरम्मत" readonly="readonly" /></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <legend>Details / विवरण</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Enter Principal Amount<br />
                            मूल राशि दर्ज करें<span style="color: red;">*</span>
                        </label>
                        <input type="text" class="form-control" placeholder="Enter Principal Amount" />
                    </div>

                    <div class="col-md-3">
                        <label>
                            Enter GST Amount<br />
                            जीएसटी राशि दर्ज करें<span style="color: red;">*</span>
                        </label>
                        <input type="text" class="form-control" placeholder="Enter GST Amount" />
                    </div>

                    <div class="col-md-3">
                        <label>
                            Enter TDS Amount<br />
                            टीडीएस राशि दर्ज करें<span style="color: red;">*</span>
                        </label>
                        <input type="text" class="form-control" placeholder="Enter TDS Amount" />
                    </div>

                    <div class="col-md-3">
                        <label>
                            Enter GST-TDS Amount<br />
                            जीएसटी-टीडीएस राशि दर्ज करें<span style="color: red;">*</span>
                        </label>
                        <input type="text" class="form-control" placeholder="Enter GST-TDS Amount" />
                    </div>
                </div>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Enter Net Amount<br />
                            नेट अमाउंट दर्ज करें<span style="color: red;">*</span>
                        </label>
                        <input type="text" class="form-control" placeholder="Enter Net Amount" />
                    </div>

                </div>

                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border  w-lg" onclick="openPDF()">Generate Payment Order/Print</button>
                        <a href="VenderPaymentProcess.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>

            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
    function openPDF() {
        // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
        var pdfUrl = '../../img/blankpdf.pdf';
        // Open the PDF in a new window or tab
        window.open(pdfUrl, '_blank');
    }
    </script>
</asp:Content>

