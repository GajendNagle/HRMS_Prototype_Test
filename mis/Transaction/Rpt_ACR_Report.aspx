<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_ACR_Report.aspx.cs" Inherits="mis_Transaction_Rpt_ACR_Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
    <style>
        @media print {
            /* Show modal content in full page */
            .modal-dialog {
                width: 200%;
                height: auto;
                margin: 0;
                padding: 0;
            }

            .modal-content {
                height: 200%;
                border: none;
                box-shadow: none;
            }

            .modal-body {
                width: 210%;
                height: auto;
                overflow: visible !important;
                zoom: 90%;
            }
            /* Hide unnecessary elements */
            body.modal-open {
                visibility: hidden;
            }


                body.modal-open .modal .modal-header,
                body.modal-open .modal .modal-body {
                    visibility: visible;
                }

            .modal-footer {
                display: none;
            }

            .modal-header {
                display: none;
            }
        }

        @media (max-width: 767px) {
            .fixed-layout .topbar {
                position: relative !important;
            }
        }

        .datepicker-switch:hover,
        .next:hover,
        .prev {
            background-color: #005b5c !important;
        }

        #DivFillRport {
            display: none;
        }

        .navbar-brand {
            margin-right: auto !important;
        }

        #workdescription {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor "><a href="#">
                <img src="../../img/ACRIcon.png" height="40" width="40" />Annual Confidential Report(ACR)</a></h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>

                    <li class="breadcrumb-item active">Annual Confidential Report(ACR)</li>

                </ul>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body ">
            <nav class="navbar navbar-expand-lg topbar">
                <div class="container-fluid p-0">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">

                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                            <li class="nav-item ">
                                <a class="nav-link text-white " href="#" role="button"><b><span style="font-size: 17px; margin-top: 8px;" class="fa fa-home" aria-hidden="true"></span></b></a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link text-white " href="#" role="button"><b class="font-16 font-bold"><span style="font-size: 22px">&#149;</span>&nbsp;Annual Confidential Report</b></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white " href="Rpt_ACR_ReportAll.aspx"><b class="font-16 font-bold"><span style="font-size: 22px">&#149;</span>&nbsp;ACR Report Detail</b></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <br />
            <br />
            <fieldset>
                <legend>वार्षिक गोपनीय रिपोर्ट (एसीआर)
                </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">

                            <label>Employee ID<span style="color: red">*</span></label>
                            <input name="txtTotalEnrolledCrrnPost" id="txtEmployeeid" type="text" class="form-control" autocomplete="off" placeholder="Enter Employee Unique ID" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <button id="Button1" type="button" class="btn btn-info btn-rounded" onclick="Hideshow('DivFillRport');myFunction();">Search</button>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset id="DivFillRport">
                <legend>Annual Confidential Report Details</legend>

                <div class="row align-items-start">
                    <script>
                        function myFunction() {
                            document.getElementById("txtEmpName").value = "Shri Rajesh Tiwari";
                            document.getElementById("txtUniqueID").value = "ED1224";
                            document.getElementById("txtDesignation").value = "Managing Director";
                        }
                        document.addEventListener('DOMContentLoaded', function () {
                            document.getElementById("txtEmpName").value = ""
                            document.getElementById("txtUniqueID").value = ""
                            document.getElementById("txtDesignation").value = ""
                        });
                    </script>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Employee ID<span style="color: red">*</span></label>
                            <input name="txtUniqueID" type="text" id="txtUniqueID" class="form-control" readonly autocomplete="off" placeholder="Enter Employee Unique ID" value="AR4890" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Employee Name<span style="color: red">*</span></label>
                            <input name="txtEmpName" type="text" id="txtEmpName" class="form-control" readonly autocomplete="off" placeholder="Enter Employee Name" value="Aman Patidar" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Designation<span style="color: red">*</span></label>
                            <input name="txtDesignation" type="text" id="txtDesignation" class="form-control" readonly autocomplete="off" placeholder="Enter Designation" value="Teacher (UDT)" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Month/Year<span style="color: red">*</span></label>

                            <input type="text" placeholder="MM YYYY" class="form-control monthpicker " />
                        </div>
                    </div>

                </div>
                <div class="row align-items-start">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Grade<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option>A+</option>
                                <option>A</option>
                                <option>B</option>
                                <option>C</option>
                                <option>D</option>

                            </select>

                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label>Attach Supporting Document</label>
                            <input type="file" name="name" class="form-control" value="" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Remark</label>
                            <%--                            <textarea rows="1"  class="form-control" placeholder="Enter Remark"></textarea>--%>
                            <textarea class="form-control" id="workdescription" rows="1" placeholder="Enter Remark" oninput="autoResize(this)"></textarea>
                        </div>
                    </div>
                </div>
                <div class="row  justify-content-center">
                    <div class="col-md-4">
                        <div class="form-group text-center">
                            <button type="button" class=" btn Alert-Confirmation btn-success btn-rounded ">Save</button>
                            <a href="Rpt_ACR_Report.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.monthpicker').datepicker({
                format: "MM yyyy", // Set the format to display month and year
                startView: "months", // Show only months initially
                minViewMode: "months", // Set the minimum view mode to months
                autoclose: true,

            });
        });

        function Hideshow(ElementID) {

            var x = document.getElementById(ElementID);
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }

        // JavaScript function to automatically resize the textarea
        function autoResize(textarea) {
            textarea.style.height = 'auto'; // Reset height to auto
            textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
        }
    </script>
</asp:Content>

