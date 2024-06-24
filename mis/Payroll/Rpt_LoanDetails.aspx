<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_LoanDetails.aspx.cs" Inherits="mis_Payroll_LoanDetails" %>

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
    <style>
        .deschide {
            display: none;
        }

        .note {
            color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--<div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Loan Details</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">Loan Details</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">--%>
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
                            <a href="#Payroll" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Payroll</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#PayrollReports" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Payroll')">
                                <span>Reports
                                </span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Loan Details</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Loan Details/
ऋण विवरण      </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Loan Details/ऋण विवरण :</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Office Type<br />
                                कार्यालय का प्रकार<span style="color: red">*</span></label>
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
                            <label>Office  Name<br />
                                कार्यालय का नाम<span style="color: red">*</span></label>
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
                            <label>Employee ID<br />
                                कर्मचारी आय.डी.<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="DEO Office">453454</option>
                                <option value="Bhopal">645444</option>
                            </select>
                        </div>
                    </div>
                    <%-- <div class="col-md-1 mt-4">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class=" btn btn-success  btn-rounded">Search</button>
                        </div>
                    </div>
                    <div class="col-md-1 mt-4">
                        <div class="form-group">
                            <a href="Rpt_LoanDetails.aspx" class=" btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>--%>

                    <div class="col-md-4 note">
                        <b>Note: Only interest amount can be update. </b>
                    </div>

                    <hr />
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class=" btn btn-success w-lg btn-rounded">Search</button>
                            <a href="Rpt_LoanDetails.aspx.aspx" class=" btn btn-outline-danger w-lg btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div id="show">
                <fieldset>
                    <legend>Loan Details (Report)/ऋण विवरण (रिपोर्ट)</legend>
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
                                    <tr style="white-space:nowrap;">
                                        <th lang="en">Sr.No.<br />
                                            क्रमांक</th>
                                        <th lang="en">Office Name<br />
                                            कार्यालय का नाम</th>
                                        <th lang="en">Employee ID<br />
                                            कर्मचारी आईडी</th>
                                        <th lang="en">Loan Head<br />
                                            ऋण मुख्य</th>
                                        <th lang="en">Loan Order No<br />
                                            ऋण आदेश संख्या</th>
                                        <th lang="en">Loan Amount ⟨₹⟩<br />
                                            ऋण राशि ⟨₹⟩</th>
                                        <th lang="en">Installment Amount ⟨₹⟩<br />
                                            किश्त राशि ⟨₹⟩</th>
                                        <th lang="en">Interest Amount ⟨₹⟩<br />
                                            ब्याज राशि ⟨₹⟩</th>
                                        <th lang="en">Loan Deduction Year<br />
                                            ऋण कटौती वर्ष</th>
                                        <th lang="en">Loan Deduction Month<br />
                                            ऋण कटौती महीना</th>
                                        <th lang="en">Action<br />
                                            कार्रवाई</th>
                                    </tr>

                                    <tr>
                                        <td>1</td>
                                        <td>DEO Office</td>
                                        <td>645444</td>
                                        <td>Grain Advance</td>
                                        <td>2023/LNo/4/1</td>
                                        <td>1600</td>
                                        <td>400</td>
                                        <td>0</td>
                                        <td>2023</td>
                                        <td>April</td>
                                        <td><i class="fa fa-pen"></i>| <i class="fa fa-trash"></i></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Head Office</td>
                                        <td>344444 </td>
                                        <td>Festival  Advance</td>
                                        <td>2023/LNo/4/2</td>
                                        <td>1200</td>
                                        <td>400</td>
                                        <td>0</td>
                                        <td>2022</td>
                                        <td>May</td>
                                        <td><i class="fa fa-pen"></i>| <i class="fa fa-trash"></i></td>
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
                            <li><strong>Employee ID </strong>
                                <ul>
                                    <li>New record insert, old data will be migrated.</li>
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
                            <li><strong>Action (Button)</strong>
                                <ul>
                                    <li>After click on <strong>Edit</strong> button User should be able to edit details.</li>
                                    <li>After clicking <strong>Delete</strong> button the details will be deleted</li>
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

