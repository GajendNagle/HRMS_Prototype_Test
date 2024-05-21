<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_PayrollSalaryLedger.aspx.cs" Inherits="mis_Payroll_Rpt_PayrollSalaryLedger" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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

    <style>
        #show {
            display: none;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Payroll Salary Ledger</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">Payroll Salary Ledger</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Payroll Salary Ledger</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Office Type<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                              <option value="Bhopal">Head Office</option>
                                <option value="Bhopal">JOINT DIRECTORS</option>
                                <option value="Bhopal">DISTRICT EDUCATION OFFICERS</option>
                                <option value="Bhopal">BLOCK EDUCATION OFFICERS</option>
                                <option value="Bhopal">SANKUL/AEO</option>
                                <option value="Bhopal">SCHOOL</option>
                                <option value="Principal Secretary">Principal Secretary</option>
                                <option value="Secretary">Secretary</option>
                                <option value="Deputy Secretary">Deputy Secretary</option>
                                <option value="CPI">CPI</option>
                                <option value="CRSK">CRSK</option>
                                <option value="DPI">DPI</option>
                                <option value="Collector">Collector</option>
                                <option value="CEO, ZP">CEO, ZP</option>
                                <option value="DPC">DPC</option>
                                <option value="BRC">BRC</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Employee Name<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Ramji</option>
                                <option value="Bhopal">Bharat</option>
                                <option value="Bhopal">Poonam</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Year<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">2023</option>
                                <option value="Bhopal">2024</option>
                                <option value="Bhopal">2025</option>
                                <option value="Bhopal">2026</option>
                                <option value="Bhopal">2027</option>
                                <option value="Bhopal">2028</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-1 mt-4">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class="btn btn-success  btn-rounded">Search</button>
                        </div>
                    </div>
                    <div class="col-md-1 mt-4">
                        <div class="form-group">
                            <a href="Rpt_PayrollSalaryLedger.aspx" class=" btn-block btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 table-responsive" style="">
                        <span  class="lblEmpDetail" style="color: black; font-size: 17px;"></span>
                        <p class="hidden-print" style="color: red"><b>नोट: </b>प्रिंट करने के लिए कृपया Ctrl+P का उपयोग करें |</p>
                        <div>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="show">
                <legend>Payroll Salary Ledger Details (Report)</legend>
                <div class="row justify-content-end">
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">Excel</button>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="table-responsive">
                        <table class="table">
                            <tr>
                                <th>Sr.No</th>
                                <th>Head</th>
                                <th>Earning & Deduction</th>
                                <th>Total In FY</th>
                                <th>April</th>
                                <th>April Arrear</th>
                                <th>May</th>
                                <th>May Arrear</th>
                                <th>June</th>
                                <th>June Arrear</th>
                                <th>July.</th>
                                <th>July Arrear</th>
                                <th>August</th>
                                <th>August Arrear</th>
                                <th>September</th>
                                <th>September Arrear</th>
                                <th>October</th>
                                <th>October Arrear</th>
                                <th>November</th>
                                <th>November Arrear</th>
                                <th>December</th>
                                <th>December Arrear</th>
                                <th>January</th>
                                <th>January Arrear</th>
                                <th>February</th>
                                <th>February Arrear</th>
                                <th>March</th>
                                <th>March Arrear</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>BASIC SALARY</td>
                                <td>Earning</td>
                                <td>303100.00</td>
                                <td>41029.00</td>
                                <td>41029.00</td>
                                <td>41029.00</td>
                                <td>41029.00</td>
                                <td>41029.00</td>
                                <td>41029.00</td>
                                <td>101800</td>
                                <td>42756</td>
                                <td>3325</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>147881</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>17347</td>
                                <td>0</td>
                                <td>0</td>
                                <td>15000</td>
                                <td>250</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>DEARNESS ALLOWANCE</td>
                                <td>Earning </td>
                                <td>120114.00</td>
                                <td>41029.00	</td>
                                <td>41029.00	</td>
                                <td>41029.00	</td>
                                <td>41029.00	</td>
                                <td>41029.00	</td>
                                <td>1011</td>
                                <td>98400</td>
                                <td>41328</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>139728</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>16767</td>
                                <td>0</td>
                                <td>0</td>
                                <td>15000</td>
                                <td>250</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>HOUSE RENT ALLOWANCE</td>
                                <td>Earning </td>
                                <td>4200.00</td>
                                <td>43029.00	</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>98400</td>
                                <td>41328</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>139728</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>16767</td>
                                <td>0</td>
                                <td>0</td>
                                <td>15000</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>EPF DEDUCTION</td>
                                <td>Earning </td>
                                <td>4200.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>98400</td>
                                <td>41328</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>139728</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>16767</td>
                                <td>0</td>
                                <td>0</td>
                                <td>15000</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>PROFESSIONAL TAX</td>
                                <td>Deduction </td>
                                <td>50785.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>3029.00</td>
                                <td>98400</td>
                                <td>41328</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>139728</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>16767</td>
                                <td>0</td>
                                <td>0</td>
                                <td>15000</td>


                            </tr>
                            <tr>
                                <td>6</td>
                                <td>TOTAL EARNING</td>
                                <td>Deduction </td>
                                <td>1000.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>98400</td>
                                <td>41328</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>139728</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>16767</td>
                                <td>0</td>
                                <td>0</td>
                                <td>15000</td>

                            </tr>
                            <tr>
                                <td>7</td>
                                <td>TOTAL DEDUCTION</td>
                                <td>Earning </td>
                                <td>429017.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>5000</td>
                                <td>43029.00</td>
                                <td>98400</td>
                                <td>41328</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>139728</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>16767</td>
                                <td>0</td>
                                <td>0</td>
                                <td>15000</td>

                            </tr>
                            <tr>
                                <td>8</td>
                                <td>NET SALARY</td>
                                <td>Earning </td>
                                <td>51785.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>43029.00</td>
                                <td>400</td>
                                <td>43029.00</td>
                                <td>98400</td>
                                <td>41328</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>139728</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>16767</td>
                                <td>0</td>
                                <td>0</td>
                                <td>15000</td>

                            </tr>
                        </table>
                    </div>
                </div>
            </fieldset>

            <fieldset id="ContentBody_dcp">
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">

                            <li><strong>Office Type (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select the  <strong>Office Type</strong> from the dropdown which will automatically reflect Office Type Master.</li>
                                </ul>
                            </li>
                            <li><strong>Employee Name (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Employee Name </strong>from dropdown. Data populated from <strong>Employee Registration </strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Year (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Year </strong>from dropdown. Data populated from <strong>Database Table</strong>. </li>
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

                            <li><strong>Searchbox (searchable box)</strong>
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
</asp:Content>

