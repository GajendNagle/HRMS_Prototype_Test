<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GroupWiseLedgerList.aspx.cs" Inherits="mis_Finance_GroupWiseLedgerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .placeholder {
            background-color: transparent;
            opacity: 1;
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
                        <li class="breadcrumb-item">
                            <a href="#Finance" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Finance</span></a>
                        </li>
                        <li class="breadcrumb-item"><a href="#FinanceACMaster" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Finance A/C Master</span></a></li>
                        <li class="breadcrumb-item active"><a title="click to go on">Group Wise Ledger List</a></li>
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
                                                <th>Sr. No.
                                                    <br />
                                                    क्रमांक
                                                </th>
                                                <th>Ledger Name
                                                    <br />
                                                    बहीखाता का नाम </th>
                                                <th>Ledger Code 
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
                                                <td align="center" valign="middle">
                                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                        <i class="fa fa-eye" aria-hidden="true"></i>
                                                    </button>
                                                </td>
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
                                                <td align="center">
                                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                        <i class="fa fa-eye" aria-hidden="true"></i>

                                                    </button>
                                                </td>
                                            </tr>
                                            <!-- Add more rows as needed -->
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                    </fieldset>

                    <div class="modal  fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header" style="background-color: var(--vz-primary);">

                                    <img id="imgLogoP1" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />

                                    <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel">Ledger Creation</h3>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">


                                    <!DOCTYPE html>
                                    <html lang="en">
                                    <head>
                                        <meta charset="UTF-8">
                                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                        <title>Ledger Creation</title>
                                        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.5.2/css/bootstrap.min.css">
                                        <script>
                                            function submitForm() {
                                                const ledgerNameEn = document.getElementById('ledgerNameEn').value;
                                                const ledgerNameHi = document.getElementById('ledgerNameHi').value;
                                                const ledgerCode = document.getElementById('ledgerCode').value;
                                                const ledgerAlias = document.getElementById('ledgerAlias').value;
                                                const groupName = document.getElementById('groupName').value;
                                                const bankType = document.getElementById('bankType').value;
                                                const ledgerType = document.getElementById('ledgerType').value;

                                                alert(`Ledger Name (English): ${ledgerNameEn}\nLedger Name (Hindi): ${ledgerNameHi}\nLedger Code: ${ledgerCode}\nLedger Alias: ${ledgerAlias}\nGroup Name: ${groupName}\nBank Type: ${bankType}\nLedger Type: ${ledgerType}`);
                                            }
                                        </script>
                                    </head>
                                    <body>
                                        <div class="container mt-5">
                                            <fieldset>
                                                <legend>Ledger Creation / बही खाता निर्माण</legend>
                                                <div class="row align-items-end">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Ledger Name in English<br />
                                                            </label>
                                                            <input type="text" name="ledgerNameEn" class="form-control" value="Sales Ledger" readonly required />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Ledger Code<br />
                                                            </label>
                                                            <input type="text" name="ledgerCode" class="form-control" value="SL001" readonly required />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Ledger Alias</label>
                                                            <input type="text" name="ledgerAlias" class="form-control" value="Sales" readonly />
                                                        </div>
                                                    </div>


                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Group Name<br />
                                                            </label>
                                                            <select id="groupName" class="form-control" required>
                                                                <option value="" disabled selected>--Select--</option>
                                                                <option value="Direct Expenses" disabled selected>Direct Expenses (Expenses)</option>
                                                                <option value="Indirect Expenses">Indirect Expenses (Expenses)</option>
                                                                <option value="Current Assets">Current Assets (Assets)</option>
                                                                <option value="Bank Accounts">Bank Accounts (Current Assets)</option>
                                                                <option value="Indirect Incomes">Indirect Incomes (Income)</option>
                                                                <option value="Direct Incomes">Direct Incomes (Income)</option>
                                                                <option value="Current Liabilities">Current Liabilities (Liabilities)</option>
                                                                <option value="Capital Account">Capital Account (Liabilities)</option>
                                                                <option value="Sundry Creditors">Sundry Creditors (Current Liabilities)</option>
                                                                <option value="Sundry Debtors">Sundry Debtors (Current Assets)</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Bank Type</label>
                                                            <select id="bankType" class="form-control">
                                                                <option value="">--Select--</option>
                                                                <option value="Current Account" disabled selected>Current Account</option>
                                                                <option value="Saving Account">Saving Account</option>
                                                                <option value="Other">Other</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Type<br />
                                                            </label>
                                                            <select id="ledgerType" class="form-control" required>
                                                                <option value="">--Select--</option>
                                                                <option value="Type A" disabled selected>Type A</option>
                                                                <option value="Type B">Type B</option>
                                                                <option value="Type C">Type C</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>

                                            </fieldset>
                                        </div>
                                    </body>
                                    </html>

                                    <fieldset>
                                        <legend>Bank Account Details /बैंक के खाते का विवरण</legend>
                                        <div class="row align-items-end">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        A/c Holder Name in English<br />

                                                    </label>
                                                    <input type="text" name="accountHolderName" readonly class="form-control" value="John Doe" required />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        Bank Account No.
                              
                           
                                                    </label>
                                                    <input type="text" name="accountNumber" readonly class="form-control" value="1234567890" required />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        IFSC Code (CAPITAL LETTERS ONLY)
                             
                           
                                                    </label>
                                                    <input type="text" name="ifscCode" readonly class="form-control" value="ABC1234567" required />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        Bank Name in English
                           
                                                    </label>
                                                    <input type="text" readonly name="bankName" class="form-control" value="Bank of Example" required />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        Bank Branch Name in English
                           
                                                    </label>
                                                    <input type="text" name="branchName" readonly class="form-control" value="Main Branch" required />
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <fieldset>
                                        <legend>Mailing Details /मैलिंग विवरण</legend>
                                        <div class="row align-items-end">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        Mailing Name in English
                           
                                                    </label>
                                                    <input type="text" name="mailingName" readonly class="form-control" value="Rani Smith" required />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        State Name in English
                           
                                                    </label>
                                                    <select class="form-control" name="state" readonly="readonly">
                                                        <option value="0">--Select--</option>
                                                        <option value="1" selected disabled>Uttar Pradesh</option>
                                                        <option value="2">Chhattisgarh</option>
                                                        <option value="3">Madhya Pradesh</option>
                                                        <option value="4">Maharashtra</option>
                                                        <option value="5">Rajasthan</option>
                                                        <option value="6">Punjab</option>
                                                        <option value="7">Bihar</option>
                                                        <option value="8">Haryana</option>
                                                        <option value="9">Gujarat</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        City Name in English
                           
                                                    </label>
                                                    <input type="text" readonly name="cityName" class="form-control" value="Lucknow" required />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        Pincode in English
                           
                                                    </label>
                                                    <input type="text" readonly name="pincode" class="form-control" value="226001" required />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row align-items-end">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>
                                                        Address in English<br />
                                                        पता
                                                    </label>
                                                    <input type="text" readonly class="form-control" placeholder="Bhopal" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        Enter Mobile No.</label>
                                                    <input type="text" readonly class="form-control" placeholder="9632587410" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        Enter Email I'D in English</label>
                                                    <input type="text" readonly class="form-control" placeholder="Rani@gmail.com" />
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <fieldset>
                                        <legend>Tax Registration Details / पंजीकरण विवरण</legend>
                                        <div class="row align-items-end">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        PAN(IT) No.
                           
                                                    </label>
                                                    <input type="text" name="pan" class="form-control" value="ABCDE1234F" readonly />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        Registration Types
                           
                                                    </label>
                                                    <select class="form-control " name="registrationType">
                                                        <option value="0">--Select--</option>
                                                        <option value="1">Consumer</option>
                                                        <option value="2" selected disabled>Unregistered</option>
                                                        <option value="3">Register</option>
                                                        <option value="4">Composition</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        GST No. (CAPITAL LETTERS ONLY)
                           
                                                    </label>
                                                    <input type="text" name="gstNo" class="form-control" value="22ABCDE1234Z1Z5" readonly />
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <fieldset>
                                        <legend>GST Details /जीएसटी विवरण</legend>
                                        <div class="row align-items-end">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                         GST Applicable From
                                                    </label>
                                                    <input name="ename" id="DOB" readonly class="form-control" autocomplete="off" value="02/02/2024" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                         GST Applicable
                <span style="color: red;">*</span></label>
                                                    <select id="reverseCharge" class="form-control">
                                                        <option value="1">No</option>
                                                        <option value="2" selected disabled>Yes</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <fieldset id="gstDetails" class="hidden">
                                            <legend>GST Detail /जी.एस.टी विवरण</legend>
                                            <div class="row align-items-end">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>
                                                            Type Of Supply
                           
                                                        </label>
                                                        <select class="form-control " name="supplyType">
                                                            <option value="1" selected disabled>Service</option>
                                                            <option value="2">Goods</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>
                                                            SAC/HSN Code
                           
                                                        </label>
                                                        <select class="form-control" name="sacHsnCode">
                                                            <option value="1">998346</option>
                                                            <option value="2" selected disabled>998824</option>
                                                            <option value="3">997331</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>
                                                            Taxability
                           
                                                        </label>
                                                        <select class="form-control" name="taxability">
                                                            <option value="1">No</option>
                                                            <option value="2" selected disabled>Yes</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>
                                                            Is reverse charge applicable?
                           
                                                        </label>
                                                        <select class="form-control " name="reverseCharge">
                                                            <option value="1">No</option>
                                                            <option value="2" selected disabled>Yes</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>
                                                            Is Ineligible for Input Credit?
                           
                                                        </label>
                                                        <select class="form-control " name="ineligibleInputCredit">
                                                            <option value="1">No</option>
                                                            <option value="2" selected disabled>Yes</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>
                                                            Integrated Tax(IGST%)
                           
                                                        </label>
                                                        <input type="text" class="form-control" value="18%" readonly />
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>
                                                            Central Tax(CGST%)
                           
                                                        </label>
                                                        <input type="text" class="form-control" value="9%" readonly />
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>
                                                            Enter State Tax(SGST%)
                           
                                                        </label>
                                                        <input type="text" class="form-control" value="9%" readonly />
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                    </fieldset>
                                    <fieldset>
                                        <legend>Opening Balance /प्रारंभिक शेष </legend>
                                        <div class="row align-items-end">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        Inventory Values are Affected
                                                    </label>
                                                    <select class="form-control" name="inventoryAffected">
                                                        <option value="1">No</option>
                                                        <option value="2" selected disabled>Yes</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        Maintain Balance BillByBil
                           
                                                    </label>
                                                    <select class="form-control " name="maintainBalance">
                                                        <option value="1" selected>No</option>
                                                        <option value="2">Yes</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        Cost Center
                                                    </label>
                                                    <select class="form-control " name="costCenter">
                                                        <option value="1">No</option>
                                                        <option value="2" selected disabled>Yes</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        Dr./Cr.
                           
                                                    </label>
                                                    <select class="form-control " name="debitCredit">
                                                        <option value="2" selected disabled>Credit</option>
                                                        <option value="1">Debit</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row align-items-end">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>
                                                        Enter Opening Balance
                           
                                                    </label>
                                                    <input type="text" class="form-control" value="100000.00" readonly />
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>

                                </div>
                            </div>

                        </div>
                    </div>



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
    <script src="https://schooledutest.tserver.co.in/assets/js/multiselect-dropdown.js"></script>

</asp:Content>

