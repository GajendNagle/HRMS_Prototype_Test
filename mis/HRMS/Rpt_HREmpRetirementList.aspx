<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_HREmpRetirementList.aspx.cs" Inherits="mis_Payroll_Rpt_HREmpRetirmentList" %>

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


    <div class="content-wrapper">
        <!-- Main content -->
        <div class="container-fluid">
            <%--<div class="row page-titles mb-4">
                <div class="col-md-5 align-self-center">
                    <h4 class="text-themecolor ">Employee Retirement Detail</h4>
                </div>
                <div class="col-md-7 align-self-center text-end">
                    <div class="d-flex justify-content-end align-items-center">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                            <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                            <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Reports" title="click to go on">Reports</a></li>
                            <li class="breadcrumb-item active">Employee Retirement Detail</li>
                        </ol>
                    </div>
                </div>
            </div>--%>
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
                                    <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                                </li>
                                <li class="breadcrumb-item">
                                    <a href="#Reports" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                        <span>Reports</span></a>
                                </li>
                                <li class="breadcrumb-item">Employee Retirement Detail</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row align-items-end">
                        <div class="col-lg-8">
                            <h4 class="card-title">Employee Retirement Detail / कर्मचारी का सेवानिवृत्ति विवरण</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Employee Retirement Detail / कर्मचारी का सेवानिवृत्ति विवरण</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Office Type /<br />
                                        कार्यालय प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="0">Select</option>
                                        <option value="1">Head Office</option>
                                        <option value="3">Bhopal- Circle Office</option>
                                        <option value="4">Hoshangabad- Circle Office</option>
                                        <option value="5">Betul- Circle Office</option>
                                        <option value="6">Chhindwara- Circle Office</option>
                                        <option value="7">seoni- Circle Office</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <button type="button" onclick="myFunction()" class="btn btn-success btn w-lg  btn-border">Search</button>

                                <a href="Rpt_HREmpRetirementList.aspx" class="btn btn-outline-danger btn w-lg btn-border">Clear</a>
                            </div>
                        </div>

                    </fieldset>
                    <fieldset id="show">
                        <legend>Employee Retirement Detail (Report) / कर्मचारी का सेवानिवृत्ति विवरण (रिपोर्ट)</legend>
                        <div class="row mt-4 justify-content-end">
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
                                        <th>Sr.No/<br />सरल क्र.</th>
                                        <th>Employee Name /<br />कर्मचारी का नाम</th>
                                        <th>Seperation Type /<br />पृथक्करण प्रकार</th>
                                        <th>Retirement Date /<br />सेवानिवृत्ति तिथि</th>
                                        <th>Office Type /<br />कार्यालय का प्रकार</th>
                                        <th>Order Date /<br />आदेश की तारीख</th>
                                        <th>Order No /<br />आदेश संख्या</th>
                                        <th>Remark /<br />टिप्पणी</th>
                                        <th>Document/<br />दस्तावेज़</th>


                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Mr Ram Gopal Sharma(E2298)</td>
                                        <td>Retirement</td>
                                        <td>31/12/2023</td>
                                        <td>Head Office</td>
                                        <td>02/12/2023</td>
                                        <td>13172</td>
                                        <td>Retired On 31/12/2023 </td>
                                        <td><a><i class="fa fa-eye" aria-hidden="true"></i></a></td>




                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Swaroop Singh Rajput(E2163)</td>
                                        <td>Retirement </td>
                                        <td>31/12/2023</td>
                                        <td>Bhopal- Circle Office</td>
                                        <td>06/12/2023</td>
                                        <td>13173</td>
                                        <td>Retired On 31/12/2023 </td>
                                        <td><a><i class="fa fa-eye" aria-hidden="true"></i></a></td>


                                    </tr>

                                </table>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="ContentBody_dcp">
                        <legend>Description / विवरण</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="main-ul">
                                    <li><strong>Office Type (Dropdown)</strong>
                                        <ul>
                                            <li>User will be able to select the  <strong>Office Type</strong> from the dropdown which will automatically reflect <strong>Office Type Master.</strong></li>
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
        </div>
    </div>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

