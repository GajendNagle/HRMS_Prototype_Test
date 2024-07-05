<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="UpdateProposedBudget.aspx.cs" Inherits="mis_Finance_UpdateProposedBudget" %>

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
                        <li class="breadcrumb-item active"><a title="click to go on">Update Proposed Budget</a></li>
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
                            <h4 class="card-title">Update Proposed Budget /
                                अद्यतन प्रस्तावित बजट</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Update Proposed Budget /
                                अद्यतन प्रस्तावित बजट</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Date
                                        <br />
                                        दिनांक का चयन करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="ContentBody_TextBox5" class="form-control" autocomplete="off" value="2024-04-01" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Head Type
                                        <br />
                                        हेड प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="2">Expense</option>
                                    </select>
                                </div>
                            </div>
                            <%--<div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Ledger(Head Code)
                                                <br />
                                        बहीखाता (हेड कोड) का चयन करें<span style="color: red;"> *</span></label>
                                    <select class="form-control select2" id="selectLedger" onchange="blncamount()">
                                        <option selected="selected" value="0">--Select --</option>
                                        <option value="1">Basic Pay/Special Pay/Dearness Allowance (10.01.01)  </option>
                                        <option value="2">Gratuity Premium Payment (10.01.02)</option>
                                        <option value="3">Medical Expense Reimbursement (10.02.01)</option>
                                        <option value="4">Travel Expenses (10.03.01)</option>
                                        <option value="5">State Bank Of India   (15.01.01)</option>
                                    </select>
                                </div>
                            </div>--%>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Office Name<br />
                                        कार्यालय नाम का चयन करें<span style="color: red;"> *</span>
                                    </label>
                                    <select class="form-control select2">
                                       <%-- <option selected="selected" value="0">--Select --</option>--%>
                                        <option value="1">Directorate of Public Instruction</option>

                                    </select>
                                </div>
                            </div>
                        </div>

                        <hr />
                        <div class="col-md-12 justify-content-center">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                <a id="clearfirst" href="UpdateProposedBudget.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>


                        </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>Update Proposed Budget Details /
                                अद्यतन प्रस्तावित बजट विवरण </legend>
                        <%-- <div class="row justify-content-end">
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
                        </div>--%>
                        <div class="row align-items-end">
                            <div class="col-md-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered" id="mainTable">
                                        <thead>
                                            <tr align="center" valign="middle">
                                                <th>क्रमांक
                                                </th>
                                                <th>उपलेखा शीर्ष </th>
                                                <th>विवरण</th>
                                                <th>प्रस्तावित बजट
                                                </th>
                                                <th>उपलब्ध बजट
                                                </th>
                                                <th>बजट राशि में परिवर्तन
                                                </th>
                                                <%--<th>कार्यवाही
                                                </th>--%>
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
                                                    <input type="email" class="form-control" style="width: 160px;" placeholder="100000000.00" readonly></td>
                                                <td align="center" valign="middle"><span>25504522.00</span>
                                                </td>
                                                <td>
                                                    <input type="email" class="form-control" style="width: 160px;" placeholder="0.00"></td>
                                                <%--<td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>--%>
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
                                                    <input type="email" class="form-control" style="width: 160px;" placeholder="2600000.00" readonly></td>
                                                <td align="center" valign="middle"><span>1301424.50</span>
                                                </td>
                                                <td>
                                                    <input type="email" class="form-control" style="width: 160px;" placeholder="0.00"></td>
                                                <%--<td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>--%>
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
                                                    <input type="email" class="form-control" style="width: 160px;" placeholder="60000000.00" readonly></td>
                                                <td align="center" valign="middle"><span>4464750.00</span>
                                                </td>
                                                <td>
                                                    <input type="email" class="form-control" style="width: 160px;" placeholder="0.00"></td>
                                                <%--<td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>--%>
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
                                                    <input type="email" class="form-control" style="width: 160px;" placeholder="60000000.00" readonly></td>
                                                <td align="center" valign="middle"><span>468600.00</span>
                                                </td>
                                                <td>
                                                    <input type="email" class="form-control" style="width: 160px;" placeholder="0.00"></td>
                                                <%--<td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>--%>
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

                                    <button type="button" class="Alert-Update btn btn-outline-success w-lg btn-border">Update</button>
                                    <a href="UpdateProposedBudget.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
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
        $('.Alert-Update').click(function () {
            Swal.fire({
                title: 'Are you sure?',
                text: "Do you want to update this record ?",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085D6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes'
            }).then((result) => {
                if (result.value) {
                    Swal.fire({
                        type: 'success',
                        title: 'Success!',
                        text: 'Record Updated Successfully!',
                        timer: 2000
                    })
                } else {
                    // Handle cancel scenario (e.g., display message)
                    Swal.fire({
                        title: 'Cancelled',
                        text: 'Record not saved.',
                        icon: 'info'
                    })
                }
            })
        });
    </script>
</asp:Content>

