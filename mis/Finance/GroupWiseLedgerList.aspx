<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GroupWiseLedgerList.aspx.cs" Inherits="mis_Finance_GroupWiseLedgerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
    <style>
        .placeholder {
         background-color: transparent ; 
         opacity: 1;
        }
    </style>
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
                        <li class="breadcrumb-item"> <a href="#FinanceACMaster" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Finance A/C Master</span></a></li>
                    <li class="breadcrumb-item active"><a title="click to go on"> Group Wise Ledger List</a></li>
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
                                        Select Group Name<br />
                                        समूह नाम का चयन करें<span style="color: red;">*</span></label>
                                    <select multiple="" multiselect-search="true" multiselect-select-all="true" multiselect-max-items="0" class="form-select" id="DestinationDistrictId" name="DestinationDistrictId">

                                       
                                        <option value="1">Direct Expenses(Expenses) </option>
                                        <option value="2">Indirect Expenses (Expenses)</option>
                                        <option value="3">Current Assets (Assets)</option>
                                        <option value="4">Bank Accounts(Current Assets)</option>
                                        <option value="5">Indirect Incomes (Income)</option>
                                        <option value="6">Direct Incomes (Income)</option>
                                        <option value="7">Current Liabilities (Liabilities)</option>
                                        <option value="8">Capital Account (Liabilities)</option>
                                        <option value="9">Sundry Creditors (Current Liabilities)</option>
                                        <option value="10">Sundry Debtors (Current Assets)</option>
                                    </select>
                                </div>
                            </div>
                            </div>
                           <%-- <div class="col-md-3">
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
                        </div>--%>
                      
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
                                                <th>Sr. No. <br />
                                            क्रमांक
                                        </th>
                                        <th> Ledger Name <br />
                                बहीखाता का नाम </th>
                                        <th> Ledger Code 
                                            <br />
                                            बहीखाता कोड  </th>
                                        <th>Group Name
                                            <br />
                                            ग्रुप नाम 
                                        </th>
                                        <th>Create Office Name 
                                            <br />
                                            कार्यालय नाम
                                        </th>
                                        <th>Action 
                                            <br />
                                            कार्यवाही
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
    <script src="https://schooledutest.tserver.co.in/assets/js/multiselect-dropdown.js"></script>

</asp:Content>

