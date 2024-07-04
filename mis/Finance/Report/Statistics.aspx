<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Statistics.aspx.cs" Inherits="mis_Finance_Statistics" %>

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
                    <li class="breadcrumb-item active"><a title="click to go on"> Statistics</a></li>
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
                            <h4 class="card-title">Statistics/
                                आंकड़े </h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Statistics/
                                आंकड़े</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select From Date
                                        <br />
                                        प्रारंभिक दिनांक का चयन करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="date" class="form-control" autocomplete="off" value="2024-04-01" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select To Date
                                        <br />
                                        अंतिम दिनांक का चयन करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="date1" class="form-control" autocomplete="off" value="2024-06-30" />
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
                                <a id="clearfirst" href="CashBankBook.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </fieldset>
                <fieldset id="FS_Details" style="display: none">
                    <legend>Statistics/
                                आंकड़े</legend>
                    <div class="row">
                        <div class="col-md-4 mt-4">
                            <div class="form-group">
                                <button class="btn btn-outline-secondary btn-border" onclick="openPDF()">Print</button>
                                <button class="btn btn-outline-success btn-border" onclick="exportFile()">Export</button>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center mb-0">
                        <h5>Statistics
                        </h5>
                    </div>
                    <div class="row justify-content-center mb-0">
                        <h5>Directorate of Public Instruction
                        </h5>
                    </div>
                    <div class="row justify-content-center mb-0">
                        <h5>[Head Office]
                        </h5>
                    </div>
                    <div class="row justify-content-center mb-0">
                        <h5>01-04-2024  To 31-06-2023 
                        </h5>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <div class="row align-items-end">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="mainTable">
                                                <thead>
                                                    <tr align="center" valign="middle">
                                                        <th colspan="2">Total Voucher<br />
                                                            कुल वाउचर</th>
                                                        <th colspan="2">Type of Accounts<br />
                                                            खाते का प्रकार</th>

                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr role="row" class="odd">
                                                        <td style="color: dodgerblue">Consumption Voucher</td>
                                                        <td>0</td>
                                                        <td>Groups</td>
                                                        <td>168</td>
                                                    </tr>
                                                    <tr role="row" class="odd">
                                                        <td style="color: dodgerblue">Contra</td>
                                                        <td>85</td>
                                                        <td>Ledgers</td>
                                                        <td>277</td>
                                                    </tr>
                                                    <tr role="row" class="odd">
                                                        <td style="color: dodgerblue">CreditSale Voucher</td>
                                                        <td>13</td>
                                                        <td>Stock Groups</td>
                                                        <td>77</td>
                                                    </tr>
                                                    <tr role="row" class="odd">
                                                        <td style="color: dodgerblue">GST Service Purchase</td>
                                                        <td>441</td>
                                                        <td>Stock Items</td>
                                                        <td>4408</td>
                                                    </tr>
                                                    <tr role="row" class="odd">
                                                        <td style="color: dodgerblue">Journal</td>
                                                        <td>0</td>
                                                        <td>Voucher Types</td>
                                                        <td>8</td>
                                                    </tr>
                                                      <tr role="row" class="odd">
                                                        <td style="color: dodgerblue">Payment</td>
                                                        <td>1464</td>
                                                        <td>Units</td>
                                                        <td>21</td>
                                                    </tr>
                                                      <tr role="row" class="odd">
                                                        <td style="color: dodgerblue">Receipt</td>
                                                        <td>497</td>
                                                        <td>Currencies</td>
                                                        <td>1</td>
                                                    </tr>
                                                     <tr role="row" class="odd">
                                                        <td style="color: dodgerblue">StaAdjustment</td>
                                                        <td>27</td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                     <tr role="row" class="odd">
                                                        <td>Total</td>
                                                        <td>4537</td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <!-- Add more rows as needed -->
                                                </tbody>
                                            </table>
                                        </div>

                                    </div>
                                </div>

                            </div>

                        </div>
                    </div></fieldset>
               <%-- </fieldset>--%>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

