<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_EmployeeIncrement.aspx.cs" Inherits="mis_Transaction_Rpt_EmployeeIncrement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #showdetails {
            display: none;
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
                            <a href="#Payroll" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Payroll</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#Increment" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Payroll')">
                                <span>Increment</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Employee Increment Report </span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h5 class="card-title">Employee Increment Report / कर्मचारी वेतन वृद्धि रिपोर्ट
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Employee Increment Report / कर्मचारी वेतन वृद्धि रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Office Type<br />
                                कार्यालय प्रकार का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">BEO</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Office Name<br />
                                कार्यालय का नाम चुनें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">GOVT. HSS NAGANDEORI</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                From Date
                            <br />
                                तिथि से<span style="color: red">*</span></label>
                            <input name="ename" id="firstDate" type="date" class="form-control" autocomplete="off" onchange="updateSecondDate()" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                To Date
                            <br />
                                तिथि तक<span style="color: red">*</span></label>
                            <input name="ename" id="firstDate1" type="date" class="form-control" autocomplete="off" onchange="updateSecondDate()" />
                        </div>
                    </div>
                    <div class="col-md-12">
                    <hr />
                        <button onclick="Hideshow()" type="button" class=" btn btn-success btn w-lg btn-border">Search</button>
                        <a href="Rpt_EmployeeIncrement.aspx" class="btn btn-outline-danger btn w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
            <div id="showdetails">
                <fieldset>
                    <legend>Employee Details / कर्मचारी का विवरण</legend>
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
                                <table class="table table-bordered text-center">
                                    <thead class="nowrap">
                                        <tr>
                                            <th>Sr.No.<br />
                                                सरल क्र.</th>
                                            <th>Employee Name
                                            <br />
                                                कर्मचारी का नाम</th>
                                            <th>Order No.
                                            <br />
                                                आदेश संख्या</th>
                                            <th>Order Date
                                            <br />
                                                आदेश की तारीख</th>
                                            <th>Existing Level
                                            <br />
                                                मौजूदा स्तर</th>
                                            <th>Existing Basic Salary
                                            <br />
                                                मौजूदा मूल वेतन</th>
                                            <th>New Level
                                            <br />
                                                नया स्तर</th>
                                            <th>New Basic Salary
                                            <br />
                                                नया मूल वेतन</th>
                                            <th>Effective Date<br />
                                                प्रभावी तिथि</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>Shri Rajesh Tiwari</td>
                                        <td>58965</td>
                                        <td>04/04/2023</td>
                                        <td>Level-1</td>
                                        <td>9650</td>
                                        <td>Level-2</td>
                                        <td>15000</td>
                                        <td>01/04/2023</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Shri S.S. Soni</td>
                                        <td>58963</td>
                                        <td>05/04/2023</td>
                                        <td>Level-3</td>
                                        <td>25000</td>
                                        <td>Level-6</td>
                                        <td>30000</td>
                                        <td>05/04/2023</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function Hideshow() {

            var x = document.getElementById("showdetails");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>

</asp:Content>


