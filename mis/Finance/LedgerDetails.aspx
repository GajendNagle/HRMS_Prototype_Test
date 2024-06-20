<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="LedgerDetails.aspx.cs" Inherits="mis_Finance_LedgerDetails" %>

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
                    <li class="breadcrumb-item active"><a href="Group_Master.aspx" title="click to go on">Ledger Details</a></li>
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
                            <h4 class="card-title">Ledger Details/
                                बही विवरण</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Ledger Details/बही विवरण</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Enter Ledger Name /<br />
                                        बहीखाता  का नाम दर्ज करें
                                    <span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Ledger Name" />
                                </div>
                            </div>
                            <div class="col-md-2 ">
                                <div class="form-group ">
                                    <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>Ledger Details/बही विवरण </legend>
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
                                                <th>Ledger Name /<br />
                                                    बहीखाता नाम </th>
                                                <th>Ledger Code /
                                            <br />
                                                    बहीखाता कोड</th>
                                                <th>GST No. /
                                            <br />
                                                    जी.एस.टी नंबर</th>
                                                <th>Office Name /
                                            <br />
                                                    कार्यालय का नाम
                                                </th>
                                                <th>Status /
                                            <br />
                                                    स्थिति
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
                                                    <span>Basic Pay/Special Pay/Dearness Allowance</span>
                                                    <br />
                                                    <span style="font-size: smaller;">Grp: Establishment Expenses, BB:No,CC:Yes</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10.01.01</a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>22AAAAA0000A1Z5</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Head Office</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>Approve</span>
                                                </td>

                                                <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>2</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>Gratuity Premium Payment
</span>
                                                    <br />
                                                    <span style="font-size: smaller;">Grp:Establishment Expenses, BB:No, CC:Yes</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10.01.02</a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>45AAAAA0000A1Z5</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Head Office</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>Approve</span>
                                                </td>

                                                <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>3</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>Gratuity Payment
</span>
                                                    <br />
                                                    <span style="font-size: smaller;">Grp:Gratuty Payable, BB:No, CC:Yes </span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10.01.03</a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>11AAAAA0000A1Z5</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Head Office</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>Approve</span>
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
</asp:Content>

