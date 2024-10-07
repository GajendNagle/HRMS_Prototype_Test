<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ElectricalSummary.aspx.cs" Inherits="mis_AcademicManagement_ElectricalSummary" %>

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
                    <h1 class="text-center text-primary"><u>Electrical Summary</u></h1>
                    <div class="p-0 mb-0 content is-medium customContent has-text-left">
                        <div class="Overlay">
                            <div class="container">
                                <div class="columns is-tablet is-multiline">
                                    <div class="column is-6 has-text-white has-text-left">

                                        <div class="p-2 mb-0 customContent">
                                            <p class="text-justify">Addressing the power needs of India is one of the biggest tasks. Electrical updates for us are shifting to solar technology but it’s not economical for all yet. There is a good opportunity to play a role of converting India’s power thirst from Coal and nuclear sources to Renewable sources like the Sun. Electrical engineers design, develop, and test electrical devices and equipment, including communications systems, power generators, motors and navigation systems, and electrical systems for automobiles and aircraft. They also oversee the manufacture of these devices, systems, and equipment. Next Gen Electric Motors and battery inventions are going to revolutionize the fast moving world! Want to join?</p>

                                            <p><strong>What would you do in daily life?</strong></p>

                                            
                                            <ul>
                                                <li>
                                                    <p>Designing, maintaining, implementing, or improving electrical instruments, facilities, components, equipment products, or systems for industrial, commercial or domestic purposes.</p>
                                                </li>
                                                <li>
                                                    <p>Ensuring that installation and operations conform to standards and customer requirements by preparing electrical systems specifications, technical drawings or topographical maps.</p>
                                                </li>
                                                <li>
                                                    <p>Build power generation devices.</p>
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
        <div class="card-body mt-2">
            <div class="container pb-2 has-text-left">
                <div>

                    <div class="columns PathView" style="min-height: 95px;">
                        <div class="column hasArrow is-3 dark">
                            <div class="column is-2">
                                <p class="is-size-6 has-text-weight-light fs-5 text-nowrap ms-3"><b>Stream</b> :1) Class 12th</p>
                                <span class="has-text-weight-light fs-5 text-nowrap" style="margin-left:82px">2) Electrical and Electronics Engineering after Class 10th</span>
                            </div>
                            <p class="pl-4 is-size-5 has-text-weight-light fs-5">
                                <b>Graduation</b> :  B.E /B.Tech in Electrical and Electronics Engineering<br />

                            </p>

                            <div class="column is-2">
                                <p class="is-size-6 has-text-weight-light fs-5 text-nowrap"><b>After Graduation</b> :  M.E /M.Tech in Power and Energy System/Control Systems/Industrial Drives and Control</p>
                               
                            </div>

                           <%-- <div class="column is-2">
                                <p class="is-size-6 has-text-weight-light fs-4 text-nowrap"><b>Stream</b> :  Diploma in Electrical and Electronics Engineering after Class 10</p>
                            </div>--%>
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

