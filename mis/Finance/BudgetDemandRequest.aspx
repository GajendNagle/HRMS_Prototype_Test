<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="BudgetDemandRequest.aspx.cs" Inherits="mis_Finance_BudgetDemandRequest" %>

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
                    <li class="breadcrumb-item active"><a href="Group_Master.aspx" title="click to go on">Budget Demand Request</a></li>
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
                            <h4 class="card-title">Budget Demand Request /
                                बजट मांग राशि अनुरोध</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                     <fieldset>
                        <legend>Budget Demand Request /
                                बजट मांग अनुरोध</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                    Select Date /
                                        दिनांक चुनें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="ContentBody_TextBox5" class="form-control" autocomplete="off" value="2024-12-10" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Head Type /<br />
                                        हेड टाइप चुनें<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="2">Expense</option>
                                        <option value="1">Income</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Head (Ledger)Name/
   <br />
                                        हेड नाम चुनें<span style="color: red;"> *</span>
                                    </label>
                                    <select class="form-control select2">
                                        <option selected="selected" value="0">--Select --</option>
                                        <option value="1">Basic Pay/Special Pay/Dearness Allowance</option>
                                        <option value="2"> Gratuity Premium Payment</option>
                                        <option value="3">Gratuity Payment</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Amount Request/<br />
                                राशि अनुरोध दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Alias" />
                        </div>
                    </div>

                            <hr />
                            <div class="col-md-12 justify-content-center">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Add</button>
                                <a id="clearfirst" href="BudgetDemandRequest.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
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
                                                <th>Sr. No. /<br />
                                                    क्र.सं.
                                                </th>
                                                <th>Head Type /<br />
                                                    हेड नाम </th>
                                                <th>Head Code /
                                            <br />
                                                    हेड कोड</th>
                                                <th>Head Name /
                                            <br />
                                                    हेड नाम
                                                </th>
                                                <th>Amount Request /
                                            <br />
                                                    राशि अनुरोध
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
                                                    <span>Expense</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10.01.01</a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Basic Pay/Special Pay/Dearness Allowance</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>543000.00</a>
                                                </td>
                                                <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                            </tr>
                                          <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>2</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>Expense</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10.02.01</a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Medical Expense Reimbursement</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>100054.00</a>
                                                </td>
                                                <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>3</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>Expense</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10.01.01</a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Stationery, Font Copy, Bidding</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10000.00</a>
                                                </td>
                                                <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                            </tr>
                                            <!-- Add more rows as needed -->
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                            <div class="row">
                            <div id="DocAppointment1" class="col-md-4">
                                                    <input type="file" id="fileInput" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>
                             <div class="col-md-6">
                    <div class="form-group text-center">
                      
                        <button type="button" class="Alert-Confirmation btn btn-outline-success w-lg btn-border" >Save</button>
                        <a href="BudgetDemandRequest.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div></div>
                </div>

                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

