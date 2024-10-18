<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Group_Master.aspx.cs" Inherits="mis_Finance_Group_Master" %>

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
                        <li class="breadcrumb-item"><a href="#FinanceACMaster" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Finance A/C Master</span></a></li>
                        <li class="breadcrumb-item active"><a title="click to go on">Group Master</a></li>
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
                            <h4 class="card-title">Group Master /
                                ग्रुप मास्टर</h4>
                        </div>
                    </div>
                </div>


                <div class="card-body">
                    <div runat="server" id="divOffice">
                        <fieldset>
                            <legend>Group Master /ग्रुप मास्टर</legend>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Group Name<br />
                                            ग्रुप सूची से ग्रुप का चयन करें<span style="color: red;">*</span></label>
                                        <select class="form-control select2">
                                            <option selected="selected" value="0">--Select --</option>
                                            <option value="1">Liabilities</option>
                                            <option value="2">Assets</option>
                                            <option value="3">Income</option>
                                            <option value="4">Expenses</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Group Name in English<br />
                                            ग्रुप का नाम अंग्रेजी में दर्ज करें
                                    <span style="color: red;">*</span></label>
                                        <input type="text" class="form-control" placeholder="Enter Group Name in English" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Group Name in Hindi<br />
                                            ग्रुप का नाम हिंदी में दर्ज करें</label>
                                        <input type="text" class="form-control" placeholder="Enter Group Name in Hindi" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Group Code<br />
                                            ग्रुप कोड दर्ज करें</label>
                                        <input type="text" class="form-control" placeholder="Enter Group Code" />
                                    </div>
                                </div>


                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Group Order No.<br />
                                            ग्रुप ऑर्डर नंबर दर्ज करें.</label>
                                        <input type="text" class="form-control" placeholder="Enter Group Order No." />
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Is Closing forward<br />

                                        </label>
                                        <select class="form-control select2">

                                            <option value="1" selected>No</option>
                                            <option value="2">Yes</option>

                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group text-center">
                                    <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border w-lg" onclick="document.getElementById('HostlInfo').style.display = 'block'">Save</button>
                                    <a href="Group_Master.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                                </div>
                            </div>

                        </fieldset>


                    </div>
                </div>
                <fieldset id="HostlInfo" style="display: none;">
                    <legend>Group Master Details/ग्रुप मास्टर विवरण</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-4 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-55">Excel</button>
                                <button class="btn btn-info btn-rounded w-55">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-end">
                        <div class="col-lg-12" runat="server" id="dvStudentDetails">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr role="row">
                                                    <th scope="col">Sr.No.<br />
                                                        क्रमांक</th>
                                                    <th scope="col">Group Name in English<br />
                                                        ग्रुप का नाम अंग्रेजी में
                                                    </th>
                                                    <th scope="col">Group Name in Hindi<br />
                                                        ग्रुप का नाम हिंदी में
                                                    </th>
                                                    <th scope="col">Group Code<br />
                                                        ग्रुप कोड</th>
                                                    <th scope="col">Group Order No.<br />
                                                        ग्रुप ऑर्डर नंबर</th>
                                                    <th scope="col">Parent Group
                                                         </th>
                                                    <th scope="col">Closing Forward
                                                         </th>
                                                    <th scope="col">Action<br />
                                                        कार्यवाही </th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle"><span>1</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Current Liabilities </span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>वर्तमान देनदारियां  </span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>01</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Liabilities</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Liabilities</span>
                                                    </td>
                                                      <td align="center" valign="middle">
                                                        <span>YES</span>
                                                    </td>
                                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>

                                                </tr>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle"><span>2</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Branch / Divisions </span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>शाखा / प्रभाग </span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>02</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Liabilities</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Liabilities</span>
                                                    </td>
                                                      <td align="center" valign="middle">
                                                        <span>YES</span>
                                                    </td>
                                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                                </tr>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle"><span>3</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Current Assets</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>वर्तमान संपत्ति</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>03</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Assets</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Assets</span>
                                                    </td>
                                                      <td align="center" valign="middle">
                                                        <span>YES</span>
                                                    </td>
                                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                                </tr>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle"><span>4</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Bank Accounts</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>बैंक खाते </span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>04</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Current Assets</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Assets</span>
                                                    </td>
                                                      <td align="center" valign="middle">
                                                        <span>YES</span>
                                                    </td>
                                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                                </tr>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle"><span>5</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Indirect Incomes</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>स्थापना / अप्रत्यक्ष आय</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>05 </span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Income </span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Income </span>
                                                    </td>
                                                      <td align="center" valign="middle">
                                                        <span>NO</span>
                                                    </td>
                                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                                </tr>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle"><span>6</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Indirect Expenses</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>अप्रत्यक्ष व्यय</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>06</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Expenses </span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Expenses </span>
                                                    </td>
                                                      <td align="center" valign="middle">
                                                        <span>NO</span>
                                                    </td>
                                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                                </tr>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle"><span>7</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Direct Expenses</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>प्रत्यक्ष व्यय</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>07 </span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Expenses </span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span>Expenses </span>
                                                    </td>
                                                      <td align="center" valign="middle">
                                                        <span>NO</span>
                                                    </td>
                                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                                </tr>

                                            </tbody>

                                        </table>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </fieldset>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

