<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="LedgerOfficeMapping.aspx.cs" Inherits="mis_Finance_LedgerOfficeMapping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .table > thead {
            vertical-align: top !important;
        }

        .table tr:nth-child(even) {
            background-color: none !important; /*Striped rows */
        }

        .table tbody tr:hover {
            background: none !important;
        }

        .table td, .table th {
            border:none !important;
        }

        .table th {
            background-color: none !important;
            color: none !important;
        }

        .table tbody {
            border-top: none !important;
        }

        .table thead {
            border-bottom: none !important;
        }
    </style>
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
                        <li class="breadcrumb-item active"><a href="OfficeWiseLedgerList.aspx" title="click to go on">Ledger Office Mapping</a></li>
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
                            <h4 class="card-title">Ledger Office Mapping /
                                बहीखाता कार्यालय मानचित्रण</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Ledger Office Mapping /
                                बहीखाता कार्यालय मानचित्रण</legend>
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
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Ledger Name/<br />
                                        बहीखाता नाम का चयन करें<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option selected="selected" value="0">--Select --</option>
                                        <option value="1">Basic Pay/Special Pay/Dearness Allowance(10.00.01)</option>
                                        <option value="2">Gratuity Premium Payment(10.00.02)</option>
                                        <option value="3">Medical Expense Reimbursement(10.00.03)</option>
                                        <option value="4">Stationery, Font Copy, Bidding(10.00.04)</option>
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
                                        <option value="1">HO</option>
                                        <option value="2">DO</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="col-md-12 justify-content-center">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                <a id="clearfirst" href="LedgerOfficeMapping.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>Applicable On
                        </legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-sm">
                                        <%-- <thead>
                                            <tr align="center" valign="middle">
                                                <th>Sr. No. /<br />
                                                    क्र.सं.
                                                </th>
                                                <th>Head Type /<br />
                                                    हेड प्रकार </th>
                                                <th>Head Code /
                                            <br />
                                                    हेड कोड</th>
                                                <th>Head (Ledger)Name /
                                            <br />
                                                    हेड(बहीखाता) नाम
                                                </th>
                                                <th>Amount Request /
                                            <br />
                                                    राशि मांग
                                                </th>
                                                <th>Action /
                                            <br />
                                                    कार्रवाई
                                                </th>
                                            </tr>
                                        </thead>--%>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>All</span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Vidisha-(VDS)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Sehore-(SHR)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Raisen-(RSN)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Bhopal-(BPL)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Obedullaganj-(OBD)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Rajgarh-(RJG)</span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Hoshangabad-(HSB)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Harda-(HRD)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>North-Betul-(NBT)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>South-Betul-(SBT)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>West-Betul-(WBT)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>East-Chhindwara-(ECH)</span>
                                                </td>

                                            </tr>
                                            <!-- Add more rows as needed -->
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-md-6">
                                <div class="form-group text-center">

                                    <button type="button" class="Alert-Confirmation btn btn-outline-success w-lg btn-border">Save</button>
                                    <a href="LedgerOfficeMapping.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
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
</asp:Content>

