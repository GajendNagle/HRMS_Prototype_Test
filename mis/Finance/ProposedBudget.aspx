<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ProposedBudget.aspx.cs" Inherits="mis_Finance_ProposedBudget" %>

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
                        <li class="breadcrumb-item"><a href="#BudgetAssignMaster" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Budget Assign Master</span></a></li>
                        <li class="breadcrumb-item active"><a title="click to go on">Proposed Budget</a></li>
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
                            <h4 class="card-title">Proposed Budget /
                                प्रस्तावित बजट</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Proposed Budget /
                                प्रस्तावित बजट</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Proposed Date
                                        <br />
                                       प्रस्तावित दिनांक<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="ContentBody_TextBox5" class="form-control" autocomplete="off" value="2024-04-01" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                       Select Head Type
                                        <br />
                                        हेड प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="2">Expense</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Office Name<br />
                                        कार्यालय नाम का चयन करें<span style="color: red;"> *</span>
                                    </label>
                                    <select class="form-control select2">
                                        <option value="1">Directorate of Public Instruction</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="col-md-12">
                            <div class="form-group">
                                <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                <a id="clearfirst" href="ProposedBudget.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>Proposed Budget Details /
                                प्रस्तावित बजट विवरण </legend>
                        <div class="row align-items-end">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="mainTable">
                                        <thead class="nowrap">
                                            <tr>
                                                <th>क्रमांक
                                                </th>
                                                <th>उपलेखा शीर्ष</th>
                                                <th>विवरण</th>
                                                <th>प्रस्तावित बजट दर्ज करें
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>1</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10.01.01</a>
                                                </td>
                                                <td>
                                                    <a>Basic Pay/Special Pay/Dearness Allowance</a>
                                                </td>
                                                <td>
                                                    <input type="email" id="2" class="form-control" style="width: 160px;" placeholder="0.00"></td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>2</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10.01.02</a>

                                                </td>
                                                <td>
                                                    <a>Gratuity Premium Payment </a>
                                                </td>
                                                <td>
                                                    <input type="email" id="2" class="form-control" style="width: 160px;" placeholder="0.00"></td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>3</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10.01.03</a>

                                                </td>
                                                <td>
                                                    <a>Medical Expense Reimbursement</a>
                                                </td>
                                                <td>
                                                    <input type="email" id="2" class="form-control" style="width: 160px;" placeholder="0.00"></td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>4</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10.01.04</a>

                                                </td>
                                                <td>
                                                    <a>Travel Expenses </a>
                                                </td>
                                                <td>
                                                    <input type="email" id="2" class="form-control" style="width: 160px;" placeholder="0.00"></td>
                                            </tr>
                                            <!-- Add more rows as needed -->
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <button type="button" class="Alert-Confirmation btn btn-outline-success w-lg btn-border">Save</button>
                                    <a href="ProposedBudget.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
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

