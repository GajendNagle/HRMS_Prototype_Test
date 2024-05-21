<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_FinalSummary.aspx.cs" Inherits="mis_Payroll_Rpt_FinalSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style type="text/css">
        .rowheight {
            line-height: 0.5px;
            font-size: 12px;
        }

        .table > :not(caption) > * > * {
            padding: 0.7rem !important;
        }

        #show {
            display: none;
        }

        .green {
            background-color: #c3decd;
        }

        .red {
            background-color: #eddcc0;
        }
    </style>
    <style>
        .deschide {
            display: none;
        }
    </style>
    <style>
        #Departmentddl {
            display: none;
        }

        #Sectionddl {
            display: none;
        }

        #Postddl {
            display: none;
        }
    </style>
    <script>
        debugger;
        function toggleDivs() {
            var checkbox1 = document.getElementById("customRadio1");
            var checkbox2 = document.getElementById("customRadio2");
            var checkbox3 = document.getElementById("customRadio3");
            var regular = document.getElementById("regular");
            var supplymentary = document.getElementById("supplymentary");
            var Post = document.getElementById("Post");
            var EDbox = document.getElementById("show");

            if (checkbox1.checked) {
                regular.style.display = "block"
                supplymentary.style.display = "none";
                Post.style.display = "none";
                EDbox.style.display = "block"
            } else if (checkbox2.checked) {
                regular.style.display = "none";
                supplymentary.style.display = "block";
                Post.style.display = "none";
                EDbox.style.display = "block"
            } else if (checkbox3.checked) {
                regular.style.display = "none";
                supplymentary.style.display = "none";
                Post.style.display = "block";
                EDbox.style.display = "block"
            }
            else {
                resetsalary.style.display = "none";
                supplementarysalary.style.display = "none";
                EDbox.style.display = "none"
            }
        }


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Final Summary Report</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">Final Summary Report</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Final Summary Report</legend>

                <div class="row justify-content-center">
                    <div class="col-md-2">
                        <div class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="customRadio1" name="customRadio" class="form-check-input" onchange="handleRadioChange(this)">
                                <label class="form-check-label" for="customRadio11">Department</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="customRadio2" name="customRadio" class="form-check-input" onchange="handleRadioChange(this)">
                                <label class="form-check-label" for="customRadio11">Section </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="customRadio3" name="customRadio" class="form-check-input" onchange="handleRadioChange(this)">
                                <label class="form-check-label" for="customRadio11">Post Type </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">

                    <div class="col-md-2">
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
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Month<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">January</option>
                                <option value="2">February</option>
                                <option value="3">March</option>
                                <option value="4">April</option>
                                <option value="5">May</option>
                                <option value="6">June</option>
                                <option value="7">July</option>
                                <option value="8">August</option>
                                <option value="9">September</option>
                                <option value="10">October</option>
                                <option value="11">November</option>
                                <option value="12">December</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="Departmentddl">
                        <div class="form-group">
                            <label>Department<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option selected value="Bhopal">DPI</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="Sectionddl">
                        <div class="form-group">
                            <label>Section<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">All</option>
                                <option value="Bhopal">Administration</option>
                                <option value="Bhopal">Finance</option>
                                <option value="Bhopal">HR</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="Postddl">
                        <div class="form-group">
                            <label>Type of Post<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">All</option>
                                <option value="Regular/Permanent">Regular/Permanent</option>
                                <option value="Fixed Employee">Fixed Employee</option>
                                <option value="Contigent Employee">Contigent Employee</option>
                                <option value="Samvida Employee">Samvida Employee</option>
                                <option value="Theka Shramik">Theka Shramik</option>
                                <option value="Outsource Employee">Outsource Employee</option>
                                <option value="Deputation Employee">Deputation Employee</option>
                                <option value="Contractual Employee">Contractual Employee</option>
                                <option value="Daily Wage's Employee">Daily Wage's Employee</option>
                                <option value="Dally Wages Federation">Dally Wages Federation</option>
                                <option value="Job Rate Employee">Job Rate Employee</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <button type="button" onclick="toggleDivs()" class=" btn-block btn btn-success  btn-rounded">Search</button>
                        </div>
                    </div>
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <a href="Rpt_EarningsDeduction.aspx" class=" btn-block btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div id="show">
                <fieldset>
                    <legend>
                        <label id="regular"><strong>Department </strong>wise earnng and deduction report April Month <strong>2023</strong></label>
                        <label id="supplymentary"><strong>Section</strong> wise earnng and deduction report April Month <strong>2023</strong></label>
                        <label id="Post"><strong>Post</strong> wise earnng and deduction report April Month <strong>2023</strong></label>
                    </legend>
                    <div class="row justify-content-end">
                        <div class="col-md-4 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-55">Excel</button>
                                <button class="btn btn-info btn-rounded w-55">PDF</button>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="table-responsive">
                                <table class="table border table-bordered rowheight">
                                    <tr class="green">
                                        <th colspan="2">
                                            <div class="row justify-content-center ">
                                                <div class="col-md-3">
                                                    <h4><b>EARNINGS</b></h4>
                                                </div>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr class="green">
                                        <th>Head Name</th>
                                        <th>Amount ⟨₹⟩</th>
                                    </tr>
                                    <tr>
                                        <td>BASIC :</td>
                                        <td>3475250</td>
                                    </tr>
                                    <tr>
                                        <td>DEARNESS ALLOWANCE :</td>
                                        <td>1459605</td>
                                    </tr>
                                    <tr>
                                        <td>HOUSE RENT ALLOWANCE :</td>
                                        <td>62744</td>
                                    </tr>
                                    <tr>
                                        <td>CONVEYANCE ALLOWANCE :</td>
                                        <td>350</td>
                                    </tr>
                                    <tr>
                                        <td>WASHING ALLOWANCE :</td>
                                        <td>1100</td>
                                    </tr>
                                    <tr>
                                        <td>SPECIAL PAY :</td>
                                        <td>100</td>
                                    </tr>
                                    <tr>
                                        <td>GROSS SALARY :</td>
                                        <td><b>4999149</b></td>
                                    </tr>
                                    <tr>
                                        <td>NET AMOUNT :</td>
                                        <td><b>4117494</b></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="table-responsive">
                                <table class="table border table-bordered rowheight">
                                    <tr class="red">
                                        <th colspan="2">
                                            <div class="row justify-content-center">
                                                <div class="col-md-3">
                                                    <h4><b>Deduction</b></h4>
                                                </div>
                                            </div>

                                        </th>
                                    </tr>
                                    <tr class="red">
                                        <th>Head Name</th>
                                        <th>Amount ⟨₹⟩</th>
                                    </tr>
                                    <tr>
                                        <td>EPF DEDUCTION:</td>
                                        <td>592183</td>
                                    </tr>
                                    <tr>
                                        <td>INCOME TAX:</td>
                                        <td>236452</td>
                                    </tr>
                                    <tr>
                                        <td>PROFESSIONAL TAX:</td>
                                        <td>17150</td>
                                    </tr>
                                    <tr>
                                        <td>MISC DEDUCTION:</td>
                                        <td>12500</td>
                                    </tr>
                                    <tr>
                                        <td>GRAIN ADVANCE:</td>
                                        <td>1200</td>
                                    </tr>
                                    <tr>
                                        <td>HOUSE RENT/ LICENSE FEE :</td>
                                        <td>16350</td>
                                    </tr>
                                    <tr>
                                        <td>WATER CHARGES:</td>
                                        <td>5040</td>
                                    </tr>
                                    <tr>
                                        <td>INTEREST PAY ADVANCE:</td>
                                        <td>780</td>
                                    </tr>
                                    <tr>
                                        <td>POLICY:</td>
                                        <td><b>0</b></td>
                                    </tr>
                                    <tr>
                                        <td>TOTAL DEDUCTION:</td>
                                        <td><b>881655</b></td>
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
                            <li><strong>Department (Radio button)</strong>
                                <ul>
                                    <li>After clicking on the Department type Radio button, according to the Department relevant dropdown will be visible as Filter.
                                    </li>
                                </ul>
                            </li>
                            <li><strong>Section (Radio button)</strong>
                                <ul>
                                    <li>After clicking on the Section Radion button, according to the Section relevant dropdown will be visible as Filter.
                                    </li>
                                </ul>
                            </li>
                            <li><strong>Post Type (Radio button)</strong>
                                <ul>
                                    <li>After clicking on the Post Type Radion button, according to the Post Type relevant dropdown will be visible as Filter.
                                    </li>
                                </ul>
                            </li>
                            <%--   <li><strong>Office Name (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select the  <strong>Office Name</strong> from the dropdown which will automatically reflect from Office Master.</li>
                                </ul>
                            </li>--%>
                            <li><strong>Year (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Year </strong>from dropdown. </li>
                                </ul>
                            </li>
                            <li><strong>Month (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Month </strong>from dropdown. </li>
                                </ul>
                            </li>
                            <li><strong>Department (Dropdown)</strong>
                                <ul>
                                    <li>The user will be able to select the <strong>department</strong> from the dropdown, where DPI is the default selection.</li>
                                </ul>
                            </li>
                            <li><strong>Section (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select the <strong>Section </strong>from the dropdown which will automatically reflect from Section Master.</li>
                                </ul>
                            </li>
                            <li><strong>Type of post (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select the <strong>Type of Post </strong>from the dropdown which will automatically reflect from Post Master.</li>
                                </ul>
                            </li>
                            <li><strong>Search (Button)</strong>
                                <ul>
                                    <li>User will Search data as per selected field.</li>
                                    <li>After click on Search button data will be visible in grid view.</li>
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

                        </ul>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function handleRadioChange(radio) {
            var checkbox1 = document.getElementById("customRadio1");
            var checkbox2 = document.getElementById("customRadio2");
            var checkbox3 = document.getElementById("customRadio3");

            var Departmentddl = document.getElementById("Departmentddl");
            var Sectionddl = document.getElementById("Sectionddl");
            var Postddl = document.getElementById("Postddl");
            var EDbox = document.getElementById("show");

            if (checkbox1.checked) {
                Departmentddl.style.display = "block"
                Sectionddl.style.display = "none";
                Postddl.style.display = "none";
                EDbox.style.display = "none"

            } else if (checkbox2.checked) {
                Departmentddl.style.display = "none"
                Sectionddl.style.display = "block";
                Postddl.style.display = "none";
                EDbox.style.display = "none"
            } else if (checkbox3.checked) {
                Departmentddl.style.display = "none"
                Sectionddl.style.display = "none";
                Postddl.style.display = "block";
                EDbox.style.display = "none"
            }
            else {
                Departmentddl.style.display = "none";
                Sectionddl.style.display = "none";
                Postddl.style.display = "none"
                EDbox.style.display = "none"
            }
        }

    </script>
</asp:Content>





