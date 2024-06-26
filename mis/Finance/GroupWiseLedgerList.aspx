<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GroupWiseLedgerList.aspx.cs" Inherits="mis_Finance_GroupWiseLedgerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor"></h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../mis/Module.aspx?ID=Finance" title="click to go on">Finance</a></li>
                    <li class="breadcrumb-item active"><a href="PaymentVoucher.aspx" title="click to go on">Group Wise Ledger List</a></li>
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
                            <h4 class="card-title">Group Wise Ledger List /
                                ग्रुप वाइज बहीखाता सूची</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Group Wise Ledger List /
                                ग्रुप वाइज बहीखाता सूची</legend>
                        <div class="row align-items-end">
                             <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Group Name/<br />
                                        समूह नाम का चयन करें<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option selected="selected" value="0">--All --</option>
                                    </select>
                                </div>
                            </div>
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
                        </div>
                      
                        <hr />
                        <div class="col-md-12 justify-content-center">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                <a id="clearfirst" href="GroupWiseLedgerList.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>Group Wise Ledger Detail /
                                ग्रुप वाइज बहीखाता विवरण</legend>
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
                                        <th> Ledger Name /<br />
                                बहीखाता का नाम </th>
                                        <th> Ledger Code /
                                            <br />
                                            बहीखाता कोड  </th>
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
    </script>
</asp:Content>

