<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_IncomeTaxEmployeeWise.aspx.cs" Inherits="mis_Payroll_Rpt_IncomeTaxEmployeeWise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        #show {
            display: none;
        }
    </style>
    <style>
        .deschide {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Income Tax Report</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">Income Tax Report</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Income Tax Report Month Wise</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Employee Name<span style="color: red">*</span></label>
                            <select disabled class="form-control select2">
                                <option value="Bhopal">Aakriti Sharma</option>
                                <option value="Bhopal">JD Office</option>
                                <option value="Bhopal">DEO Office</option>
                                <option value="Bhopal">BEO Office</option>
                                <option value="Bhopal">Sankul Office</option>
                                <option value="Bhopal">School Office</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Year</label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">2023</option>
                                <option value="Bhopal">2024</option>
                                <option value="Bhopal">2025</option>
                                <option value="Bhopal">2026</option>
                                <option value="Bhopal">2027</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Month</label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">January-February-March</option>
                                <option value="Bhopal">April-May-June</option>
                                <option value="Bhopal">July-August-September</option>
                                <option value="Bhopal">October-November-December</option>
                            </select>
                        </div>
                    </div>


                    <div class="col-md-3 mt-4">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class=" btn btn-success  btn-rounded">Search</button>
                            <a href="Rpt_IncomeTax.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>

                </div>
            </fieldset>
            <div id="show">
                <fieldset>
                    <legend>Report: INCOME TAX (Deduction) Details (January-February-March-2023) of Head Office</legend>
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
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table">
                                    <tr>
                                        <th>Sr.No.</th>
                                        <th>Employee Name</th>
                                        <th>Designation</th>
                                        <th>Pan No.</th>
                                        <th>Jan Earning</th>
                                        <th>Feb Earning</th>
                                        <th>Mar Earning</th>
                                        <th>Total Earning</th>
                                        <th>Jan Deduction</th>
                                        <th>Feb Deduction</th>
                                        <th>Mar Deduction</th>
                                        <th>Total Deduction</th>

                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Aakriti Sharma</td>
                                        <td>Asst. Grade-3</td>
                                        <td>ASIPS0219H</td>
                                        <td>103461.00</td>
                                        <td>103625.00</td>
                                        <td>103661.00</td>
                                        <td>310747.00</td>
                                        <td>33000.00</td>
                                        <td>33000.00</td>
                                        <td>31000.00</td>
                                        <td>97000.00</td>
                                    </tr>
                                  
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <fieldset id="dcp" runat="server">
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                               <li><strong>Employee Name</strong>
                                <ul>
                                    <li>The name of the employee who has logged in will appear in the Employee Name.</li>
                                </ul>
                            </li>
                            <li><strong>Year (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Year </strong>from dropdown.</li>
                                </ul>
                            </li>
                            <li><strong>Month (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Month </strong>from dropdown.</li>
                                </ul>
                            </li>
                         
                            <li><strong>Search </strong>
                                <ul>
                                    <li>User will Search data as per selected field.</li>
                                    <li>After click on Search button data will be visible in grid view.</li>
                                </ul>
                            </li>
                            <li><strong>Clear (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Clear button.</li>
                                    <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                </ul>
                            </li>
                              <li><strong>Grid</strong>
                                <ul>
                                    <li>The data of income tax being deducted on employee monthly earnings will be visible quarterly.</li>
                                </ul>
                            </li>
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
                            <li><strong>Searchbox (Searcheble box)</strong>
                                <ul>
                                    <li>Users can search for any text value, and only the relevant text related to the search will be displayed .</li>
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
    <script>
        function myFunction() {
            var x = document.getElementById("show");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
</asp:Content>

