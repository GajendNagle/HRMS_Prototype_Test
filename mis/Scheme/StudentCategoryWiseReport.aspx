﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentCategoryWiseReport.aspx.cs" Inherits="mis_Scheme_StudentCategoryWiseReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
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
                            <a href="#SchemeReports" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme</span></a>
                        </li>

                        <li class="breadcrumb-item"><span>Student Category Wise Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xl-10 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">छात्र श्रेणी वार रिपोर्ट</div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                Student Category Wise Report/
छात्र श्रेणी वार रिपोर्ट
                            </marquee>
                        </div>
                    </div>
                </div>
                <div class="col-xl-2 col-md-12 text-end" id="BtnBack" style="display: none;"><a class="btn btn-primary btn-label waves-effect waves-light rounded-pill" onclick="Backclickfn()"><i class="ri-arrow-go-back-line label-icon align-middle fs-14 me-1"></i>BACK</a> </div>
            </div>
        </div>
        <div class="card-body">



            <fieldset>
                <legend>Student Category Wise Report/
छात्र श्रेणी वार रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Financial Year<br />
                                वित्तीय वर्ष चुनें<span style="color: red">*</span></label>
                            <input maxlength="4" id="Year" autocomplete="off" class="form-control datepickerYear" placeholder="2024-2025" type="text" data-val="true" value="2024-2025" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Category
                                <br />
                                श्रेणी चुनें <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>Select</option>
                                <option>ST</option>
                                <option>SC</option>
                                <option>OBC</option>
                                <option>General</option>
                            </select>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" onclick="div()" class="btn w-lg btn-success btn-border">Search</button>
                            <a href="DepartmentWiseSchemeReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="Show" style="display: none;">
                <legend>Scheme Details / योजना विवरण</legend>
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
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table id="Table1" class="table table-bordered text-center">
                                <thead>
                                    <tr class="nowrap">
                                        <th>Sr.No<br />
                                            सं.क्र.</th>
                                        <th>Financial Year<br />
                                            वित्तीय वर्ष</th>
                                        <th>District<br />
                                            जिले का नाम</th>
                                        <th>Category Name<br />
                                            श्रेणी का नाम </th>
                                        <th>Scheme Name<br />
                                            योजना का नाम</th>
                                        <th>Sankul<br />
                                            संकुल</th>
                                        <th>School Name<br />
                                            स्कूल का नाम</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>2024</td>
                                        <td>Bhopal</td>
                                        <td>ST</td>
                                        <td>Post Matric Scholarship Scheme</td>
                                        <td>MAHARANA PRATAP, JAHANGIRABAD, BHOPAL,
PRINCIPAL, GOVT. HSS/23320400117</td>
                                        <td>GOVT HSS Sironj/23340603802</td>
                                    </tr>
                                                                        <tr>
                                        <td>2</td>
                                        <td>2024</td>
                                        <td>Bhopal</td>
                                        <td>SC</td>
                                        <td>Post Matric Scholarship Scheme</td>
                                        <td>MAHARANA PRATAP, JAHANGIRABAD, BHOPAL,
PRINCIPAL, GOVT. HSS/23320400117</td>
                                        <td>GOVT HSS Sironj/23340603802</td>
                                    </tr>
                                                                        <tr>
                                        <td>3</td>
                                        <td>2024</td>
                                        <td>Bhopal</td>
                                        <td>OBC</td>
                                        <td> Vidyasiri Scheme</td>
                                        <td>MAHARANA PRATAP, JAHANGIRABAD, BHOPAL,
PRINCIPAL, GOVT. HSS/23320400117</td>
                                        <td>GOVT HSS Sironj/23340603802</td>
                                    </tr>
                                                                        <tr>
                                        <td>4</td>
                                        <td>2024</td>
                                        <td>Bhopal</td>
                                        <td>General</td>
                                        <td>Vikramaditya Yojna</td>
                                        <td>MAHARANA PRATAP, JAHANGIRABAD, BHOPAL,
PRINCIPAL, GOVT. HSS/23320400117</td>
                                        <td>GOVT HSS Sironj/23340603802</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>



            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function div() {

            document.getElementById("Show").style.display = "";

        }
    </script>
    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true,
            orientation: 'bottom'
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });

        // Function to set default value to current financial year
        function setDefaultFinancialYear() {
            var currentDate = new Date();
            var currentYear = currentDate.getFullYear();
            var nextYear = currentYear + 1;
            var financialYear = currentYear + '-' + (nextYear % 100);
            $(".datepickerYear").val(financialYear);
        }

        // Set default value to current financial year on page load
        $(document).ready(function () {
            setDefaultFinancialYear();
        });


    </script>
</asp:Content>
