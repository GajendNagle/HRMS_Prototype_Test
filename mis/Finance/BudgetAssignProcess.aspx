<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="BudgetAssignProcess.aspx.cs" Inherits="mis_Finance_BudgetAssignProcess" %>

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
                        <li class="breadcrumb-item active"><a href="Group_Master.aspx" title="click to go on">Budget Assign Process</a></li>
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
                            <h4 class="card-title">Budget Assign Process /
                                बजट आवंटित करने की प्रक्रिया</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Budget Assign Process /
                                बजट आवंटित करने की प्रक्रिया</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select From Date /<br />
                                        दिनांक से चुनें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="ContentBody_TextBox5" class="form-control" autocomplete="off" value="2023-12-10" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select To Date /<br />
                                        दिनांक तक चुनें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="ContentBody_TextBox5" class="form-control" autocomplete="off" value="2024-12-10" />
                                </div>
                            </div>


                            <hr />
                            <div class="col-md-12 justify-content-center">
                                <div class="form-group text-center">
                                    <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                    <a id="clearfirst" href="BudgetAssignProcess.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                                </div>
                            </div>

                        </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>Budget Demand Details /
                                बजट मांग विवरण </legend>
                        <div class="row justify-content-end">
                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
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
                                            <tr>
                                                <th>Checkbox/<br />
                                                    चेक बॉक्स
                                                </th>
                                                <th>Sr. No. /<br />
                                                    क्र.सं.
                                                </th>
                                                <th>Office Type /<br />
                                                    कार्यालय प्रकार</th>
                                                <th>Office Name /
                                            <br />
                                                    कार्यालय का नाम</th>
                                                <th>Amount /
                                            <br />
                                                    राशि 
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle">
                                                    <input id="ContentBody_chck1" type="checkbox" name="ctl00$ContentBody$chck1" />
                                                </td>
                                                <td align="center" valign="middle"><span>1</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>Head</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Jabalpur</a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>829425.00</a>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle">
                                                    <input id="ContentBody_chck1" type="checkbox" name="ctl00$ContentBody$chck1" />
                                                </td>
                                                <td align="center" valign="middle"><span>2</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>Head</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Bhopal</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>6121590.00</a>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle">
                                                    <input id="ContentBody_chck1" type="checkbox" name="ctl00$ContentBody$chck1" />
                                                </td>
                                                <td align="center" valign="middle"><span>3</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>Head</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Indore</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>39861.00</a>
                                                </td>
                                            </tr>
                                            <!-- Add more rows as needed -->
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group text-center">

                                    <a onclick="openPDF()" class="btn btn-outline-primary w-lg btn-border">Generated Letter</a>
                                    <a href="BudgetAssignProcess.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
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
    </script>
</asp:Content>

