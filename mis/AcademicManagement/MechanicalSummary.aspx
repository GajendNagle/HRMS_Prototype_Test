<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="MechanicalSummary.aspx.cs" Inherits="mis_AcademicManagement_MechanicalSummary" %>

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

        .media-content {
            flex-basis: auto;
            flex-grow: 1;
            flex-shrink: 1;
            text-align: inherit;
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

        /*  .column.is-2, .column.is-2-tablet {
            flex: none;
            width: 16.66666674%;
        }*/

        .column {
            display: block;
            flex-basis: 0;
            flex-grow: 1;
            flex-shrink: 1;
            padding: .75rem;
            border-top-left-radius: 90px;
            border-bottom-right-radius: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="card card-border-primary radius-defalt">
        <div class="card-header bg-light">
            <div class="row">
                <div class="col-lg-12">

                    <h1 class="text-center text-primary">Mechanical Summary</h1>

                    <div class="p-2 mb-0 content is-medium customContent has-text-left">
                        <div class="Overlay">
                            <div class="container mt-2">
                                <div class="columns is-tablet is-multiline">
                                    <div class="column is-6 has-text-white has-text-left">

                                        <div class="p-2 mb-0 customContent">
                                            <p>Mechanical Engineering is actually a “Physics at work”. Whatever you want to do in this physical world, you can make it with this knowledge. Farmer’s ploughing machines, medical devices, turbo engines, power generators, Camera zooming setup in phones and name any machines, those all are&nbsp; evolved out of a Mechanical engineering part of someone’s brain. If you love to play with machines and gears, enroll!</p>
                                            <p><strong>What would you do in daily life?</strong></p>

                                            <ul>
                                                <li>
                                                    <p>Analyze problems to see how mechanical and thermal devices might help solve the problem.</p>
                                                </li>
                                                <li>
                                                    <p>Design machines and build products</p>
                                                </li>
                                                <li>
                                                    <p>Analyze the test results and change the design as needed</p>
                                                </li>
                                                <li>
                                                    <p>Oversee the manufacturing process for the device</p>
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
                                <p class="is-size-6 has-text-weight-light fs-5 text-nowrap ms-2"><b>Stream</b> :1) Class 12th</p>
                                <span class="has-text-weight-light fs-5 text-nowrap" style="margin-left:74px">2) Diploma in Mechnanical Engineering After Class 10</span>
                            </div>
                            <p class="pl-4 is-size-5 has-text-weight-light fs-5">
                                <b>Graduation</b> : B.E /B.Tech in Mechanical Engineering<br />

                            </p>

                            <div class="column is-2">
                                <p class="is-size-6 has-text-weight-light fs-5 text-nowrap"><b>After Graduation</b> : 1) Certification in Solid works/AUTOCAD</p>
                                <span class="is-size-6 has-text-weight-light fs-5" style="margin-left: 157px">2) M.E /M.Tech in Corrosion Science/Solid Mechanics/ Cryogenic Engineering</span>
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

