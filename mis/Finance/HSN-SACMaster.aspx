<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="HSN-SACMaster.aspx.cs" Inherits="mis_Finance_HSN_SACMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor"></h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../mis/Module.aspx?ID=Finance" title="click to go on">Finance</a></li>
                    <li class="breadcrumb-item active"><a href="PaymentVoucher.aspx" title="click to go on">HSN SAC Master</a></li>
                </ol>
            </div>
        </div>
    </div>


    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h5 class="card-title">HSN SAC Master /
                                एच.एस.एन सैक मास्टर</h5>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>HSN SAC Master /
                                एच.एस.एन सैक मास्टर</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Type of Supply/
   <br />
                                        सप्लाई प्रकार का चयन करें<span style="color: red;"> *</span>
                                    </label>
                                    <select class="form-control select2">
                                        <option selected="selected" value="0">--Select --</option>
                                        <option value="1">Goods</option>
                                        <option value="2">Services</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Enter HSN/SAC Code/
   <br />
                                        एच.एस.एच/एस.ए.सी कोड दर्ज करें<span style="color: red;"> *</span>
                                    </label>
                                    <input type="text" class="form-control" value="HSN/SAC Code" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Enter HSN/SAC Main Code/
   <br />
                                        एच.एस.एच/एस.ए.सी मुख्य कोड दर्ज करें<span style="color: red;"> *</span>
                                    </label>
                                    <input type="text" class="form-control" value="HSN/SAC Main Code" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Enter HSN/SAC Description/
   <br />
                                        एच.एस.एच/एस.ए.सी विवरण दर्ज करें<span style="color: red;"> *</span>
                                    </label>
                                    <input type="text" class="form-control" value="HSN/SAC Description" />
                                </div>
                            </div>
                        </div>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Type of Taxability/<br />
                                        करयोग्यता प्रकार का चयन करें<span style="color: red;">*</span></label>
                                    <select class="form-control select2" id="taxSelect"  onchange="toggleTaxDetails()">
                                        <option selected="selected" value="0">--Select --</option>
                                        <option value="1">Taxable</option>
                                        <option value="2">Exempt</option>
                                        <option value="3">NilRated</option>
                                    </select>
                                </div>
                            </div>
                             <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        HSN/SAC Effective Date /
                                        एचएसएच/एसएसी प्रभावी दिनांक दर्ज करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="date1" class="form-control" autocomplete="off" value="2024-12-10" />
                                </div>
                            </div>
                            <fieldset id="taxdetails" style="display: none">
                                <legend>IGST/SGCT/CGCT% 
                                </legend>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Integrated Tax IGST(%)/<br />
                                                आई.जी.एस.टी(%) का चयन करें<span style="color: red;">*</span></label>
                                            <select class="form-control select2">
                                                <option selected="selected" value="0">--Select --</option>
                                                <option value="1">0%(Nil Rated)</option>
                                                <option value="2">5%</option>
                                                <option value="3">12%</option>
                                                <option value="4">18%</option>
                                                <option value="5">28%</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                CGST(%)/<br />
                                                सी.जी.एस.टी(%) दर्ज करें<span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" value="Enter CGST(%)" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                SGST(%)/<br />
                                                एस.जी.एस.टी(%) दर्ज करें<span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" value="Enter SGST(%)" />
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                            
                        </div>
                        <hr />
                        <div class="col-md-12 justify-content-center">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Save</button>
                                <a id="clearfirst" href="OfficeWiseLedgerList.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>HSN/SAC Detail</legend>
                        <div class="row">
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
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered" id="mainTable">
                                        <thead>
                                            <tr align="center" valign="middle">
                                                <th>Sr. No. /<br />
                                                    क्र.सं.
                                                </th>
                                                <th>Type of Supply /<br />
                                                    सप्लाई प्रकार </th>
                                                <th>HSN/SAC Code /
                                            <br />
                                                    एच.एस.एच/एस.ए.सी कोड  </th>
                                                <th>HSN Description/
                                            <br />
                                                    एचएसएच विवरण
                                                </th>
                                                <th>Applicable From/
                                            <br />
                                                    से लागू
                                                </th>
                                                <th>IGST(%) /
                                            <br />
                                                   आई.जी.एस.टी(%) 
                                                </th>
                                                <th>CGST(%) /
                                            <br />
                                                   सी.जी.एस.टी(%)
                                                </th>
                                                <th>SGST(%) /
                                            <br />
                                                   एस.जी.एस.टी(%) 
                                                </th>
                                                <th>Action /
                                            <br />
                                                    कार्रवाई
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>1</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Goods</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>0001</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>NA</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>01/04/2023</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>0.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>0.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>0.00</a>
                                                </td>
                                               <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                            </tr>
                                           <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>2</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Goods</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>0002</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>NA</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>05/05/2022</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>0.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>0.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>0.00</a>
                                                </td>
                                               <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
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

