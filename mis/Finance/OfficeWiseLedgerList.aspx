<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="OfficeWiseLedgerList.aspx.cs" Inherits="mis_Finance_OfficeWiseLedgerList" %>

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
                    <li class="breadcrumb-item active"><a href="OfficeWiseLedgerList.aspx" title="click to go on">Office Wise Ledger List</a></li>
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
                            <h5 class="card-title">Office Wise Ledger List /
                                कार्यालय अनुसार खाता बही सूची</h5>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Office Wise Ledger List /
                                कार्यालय अनुसार खाता बही सूची</legend>
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
                        </div>
                        <hr />
                        <div class="col-md-12 justify-content-center">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                <a id="clearfirst" href="OfficeWiseLedgerList.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>Office Wise Ledger List /
                                कार्यालय अनुसार खाता बही सूची</legend>
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
                                                <th>Ledger Name /<br />
                                                    बहीखाता का नाम </th>
                                                <th>Ledger Code /
                                            <br />
                                                    बहीखाता कोड  </th>
                                                <th>GST No./
                                            <br />
                                                    जी.एस.टी नं.
                                                </th>
                                                <th>Head Name/
                                            <br />
                                                    हेड नाम 
                                                </th>
                                                <th>Office Name /
                                            <br />
                                                    कार्यालय नाम
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
                                                    <a>Basic Pay/Special Pay/Dearness Allowance</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10.01.01</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a></a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Expenses</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Head Office</a>
                                                </td>
                                                <td align="center" valign="middle"><a href="#"><i class="fa fa-eye" onclick="openPDF()" aria-hidden="true"></i></a></td>
                                            </tr>
                                             <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>2</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Gratuity Premium Payment</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10.01.02</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a></a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Expenses</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Head Office</a>
                                                </td>
                                                <td align="center" valign="middle"><a href="#"><i class="fa fa-eye" onclick="openPDF()" aria-hidden="true"></i></a></td>
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

