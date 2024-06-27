<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GSTR-2.aspx.cs" Inherits="mis_Finance_GSTR_2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .custom-div {
            background-color: #f8f9fa; /* Background color */
            font-family: Arial, sans-serif; /* Font family */
            color: #343a40; /* Font color */
            padding: 20px; /* Padding for overall spacing */
        }

        .line {
            width: 100%;
            height: 0;
            border-bottom: 1px solid #111;
            float: left;
            margin: 0;
            position: absolute;
            z-index: 0;
            top: 50%;
            left: 0
        }

        .custom-div h5,tbody, td, tfoot, th, thead, tr {
            font-size: 12px;
        }


        .custom-div hr {
            border: none; /* Remove default border */
            height: 1px; /* Set custom height */
            background-color: #343a40; /* Custom color */
            margin: 10px 0; /* Vertical spacing */
        }

        .custom-table th, .custom-table td {
            border: none; /* Remove table borders */
        }

        .custom-table th {
            font-weight: bold; /* Bold headers */
        }

        .custom-table td {
            padding: 5px; /* Padding for table cells */
        }

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
            border: none !important;
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

        .no-border-table {
            border-collapse: collapse;
        }

            .no-border-table th,
            .no-border-table td {
                border: none;
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
                        <li class="breadcrumb-item active"><a href="OfficeWiseLedgerList.aspx" title="click to go on">GSTR-2</a></li>
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
                            <h4 class="card-title">GSTR-2</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>GSTR-2</legend>
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
                                        Select From Date /
                                        प्रारंभिक दिनांक का चयन करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="date" class="form-control" autocomplete="off" value="2024-04-01" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select To Date /
                                        अंतिम दिनांक का चयन करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="date1" class="form-control" autocomplete="off" value="2024-04-30" />
                                </div>
                            </div>



                        </div>

                        <hr />
                        <div class="col-md-12 justify-content-center">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                <a id="clearfirst" href="GSTR-1.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>GSTR-2 Detail /
                                GSTR-2   विवरण</legend>
                        <%--<div class="row">
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
                        </div>--%>
                        <%--    <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">

                                    <table class="table no-border-table" id="mainTable">
                                        <thead>
                                            <tr align="center" valign="middle">
                                                <th style="background: #9c9db5;">Taxable Value
                                                </th>
                                                <th>77114.00</th>
                                                <th style="background: #9c9db5;">SGST </th>
                                                <th>0.00
                                                </th>
                                                <th style="background: #9c9db5;">CGST
                                                </th>
                                                <th>0.00
                                                </th>
                                                <th style="background: #9c9db5;">IGST
                                                </th>
                                                <th>0.00
                                                </th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>

                            </div>
                        </div>--%>
                        <div class="row">
                            <div class="col-md-10">
                                <div class="form-group">
                                    <button class="btn btn-outline-secondary btn-border" onclick="openPDF()">Print</button>
                                    <button class="btn btn-outline-success btn-border" onclick="exportFile()">Export</button>
                                </div>
                            </div>
                        </div>


                        <div class="custom-div mt-0 mb-0" id="gstrsummary">
                            <div class="row align-items-end">
                                <div class="col-md-12 text-end">
                                    <h5><b>01-04-2024 To 31-06-2024</b></h5>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-12">
                                        <h5><b>Return Summary</b></h5>
                                    </div>
                                </div>
                                <hr>
                                <div class="col-md-12">
                                    <div class="row mb-0">
                                        <div class="col-md-10 mb-0">
                                            <h5 style="color: cornflowerblue;">Total number of vouchers for the period</h5>
                                        </div>
                                        <div class="col-md-2 text-end mb-0">
                                            <h5>123</h5>
                                        </div>
                                    </div>

                                    <div class="row mb-0">
                                        <div class="col-md-10 mb-0">
                                            <h5 style="color: cornflowerblue;">Included in returns</h5>
                                        </div>
                                        <div class="col-md-2 text-end mb-0">
                                            <h5>1</h5>
                                        </div>
                                    </div>

                                    <div class="row mb-0">
                                        <div class="col-md-10 mb-0">
                                            <h5 style="color: cornflowerblue;">Not Included in returns due to incomplete information</h5>
                                        </div>
                                        <div class="col-md-2 text-end mb-0">
                                            <h5>1</h5>
                                        </div>
                                    </div>
                                    <div class="row mb-0">
                                        <div class="col-md-10 mb-0">
                                            <h5 style="color: cornflowerblue;">Not relevant for returns</h5>
                                        </div>
                                        <div class="col-md-2 text-end mb-0">
                                            <h5>0</h5>
                                        </div>
                                    </div>
                                    <div class="row mb-0">
                                        <div class="col-md-10 mb-0">
                                            <h5 style="color: cornflowerblue;">Incomplete HSN/SAC information(to be provided)</h5>
                                        </div>
                                        <div class="col-md-2 text-end mb-0">
                                            <h5>0</h5>
                                        </div>
                                    </div>
                                   
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <table class="" id="Table">
                                                    <thead>
                                                        <tr style="border-width: 1px;border-left: 0;border-right: 0; border-bottom: 0;">
                                                            <th><b>Ledger Name</b></th>
                                                            <th><b>No. of Invoices</b></th>
                                                            <th><b>Taxable Value </b></th>
                                                            <th colspan="4" style="text-align: center; vertical-align: middle; border-width: 1px;border-left: 0;border-right: 0;"><b>Total Tax </b></th>
                                                            <th colspan="4" style="text-align: center; vertical-align: middle; border-width: 1px;border-left: 0;border-right: 0;"><b>Input Tax Credit</b></th>
                                                            <th><b>Reconciliation Status</b></th>
                                                        </tr>
                                                        <tr>
                                                            <th></th>
                                                            <th></th>
                                                            <th></th>
                                                            <th><b>Integrated Tax Amount </b></th>
                                                            <th><b>Central Tax Amount  </b></th>
                                                            <th><b>State Tax Amount</b></th>
                                                            <th><b>Cess Amount</b></th>
                                                            <th><b>Integrated Tax Amount </b></th>
                                                            <th><b>Central Tax Amount  </b></th>
                                                            <th><b>State Tax Amount</b></th>
                                                            <th><b>Cess Amount</b></th>
                                                        </tr>

                                                    </thead>
                                                    <tbody style="white-space: nowrap; ">
                                                        <%--<tr>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td><b>Integrated Tax Amount </b></td>
                                                            <td><b>Central Tax Amount  </b></td>
                                                            <td><b>State Tax Amount</b></td>
                                                            <td><b>Cess Amount</b></td>
                                                            <td><b>Integrated Tax Amount </b></td>
                                                            <td><b>Central Tax Amount  </b></td>
                                                            <td><b>State Tax Amount</b></td>
                                                            <td><b>Cess Amount</b></td>
                                                        </tr>--%>
                                                        <tr>
                                                            <td>
                                                                <p style="white-space: nowrap;"><b>
                                                                    To be reconciled with the GST portal</b>
                                                                </p>
                                                            </td>
                                                        </tr>
                                                        <tr >
                                                            <td>B2B Invoices - 3, 4A </td>
                                                            <td style="text-align: center; vertical-align: middle;">14</td>
                                                            <td style="text-align: center; vertical-align: middle;">419384.43</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">32321.46</td>
                                                            <td style="text-align: center; vertical-align: middle;">32321.46</td>
                                                            <td style="text-align: center; vertical-align: middle;">0</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">31482.38</td>
                                                            <td style="text-align: center; vertical-align: middle;">31482.38</td>
                                                            <td style="text-align: center; vertical-align: middle;">0</td>
                                                            <td style="text-align: center; vertical-align: middle;">0</td>
                                                        </tr>
                                                        <tr>
                                                            <td> Taxable Purchases </td>
                                                            <td></td>
                                                            <td style="text-align: center; vertical-align: middle;">335951.43</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">30235.63</td>
                                                            <td style="text-align: center; vertical-align: middle;">30235.63</td>
                                                            <td style="text-align: center; vertical-align: middle;">0</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">30235.63</td>
                                                            <td style="text-align: center; vertical-align: middle;">30235.63</td>
                                                            <td style="text-align: center; vertical-align: middle;">0</td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Reverse Charges Supplies</td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                            <td style="text-align: center; vertical-align: middle;">83433.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">2085.83</td>
                                                            <td style="text-align: center; vertical-align: middle;">2085.83</td>
                                                            <td style="text-align: center; vertical-align: middle;">0</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">1246.75</td>
                                                            <td style="text-align: center; vertical-align: middle;">1246.75</td>
                                                            <td style="text-align: center; vertical-align: middle;">0</td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Credit/Debit Notes Regular -
6C</td>
                                                            <td style="text-align: center; vertical-align: middle;">0</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <p>
                                                                    To be uploaded on the GST portal
                                                                </p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>B2BUR Invoices - 4B </td>
                                                            <td style="text-align: center; vertical-align: middle;">1</td>
                                                            <td style="text-align: center; vertical-align: middle;">5500.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">495.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">495.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0</td>
                                                        </tr>
                                                        <tr>
                                                            <td> Taxable Purchases </td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                        </tr>
                                                        <tr>
                                                            <td> Reverse Charges Supplies </td>
                                                            <td></td>
                                                            <td style="text-align: center; vertical-align: middle;">5500.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">495.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">495.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0</td>
                                                        </tr>
                                                        <tr>
                                                            <td> Import of Services - 4C </td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Import of Goods - 5</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Credit/Debit Notes
Unregistered - 6C</td>
                                                            <td style="text-align: center; vertical-align: middle;">0</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nil Rated Invoices - 7 -
(Summary)</td>
                                                            <td style="text-align: center; vertical-align: middle;">0</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">0</td>
                                                        </tr>
                                                        <tr>
                                                            <td> Composition</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Exempt</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Nil Rated</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Non GST</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                        <!-- Add more rows as needed -->
                                                        <tr>
                                                            <td>
                                                                
                                                                    Advance Paid -10A - (Summary)
                                                                
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                
                                                                    Adjustment of Advance - 10B - (Summary)
                                                                
                                                            </td>
                                                        </tr>
                                                       <tr style="border-width: 1px;border-left: 0;border-right: 0;">
                                                           <td><b>Total Inward Supplies</b></td>
                                                            <td style="text-align: center; vertical-align: middle;"><b>15</b></td>
                                                            <td style="text-align: center; vertical-align: middle;"><b>424884.43</b></td>
                                                            <td style="text-align: center; vertical-align: middle;"><b>0.00</b></td>
                                                            <td style="text-align: center; vertical-align: middle;"><b>32816.46</b></td>
                                                            <td style="text-align: center; vertical-align: middle;"><b>32816.46</b></td>
                                                            <td style="text-align: center; vertical-align: middle;"><b>0.00</b></td>
                                                            <td style="text-align: center; vertical-align: middle;"><b>0.00</b></td>
                                                            <td style="text-align: center; vertical-align: middle;"><b>31482.38</b></td>
                                                            <td style="text-align: center; vertical-align: middle;"><b>31482.38</b></td>
                                                            <td style="text-align: center; vertical-align: middle;"><b>0.00</b></td>
                                                           <td style="text-align: center; vertical-align: middle;"><b>0</b></td>
                                                        </tr>
                                                         <tr>
                                                            <td>
                                                                    ITC Reversal/Reclaim - 11 - (Summary)
                                                            </td>
                                                        </tr>
                                                          <tr style="border-width: 1px; border-style: dotted; border-left: 0;border-right: 0; border-top: 0; " >
                                                            <td>
                                                                  <b>Total No. of Invoices</b> 
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                           <td>HSN/SAC Summary - 13</td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                            <td style="text-align: center; vertical-align: middle;"><b>424884.43</b> </td>
                                                            <td style="text-align: center; vertical-align: middle;"><b>0.00</b> </td>
                                                            <td style="text-align: center; vertical-align: middle;"><b>32816.46</b> </td>
                                                            <td style="text-align: center; vertical-align: middle;"><b>32816.46</b> </td>
                                                            <td style="text-align: center; vertical-align: middle;"><b>0.00</b> </td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                           <td style="text-align: center; vertical-align: middle;"></td>
                                                        </tr>
                                                           <tr>
                                                           <td>HSN/SAC Item Wise Summary</td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                            <td style="text-align: center; vertical-align: middle;">424884.43</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;">32816.46</td>
                                                            <td style="text-align: center; vertical-align: middle;">32816.46</td>
                                                            <td style="text-align: center; vertical-align: middle;">0.00</td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                           <td style="text-align: center; vertical-align: middle;"></td>
                                                        </tr>
                                                         <tr>
                                                            <td>
                                                                 <b>  Reverse Charge Liability to be Booked</b>
                                                            </td>
                                                        </tr>
                                                         <tr>
                                                            <td>
                                                               URD Purchases
                                                            </td>
                                                        </tr>
                                                         <tr>
                                                           <td>Reverse Charge Inward Supplies </td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                          <td style="text-align: center; vertical-align: middle;"></td>
                                                           <td style="text-align: center; vertical-align: middle;"></td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                           <td style="text-align: center; vertical-align: middle;"></td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                            <td style="text-align: center; vertical-align: middle;"></td>
                                                           <td style="text-align: center; vertical-align: middle;"><b>0.16</b></td>
                                                        </tr>
                                                         <tr>
                                                            <td>
                                                               Import of Service
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                             <b> Advance Payments</b> 
                                                            </td>
                                                        </tr>
                                                         <tr style="border-width: 1px;border-left: 0;border-right: 0;">
                                                            <td>
                                                               Amount Unadjusted Against Purchases
                                                            </td>
                                                        </tr>
                                                         <tr>
                                                            <td>
                                                               Purchase Against Advance from Previous Periods
                                                            </td>
                                                        </tr>

                                                    </tbody>
                                                </table>

                                             
                                            </div>

                                        </div>

                                    </div>


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
        function printModalContent(modalId) {
            var modalContent = document.querySelector('#' + modalId).cloneNode(true);
            document.body.innerHTML = modalContent.outerHTML
            window.print();
            window.location.href = "GSTR-1.aspx";
        }
        document.addEventListener('keydown', function (event) {
            if (event.ctrlKey && event.key === 'p') {
                // Prevent default behavior of Ctrl+P (opening print dialog)
                event.preventDefault();
                // Print the content of the active modal

                printModalContent('gstrsummary');

            }
        });

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

