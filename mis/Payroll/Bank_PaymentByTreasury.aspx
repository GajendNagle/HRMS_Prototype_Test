<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Bank_PaymentByTreasury.aspx.cs" Inherits="mis_Payroll_Bank_PaymentByTreasury" %>

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
            <h4 class="text-themecolor ">Payment By Treasury</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=PaymentFile" title="click to go on">Payment File</a></li>

                    <li class="breadcrumb-item active">Payment By Treasury</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Payment By Treasury</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>From Date<span style="color: red">*</span></label>
                            <input type="date" class="form-control " placeholder="DD/MM/YYYY" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>To Date<span style="color: red">*</span></label>
                            <input type="date" class="form-control" placeholder="DD/MM/YYYY" />
                        </div>
                    </div>
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
                            <label>Payment Type</label><span style="color: red">*</span>
                            <select name="ctl00$ContentBody$rbtnUserType" id="ctl00_ContentBody_rbtnUserType" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">Vendor Payment</option>
                                <option value="3">Salary</option>
                                <option value="4">Payment to PCS</option>
                                <option value="5">Bank Payment</option>
                                <option value="6">Staff Payment</option>
                                <option value="7">DA Arrear</option>
                                <option value="8">Salary Arrear</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <br />
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class=" btn btn-block btn-success btn-rounded">Search</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <br />
                        <div class="form-group">
                            <a href="Rpt_MonthlyPolicyReport.aspx" class=" btn btn-block btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>

                </div>
            </fieldset>
            <div id="show">
                <fieldset>
                    <legend>Payment By Treasury</legend>
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
                        <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <th colspan="8" style="text-align: center;"><b>LOCATION : - Ashoknagar-( ASH )</b></th>
                                </tr>

                                <tr>
                                    <th colspan="8" style="text-align: center;"><b>Salary - September - 2023 DATE :- 9/4/2023 </b></th>
                                </tr>
                                <tr>
                                    <th>SNo.</th>
                                    <th>Reference No</th>
                                    <th>IFSC Code</th>
                                    <th>Account No</th>
                                    <th>Amount</th>
                                    <th>Emp Name</th>
                                    <th>Emp MobileNo</th>
                                    <th>Trans Date</th>

                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>1055000025890</td>
                                    <td>UCBA0002360</td>
                                    <td>23603211024217</td>
                                    <td>14000.00</td>
                                    <td>Neetesh Longare</td>
                                    <td>7089751027</td>
                                    <td>04/09/2023</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </fieldset>
            </div>
            <fieldset id="dcp" runat="server">
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                            <li><strong>From Date</strong>
                                <ul>
                                    <li>User will be able to select <strong>Date </strong>
                                        from DataBase
                                </ul>
                            </li>
                            <li><strong>To Date</strong>
                                <ul>
                                    <li>User will be able to select <strong>Date </strong>
                                        from DataBase
                                </ul>
                            </li>
                            <li><strong>Office Type</strong>
                                <ul>
                                    <li>User will be able to select the <strong>Office Type </strong>from the dropdown and the data will be populated from the<strong> Office Type Master.</strong></li>
                                </ul>
                            </li>
                            <li><strong>Payment Type</strong>
                                <ul>
                                    <li>User will be able to select the <strong>Payment Type </strong>from the dropdown and the data will be populated from the <strong>DataBase</strong></li>
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
                                    <li>After clicking on Excel button grid view data export in Excel.</li>
                                </ul>
                            </li>
                            <li><strong>PDF (Button)</strong>
                                <ul>
                                    <li>PDF button should be visible and user should be able to click.</li>
                                    <li>After clicking on PDF button grid view data export in PDF.</li>
                                </ul>
                            </li>
                            <li><strong>Searchbox (Searchable box)</strong>
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

