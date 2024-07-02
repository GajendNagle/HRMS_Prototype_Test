<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="BudgetAllocation.aspx.cs" Inherits="mis_Finance_BudgetAllocation" %>

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
                       <li class="breadcrumb-item"> <a href="#BudgetProcess" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Budget Process</span></a></li>
                    <li class="breadcrumb-item active"><a title="click to go on"> Budget Allocation</a></li>
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
                            <h4 class="card-title">Budget Allocation /
                                बजट आवंटन </h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Budget Allocation  /
                                बजट आवंटन </legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select  Date <br />
                                         दिनांक का चयन करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="date" class="form-control" autocomplete="off" value="2024-12-10" />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Head Type <br />
                                        हेड प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="2">Expense</option>
                                    </select>
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
                                <a id="clearfirst" href="BudgetAllocation.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>Budget Allocation Details /
                                बजट आवंटन जानकारी </legend>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <button class="btn btn-outline-secondary btn-border" onclick="openPDF()">Print</button>
                                    <button class="btn btn-outline-success btn-border" onclick="exportFile()">Export</button>
                                </div>
                            </div>
                        </div>
                        <div class="row align-items-end">
                            <div class="col-md-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered" id="mainTable">
                                        <thead>
                                            <tr align="center" valign="middle">
                                                <th>1
                                                </th>
                                                <th>2</th>
                                                <th>3
                                                </th>
                                                <th>4
                                                </th>
                                                <th>5
                                                </th>
                                                <th>6
                                                </th>
                                                <th>7
                                                </th>
                                                <th>8(5-7)
                                                </th>
                                                <th>9
                                                </th>
                                                <th>10
                                                </th>
                                                <th>11(9-10)
                                                </th>
                                                <th>12
                                                </th>
                                            </tr>
                                            <tr align="center" valign="middle">
                                                <th>क्रमांक
                                                </th>
                                                <th>उपलेखा शीर्ष</th>
                                                <th>विवरण
                                                </th>
                                                <th>व्यय गत वर्ष
                                                </th>
                                                <th>जिला यूनियन द्वारा मांगी गई राशि(1 अप्रैल से आज दिनांक तक)
                                                </th>
                                                <th>कुल व्यय(1 अप्रैल से आज दिनांक तक)
                                                </th>
                                                <th>मुख्यालय द्वार दी गई राशि(1 अप्रैल से आज दिनांक तक)
                                                </th>
                                                <th>आवंटन हेतु शेष राशि</th>
                                                <th>प्रस्तावित बजट</th>
                                                <th>जिला यूनियन को प्रदाय राशि(1 अप्रैल से आज दिनांक तक)</th>
                                                <th>शेष बजट</th>
                                                <th>प्रदाय की गई राशि</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>1</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10.01.01</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Basic Pay/Special Pay/Dearness Allowance</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>94342199.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>0.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>26680432.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>73852034.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>-73852034.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>100000000.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>73852034.00</a>
                                                </td>
                                                 <td align="center" valign="middle">
                                                    <div contenteditable="true">26147966.00</div>
                                                </td>
                                                 <td align="center" valign="middle">
                                                    <div contenteditable="true">0.00</div>
                                                </td>

                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>2</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10.01.02</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Medical Expense Reimbursement</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>2597151.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>0.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>0.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>1298575.50</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>-1298575.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>1298575.50</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>26000000.50</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <div contenteditable="true">1301424.50</div>
                                                </td>
                                                 <td align="center" valign="middle">
                                                    <div contenteditable="true">0.00</div>
                                                </td>
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

