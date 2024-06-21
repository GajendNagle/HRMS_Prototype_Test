<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SSDDO_Scholarship.aspx.cs" Inherits="mis_Scheme_SSDDO_Scholarship" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        /* .accordion_container {
            width: 389px;
        }*/

        .accordion_head {
            background-color: #1b5b5c;
            color: white;
            cursor: pointer;
            font-family: arial;
            font-size: 14px;
            margin: 0 0 1px 0;
            padding: 7px 11px;
            font-weight: bold;
            width: auto;
        }

        /*.accordion_body {
            background: lightgray;
            width: 900px;
        }*/

        .accordion_body p {
            padding: 8px 5px;
            margin: 0px;
            font-weight: bold;
        }

        .plusminus {
            float: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <script src="js/accordion.js" type="text/javascript"></script>
    <link rel="STYLESHEET" href="css/style.css" type="text/css">
    <div id="dv_Masters_LocationMasters" runat="server">
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
                                <a href="#SchemeManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme Management</span></a>
                            </li>
                            <li class="breadcrumb-item">Scholarship Dashboard</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="card card-border-primary">
            <div class="card-header">
                <div class="row align-items-end">
                    <div class="col-lg-6">
                        <h4 class="card-title">Scholarship Dashboard /
                            छात्रवृत्ति डैशबोर्ड
                        </h4>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <span id="ContentBody_lblMsg"></span>
                <fieldset>
                    <legend>Scholarship Dashboard </legend>

                    <div class="accordion_container">
                        <div class="accordion_head">
                            Home<span class="plusminus">+</span>

                        </div>
                        <div class="accordion_body" style="display: none;">
                            <p><a class="custom-btn btn-4" href="Bill_Generation.aspx">Bills</a>  </p>
                        </div>
                        <div class="accordion_head">
                            Proposal
                            <span class="plusminus">+</span>
                        </div>
                        <div class="accordion_body" style="display: none;">
                            <p><a class="custom-btn btn-4" href="LockAndSanction.aspx">Lock And Sanction Proposals</a></p>
                        </div>
                        <div class="accordion_head">
                            Scheme<span class="plusminus">+</span>
                        </div>
                        <div class="accordion_body" style="display: none;">
                            <p>Testing </p>
                        </div>
                        <div class="accordion_head">
                            Bills<span class="plusminus">+</span>
                        </div>
                        <div class="accordion_body" style="display: none;">
                            <p>1. <a class="custom-btn btn-4" href="GeneratePaymentSanctionBill.aspx">Proposal List For Bill Generation </a></p>
                            <p>2. <a class="custom-btn btn-4" href="Bill_Generation.aspx">School Wise Bill For Students Not Paid Via DBT</a>  </p>
                            <p>3. <a class="custom-btn btn-4" href="Bill_Generation.aspx">.List Of ProPosals Whose voucher no entry is pending</a></p>
                        </div>
                        <div class="accordion_head">
                            M1 Click<span class="plusminus">+</span>

                        </div>
                        <div class="accordion_body" style="display: none;">
                            <p><a class="custom-btn btn-4" href="Paid_Scholarship.aspx">1. List Of Student Paid Scholarship</a>  </p>
                        </div>
                        <div class="accordion_head">
                            Appln Mgmt<span class="plusminus">+</span>

                        </div>
                        <div class="accordion_body" style="display: none;">
                            <p>Third Accordian Body, it will have description</p>
                        </div>
                        <div class="accordion_head">
                            Reports<span class="plusminus">+</span>

                        </div>
                        <div class="accordion_body" style="display: none;">
                            <p><a class="custom-btn btn-4" href="DDOWiseSummaryOfEnrollment.aspx">1. DDO Wise Summary of Enrollments in Schools</a></p>

                            <p><a class="custom-btn btn-4" href="SchoolWiseSummaryOfEnrollment.aspx">2. School wise summary of Enrollments</a></p>

                            <p><a class="custom-btn btn-4" href="SankulwisesamagrascholershipstudentStatusUsingDiseCode.aspx">3. Enrollments Summary for All Schools with a DDO</a></p>

                            <p><a class="custom-btn btn-4" href="RPT_DistrictwiseAcceptedEnrollments.aspx">4.District wise Enrollments Acceptance</a></p>

                            <p><a class="custom-btn btn-4" href="Rpt_DepartMentSchemewiseApplication.aspx">5.Scheme wise Brief report </a></p>
                        </div>
                        <%--<div class="accordion_body" style="display: none;">
                            <p><a class="custom-btn btn-4" href="Paid_Scholarship.aspx">5. District and scheme wise scholarship brief report</a></p>
                        </div>
                        <div class="accordion_body" style="display: none;">
                            <p><a class="custom-btn btn-4" href="Paid_Scholarship.aspx">6. Brief report of District wise scholarship Applications </a></p>
                        </div>--%>


                        <div class="accordion_head">
                            Caste certificate verification<span class="plusminus">+</span>

                        </div>
                        <div class="accordion_body" style="display: none;">
                            <p>Third Accordian Body, it will have description</p>
                        </div>


                    </div>
                </fieldset>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        $(document).ready(function () {
            //toggle the component with class accordion_body
            $(".accordion_head").click(function () {
                if ($('.accordion_body').is(':visible')) {
                    $(".accordion_body").slideUp(300);
                    $(".plusminus").text('+');
                }
                if ($(this).next(".accordion_body").is(':visible')) {
                    $(this).next(".accordion_body").slideUp(300);
                    $(this).children(".plusminus").text('+');
                } else {
                    $(this).next(".accordion_body").slideDown(300);
                    $(this).children(".plusminus").text('-');
                }
            });
        });
    </script>
</asp:Content>

