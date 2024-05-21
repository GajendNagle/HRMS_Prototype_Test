<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_BankAdviceLetter.aspx.cs" Inherits="mis_Payroll_Rpt_BankAdviceLetter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style type="text/css">
        .tdbgcolor {
            background-color: #e1e2e3 !important;
        }

        .rowheight {
            line-height: 0.1rem;
            font-size: 12px;
        }

        .table > :not(caption) > * > * {
            padding: 0.8rem !important;
        }
    </style>

    <style>
        #show {
            display: none;
        }

        .tablehead {
            margin-left: 27rem;
        }

        .tablehead1 {
            margin-left: 30rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Bank Advice Letter</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">Bank Advice Letter</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Bank Advice Letter</legend>
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
                    <div class="col-md-3">
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
                    <div class="col-md-3">
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
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Bank Name<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">State Bank of India</option>
                                <option value="Bhopal">Bank of Inia</option>
                                <option value="Bhopal">Bank of Baroda</option>
                                <option value="Bhopal">UCO Bank</option>
                                <option value="Bhopal">Punjab National Bank</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class=" btn-block btn btn-success  btn-rounded">Search</button>
                        </div>
                    </div>
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <a href="Rpt_BankAdviceLetter.aspx" class=" btn-block btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div id="show">
                <fieldset>
                    <div class="row justify-content-end">
                        <div class="col-md-8 align-self-start">
                            <div class="form-group">
                                <button type="button" class=" btn btn-info    btn-rounded">Print Bank wise Paybill</button>
                            </div>
                        </div>
                        <div class="col-md-4 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-55">Excel</button>
                                <button class="btn btn-info btn-rounded w-55">PDF</button>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table border table-bordered rowheight">
                                    <tr>
                                        <th colspan="8" class="tdbgcolor "><span class="tablehead">M.P. State Minor Forest Produce(T & D)Co-op. Fed. Ltd.</span></th>
                                    </tr>
                                    <tr>
                                        <th colspan="8" class="tdbgcolor"><span class="tablehead1">BANK WISE DETAIL OF SEPTEMBER 2023</span></th>
                                    </tr>
                                    <tr class="tdbgcolor">
                                        <td>SNO.</td>
                                        <td>NAME OF BANK</td>
                                        <td>AMOUNT</td>
                                        <td></td>
                                        <td>IFSC CODE</td>
                                        <td>CHQ No.</td>
                                        <td>DATE</td>
                                        <td>AMOUNT</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>State Bank Of India</td>
                                        <td>55543.00</td>
                                        <td rowspan="13">1313768.00</td>
                                        <td>SBIN0001308</td>
                                        <td colspan="3" rowspan="13"></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>State Bank Of India</td>
                                        <td>65145.00</td>
                                        <td>SBIN0005193</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>State Bank Of India</td>
                                        <td>22188.00</td>
                                        <td>SBIN0005798</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>State Bank Of India</td>
                                        <td>45173.00</td>
                                        <td>SBIN0006159</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>State Bank Of India</td>
                                        <td>81325.00</td>
                                        <td>SBIN0007932</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>State Bank Of India</td>
                                        <td>33891.00</td>
                                        <td>SBIN0010489</td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>State Bank Of India</td>
                                        <td>55955.00</td>
                                        <td>SBIN010525</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>State Bank Of India</td>
                                        <td>95901.00</td>
                                        <td>SBIN0011208</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>State Bank Of India</td>
                                        <td>115284.00</td>
                                        <td>SBIN0016153</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>State Bank Of India</td>
                                        <td>398726.00</td>
                                        <td>SBIN030005</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>State Bank Of India</td>
                                        <td>50174.00</td>
                                        <td>SBIN0030224</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>State Bank Of India</td>
                                        <td>262042.00</td>
                                        <td>SBIN0030343</td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>State Bank Of India</td>
                                        <td>30620.00</td>
                                        <td>SBIN0030513</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>TOTAL Rs.</td>
                                        <td>1313768.00</td>
                                        <td>1313768.00</td>
                                        <td colspan="4"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="8"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="8">(Thirteen Lakh Thirteen Thousand Seven Hundred Sixty Eight Rupees and Zero Paisa Only)</td>
                                    </tr>
                                    <tr>
                                        <td colspan="8"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="8"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="8"></td>
                                    </tr>
                                    <tr>
                                        <td>DY MANAGER(A/CS)</td>
                                        <td></td>
                                        <td colspan="3"></td>
                                        <td></td>
                                        <td colspan="2">GM(ACCTS)</td>
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
                            <li><strong>Office Type </strong>
                                <ul>
                                    <li>User will be able to select the <strong>Office Type </strong>from the dropdown which will automatically reflect from Office Type Master.</li>
                                </ul>
                            </li>
                            <li><strong>Office Name (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select the  <strong>Office Name</strong> from the dropdown which will automatically reflect from Office Master.</li>
                                </ul>
                            </li>
                            <li><strong>Year (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Year </strong>from dropdown. Year populated from <strong>Year Master</strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Month (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Month </strong>from dropdown. Month populated from <strong>Month Master </strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Type of post (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select the <strong>Type of Post Name </strong>from the dropdown which will automatically reflect from Post Master.</li>
                                </ul>
                            </li>
                            <li><strong>Bank Name (Dropdown) </strong>
                                <ul>
                                    <li>User will be able to select the <strong>Bank Name</strong> from the dropdown and the data will be populated from the <strong>Bank Master.</strong></li>
                                </ul>
                            </li>
                            <li><strong>Search (Button)</strong>
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
                            <li><strong>Print bank wise Pay bill (Button)</strong>
                                <ul>
                                    <li>User will be Print bank wise pay bill report according to bank wise employee salary details.</li>
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






