<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="IndustrialSummary.aspx.cs" Inherits="mis_AcademicManagement_IndustrialSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link href="../dist/dashboard/hrmsdashboard.css" rel="stylesheet" />

    <style>
        .radius-defalt {
            border-radius: var(--vz-card-border-radius) !important;
        }

        .StreamImage {
            width: 110px !important;
            height: 110px !important;
            margin: 0 auto;
        }

        .has-text-left {
            text-align: left !important;
        }

        .title.is-5 {
            font-size: 1.25rem;
        }

        .customContent, .customContent p, .customContent span {
            font-family: "Muli", sans-serif !important;
            font-size: 16px !important;
        }

        .PathView .dark {
            background: #3fa8cc;
            color: #fff !important;
        }


        .column {
            display: block;
            flex-basis: 0;
            flex-grow: 1;
            flex-shrink: 1;
            padding: .75rem;
            border-top-left-radius:90px;
            border-bottom-right-radius:80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="card card-border-primary radius-defalt">
        <div class="card-header bg-light">
            <div class="row">
                <div class="col-lg-12">

                    <h1 class="text-center text-primary"><u>Industrial Summary</u></h1>
                    <div class="p-1 mb-0 content is-medium customContent has-text-left">
                        <div class="Overlay">
                            <div class="container mt-2">
                                <div class="columns is-tablet is-multiline">
                                    <div class="column is-6 has-text-white has-text-left">

                                        <div class="p-2 mb-2 customContent">
                                            <p class="text-justify">
                                                Industrial engineering focuses on making devices more efficient by integrating, data, machines, workers, and energy for optimal function. They find ways to improve efficiency in manufacturing, transportation, health care, storage, and distribution. And this is done in turn to save more time, resources, manpower, money and energy.&nbsp;&nbsp;<br>
                                            </p>

                                            <p><strong>What do you do on a daily basis?&nbsp;</strong></p>
                                            <ul>
                                                <li>
                                                    <p>Estimate production cost and then review the process.</p>
                                                </li>
                                                <li>
                                                    <p>Develop production and design standards by coordinating with management and user personnel.&nbsp;&nbsp;</p>
                                                </li>
                                                <li>
                                                    <p>Illustrate maximum efficiency for the project using drafting tools and computer software.</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="card-body mt-3">
            <div class="container pb-2 has-text-left">
                <div>

                    <div class="columns PathView" style="min-height: 95px;">
                        <div class="column hasArrow is-3 dark">
                            <div class="column is-2">
                                <p class="is-size-6 has-text-weight-light fs-4 text-nowrap ms-3"><b>Stream</b> : Class 12th</p>
                            </div>
                            <p class="pl-4 is-size-5 has-text-weight-light fs-5">
                                <b>Graduation</b> : B.E/B.Tech in Industrial Engineering/ Production Engineering/ Production<br />
                                <span style="margin-left: 105px;">and Industrial Engineering/ Manufacturing Engineering/ Mechanical Engineering</span>
                            </p>

                            <div class="column is-2">
                                <p class="is-size-6 has-text-weight-light fs-5"><b>After Graduation</b> :  M.E/M.Tech in Industrial Engineering/ Industrial Engineering and Management</p>

                            </div>
                        </div>

                        <!---->
                        <!---->
                    </div>
                </div>

                <div class="guidanceContent"></div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

