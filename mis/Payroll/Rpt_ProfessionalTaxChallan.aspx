<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_ProfessionalTaxChallan.aspx.cs" Inherits="mis_Payroll_Rpt_ProfessionalTaxChallan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style type="text/css">
        .rowheight {
            line-height: 0.5rem;
            font-size: 12px;
        }

        .table > :not(caption) > * > * {
            padding: 0.8rem !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Professional Tax Challan</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">Professional Tax Challan</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Professional Tax Challan</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-3">
                        <h4><b>April-2023 TO June-2023 </b></h4>
                    </div>
                </div>
                <div class="row justify-content-center mt-4">
                    <div class="col-md-10 table-responsive">

                        <table class="table table-bordered border rowheight">
                            <tr>
                                <th>Name</th>
                                <th>Pan No.</th>
                                <th>Date of Payment</th>
                                <th>Paid Salary</th>
                                <th>Income Tax (Deduction)</th>
                                <th>Date of Deposit</th>
                                <th>Challan No.</th>
                            </tr>
                            <tr>
                                <td rowspan="2">Archana Patel</td>
                                <td>BQYPP0123N </td>
                                <td>30/06/2023</td>
                                <td>090960.00</td>
                                <td>20000.00</td>
                                <td>04/07/2023</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>Total</td>
                                <td>90960.00</td>
                                <td>20000.00</td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td rowspan="4">Bibhash Kumar Thakur</td>
                                <td rowspan="3">ACKPT0976A</td>
                                <td>30/04/2023</td>
                                <td>309258.00</td>
                                <td>90000.00</td>
                                <td>19/05/2023</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td>31/05/2023</td>
                                <td>309258.00</td>
                                <td>90000.00</td>
                                <td>9/06/2023</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td>30/06/2023</td>
                                <td>309258.00</td>
                                <td>80000.00</td>
                                <td>04/07/2023</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>Total</td>
                                <td>917774.00</td>
                                <td>260000.00</td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td rowspan="4">Dara Singh Yadav</td>
                                <td rowspan="3">AKCPT09107P</td>
                                <td>30/04/2023</td>
                                <td>83482.00</td>
                                <td>0.00</td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>31/05/2023</td>
                                <td>83482.00</td>
                                <td>3000.00</td>
                                <td>9/06/2023</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td>30/06/2023</td>
                                <td>83482.00</td>
                                <td>3000.00</td>
                                <td>04/07/2023</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>Total</td>
                                <td>250446.00</td>
                                <td>6000.00</td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-md-12 mt-5">
                        <b class="font-16">Note: - Customize any payroll report</b>
                    </div>
                </div>
            </fieldset>
            <fieldset id="dcp" runat="server">
                <legend>Description</legend>
                <div class="row">

                    <div class="col-md-12">
                        <ul class="main-ul">
                            <li><strong>Excel (Button)</strong>
                                <ul>
                                    <li>Excel button should be visible and user should be able to click.</li>
                                    <li>After clicking on the Excel button, showing the data will be export to Excel.</li>
                                </ul>
                            </li>
                            <li><strong>PDF (Button)</strong>
                                <ul>
                                    <li>PDF button should be visible and user should be able to click.</li>
                                    <li>After clicking on PDF button grid view data export in PDF.</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>





