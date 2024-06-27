<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AdminDashboard.aspx.cs" Inherits="mis_Dashboard_AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <link href="~\css\dashboard.css" rel="stylesheet" />
    <style>
        /* #upcoming-event-list .card {
        margin: unset 1.5rem inherit inherit;
    }*/
        #DvcircularOrdersList .card, #upcoming-event-list .card {
            border-radius: 14px;
        }

        .offcanvas.offcanvas-custom.show .simplebar-content-wrapper {
            visibility: visible;
        }

        .offcanvas.offcanvas-custom .simplebar-content-wrapper {
            visibility: hidden;
        }

        .offcanvas-custom {
            position: absolute;
            top: 0;
            left: 0;
            border-right: var(--vz-gray-600) solid 1px;
            border-radius: var(--vz-border-radius);
            padding-bottom: 1rem;
            /* Adjust width as needed */
            height: 100%;
            z-index: 100;
            visibility: hidden;
            background-color: var(--vz-body-bg);
            transition: visibility 0.3s ease-in-out, transform 0.3s ease-in-out;
            transform: translateX(-100%);
        }
    </style>
    <style>
        .btn-check:focus + .btn-secondary, .btn-secondary:focus {
            color: var(--vz-btn-active-color);
            background-color: var(--vz-btn-active-bg);
            border-color: var(--vz-btn-border-color);
            box-shadow: var(--vz-btn-focus-box-shadow);
        }

        .top-heading i {
            display: flex;
            align-items: center;
            font-size: 10px;
            color: #fff;
        }

        .top-heading h3 {
            margin: 0;
            font-family: var(--vz-font-sans-serif) !important;
            font-size: 16px;
            color: #fff;
            padding: 0 11px;
            border-radius: 120px;
        }

        .top-heading {
            position: relative;
            display: flex;
            /*background-color: var(--vz-primary);*/
            background-image: url(../assets/images/svg/CardHeader.svg);
            justify-content: center;
            border-radius: 120px;
            box-shadow: 8px 0px 12px 7px rgba(100, 100, 111, 0.2);
            padding: 8px 16px;
            margin: 1.5rem 0;
        }

        .card-header {
            padding-left: 1rem;
            padding-right: 1rem;
            background-image: url(../assets/images/svg/CardHeader.svg);
        }

        .crm-widget .card-header-border {
            border-top: 0.5rem solid #321e46;
            border-radius: 30px 30px 0 0 !important;
            height: 30px;
        }

        .card-footer-border {
            border-bottom: 0.5rem solid #321e46;
            border-radius: 0 0 30px 30px !important;
            height: 30px;
        }

        .card-header > * {
            color: var(--vz-gray-200);
        }

        /* Custom Scrollbar Styles */
        ::-webkit-scrollbar {
            width: 12px;
        }

        ::-webkit-scrollbar-track {
            border-radius: 10px;
        }

        ::-webkit-scrollbar-thumb {
            border-radius: 10px;
            background: linear-gradient(45deg,transparent, var(--vz-primary));
            box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
        }

            ::-webkit-scrollbar-thumb:hover {
                background: linear-gradient(75deg,transparent, var(--vz-primary));
                background: linear-gradient(75deg,transparent, var(--vz-primary));
            }


        /*.crm-widget {
            display: block;
            top: 0px;
            position: relative;
        &:hover{
                transition: all 0.2s ease-out;
                box-shadow: none;
                top: -6px;
                background-color: white;
            }
   &:before

        {
            content: "";
            position: absolute;
            z-index: -1;
            top: -16px;
            right: -16px;
            background: #00838d;
            height: 32px;
            width: 32px;
            border-radius: 32px;
            transform: scale(2);
            transform-origin: 50% 50%;
            transition: transform 0.15s ease-out;
        }

        &:hover:before {
            transform: scale(2.15);
        }
   }

       .col:nth-child(2n) .crm-widget .ag-courses-item_bg {
            background-color: #3ecd5e;
        }

        .col:nth-child(3n) .crm-widget .ag-courses-item_bg {
            background-color: #e44002;
        }

        .col:nth-child(4n) .crm-widget .ag-courses-item_bg {
            background-color: #ff6888;
        }

        .col:nth-child(5n) .crm-widget .ag-courses-item_bg {
            background-color: #cd3e94;
        }

        .col:nth-child(6n) .crm-widget .ag-courses-item_bg {
            background-color: #4c49ea;
        }
*/

        .crm-widget .text-muted {
            margin-bottom: 0rem;
            font-weight: bold;
            opacity: 1 !important;
            color: var(--vz-primary) !important;
        }

        .crm-widget .card-body {
            margin: -.3rem 0 -1rem 0;
            padding: 0 .5rem;
            height: 100%;
            display: flex;
            flex-flow: column;
            justify-content: space-between
        }

        .card {
            box-shadow: 8px 0px 12px 7px rgba(100, 100, 111, 0.2);
            border-radius: 27px;
            overflow: hidden;
            border: 1px, var(--vz-gray-600) solid;
            --vz-card-cap-padding-y: 0.5rem;
        }

        #Chart_Payroll .apexcharts-legend, #Chart_Transfer .apexcharts-legend {
            display: flex;
            flex-direction: column; /* Arrange legend items in a column */
            align-items: flex-start; /* Align legend items to the left */
        }

        .apexcharts-text tspan {
            font-family: var(--vz-font-sans-serif) !important;
            font-weight: bolder;
            font-size: 14px;
            fill: var(--vz-body-color);
        }

        .apexcharts-legend-text {
            color: #000 !important;
            font-family: var(--vz-font-sans-serif) !important;
            font-size: 13px !important;
            font-weight: 800 !important
        }

        .choices__inner {
            border-color: var(--vz-primary) !important;
        }

        .fc .fc-toolbar.fc-header-toolbar {
            margin: 0px
        }

        .fc .fc-daygrid-day-top {
            justify-content: center;
        }

        .fc .fc-toolbar h2 {
            font-size: 1.75em
        }

        .fc th, .fc .fc-button {
            font-size: 17px;
            font-weight: 900;
        }

        .fc .fc-daygrid-day-number {
            font-size: 22px;
            width: 35px;
            height: 35px;
            font-weight: 900;
        }



        #tooltip {
            font-weight: 700;
            position: fixed;
            text-align: left;
            font-size: 20px;
            padding: 10px;
            background-color: #f0f0f0;
            color: #333;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            z-index: 9999;
            display: none;
        }

        .highcharts-xaxis-labels > *, .highcharts-breadcrumbs-button > text, .highcharts-drilldown-data-label > text {
            fill: var(--vz-body-color) !important;
            font-weight: bold !important;
            text-decoration: none !important;
        }


        /*   .highcharts-label tspan, .highcharts-xaxis-labels text, .highcharts-breadcrumbs-button text {
            fill: var(--vz-body-color) !important;
        }

        .highcharts-label text, .highcharts-xaxis-labels text {
            text-decoration: none !important;
        }*/


        /* #Chart_Scheme g text, #SchemeApplicants_Charts g text {
           
            fill: var(--vz-body-color) !important;
            font-size: 14px !important;
            flex-wrap: wrap;
            font-weight: bold;
        }*/
        .row {
            margin-bottom: 0rem !important;
        }


        .st0 {
            fill-rule: evenodd;
            clip-rule: evenodd;
            fill: #57B781;
        }

            .st0:hover {
                fill-rule: evenodd;
                clip-rule: evenodd;
                fill: darkgreen;
            }

        .st1 {
            fill-rule: evenodd;
            clip-rule: evenodd;
            fill: #D6DF27;
        }

            .st1:hover {
                fill-rule: evenodd;
                clip-rule: evenodd;
                fill: darkgreen;
            }

        .st2 {
            fill-rule: evenodd;
            clip-rule: evenodd;
            fill: #78B043;
        }

            .st2:hover {
                fill-rule: evenodd;
                clip-rule: evenodd;
                fill: darkgreen;
            }

        .st3 {
            fill-rule: evenodd;
            clip-rule: evenodd;
            fill: #A8D098;
        }

            .st3:hover {
                fill-rule: evenodd;
                clip-rule: evenodd;
                fill: darkgreen;
            }

        .st4 {
            fill-rule: evenodd;
            clip-rule: evenodd;
            fill: #F0AA1E;
        }

            .st4:hover {
                fill-rule: evenodd;
                clip-rule: evenodd;
                fill: darkgreen;
            }

        .st5 {
            fill-rule: evenodd;
            clip-rule: evenodd;
            fill: #FDDDA4;
        }

            .st5:hover {
                fill-rule: evenodd;
                clip-rule: evenodd;
                fill: darkgreen;
            }

        .st6 {
            fill-rule: evenodd;
            clip-rule: evenodd;
            fill: #C1AD30;
        }

            .st6:hover {
                fill-rule: evenodd;
                clip-rule: evenodd;
                fill: darkgreen;
            }


        .st7 {
            fill-rule: evenodd;
            clip-rule: evenodd;
            fill: #EC6C76;
        }

            .st7:hover {
                fill-rule: evenodd;
                clip-rule: evenodd;
                fill: darkgreen;
            }

        .st8 {
            fill-rule: evenodd;
            clip-rule: evenodd;
            fill: #C4A4CD;
        }

            .st8:hover {
                fill-rule: evenodd;
                clip-rule: evenodd;
                fill: darkgreen;
            }

        .st9 {
            fill-rule: evenodd;
            clip-rule: evenodd;
            fill: #79B242;
        }

            .st9:hover {
                fill-rule: evenodd;
                clip-rule: evenodd;
                fill: darkgreen;
            }

        .st10 {
            fill-rule: evenodd;
            clip-rule: evenodd;
            fill: #E16973;
        }

            .st10:hover {
                fill-rule: evenodd;
                clip-rule: evenodd;
                fill: darkgreen;
            }

        .st11 {
            fill-rule: evenodd;
            clip-rule: evenodd;
            fill: none;
            stroke: #FFFFFF;
            stroke-width: 1.9998px;
            stroke-linejoin: round;
            stroke-miterlimit: 2.6131;
        }

        .st12 {
            fill-rule: evenodd;
            clip-rule: evenodd;
            fill: none;
        }

        .st13 {
            font-family: 'Constantia';
        }

        .st14 {
            font-size: 10.0001px;
        }

        .st15 {
            font-size: 7.9441px;
        }

        .st16 {
            fill-rule: evenodd;
            clip-rule: evenodd;
            fill: #FFFFFF;
            stroke: #FFFFFF;
            stroke-width: 0.5px;
            stroke-miterlimit: 2.6131;
        }

        .st17 {
            fill-rule: evenodd;
            clip-rule: evenodd;
            stroke: #FFFFFF;
            stroke-width: 0.5px;
            stroke-miterlimit: 2.6131;
        }

        .st18 {
            fill-rule: evenodd;
            clip-rule: evenodd;
            fill: #FF0000;
            stroke: #FFFFFF;
            stroke-width: 0.5px;
            stroke-miterlimit: 2.6131;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row">
        <div class="col-md-12 d-flex justify-content-center">
            <div class="top-heading">
                <i class="fa fa-circle" aria-hidden="true"></i>
                <h3>Dashboard As Per Academic Year 2024-25</h3>
                <i class="fa fa-circle" aria-hidden="true"></i>
            </div>
        </div>
    </div>
    <%--    <div class="row">
        <div class="col-xl-12">
            <h4 class="">Status as on Year : 2024</h4>
        </div>
    </div>
    --%>


    <div class="row row-cols-xl-5 row-cols-md-3 row-cols-1 justify-content-center">
        <div class="col ">

            <div class="card crm-widget card-height-100">
                <div class="card-header-border"></div>
                <div class="card-body ">
                    <h5 class=" text-muted item-bottom  fs-21">Registered Offices</h5>
                    <div>

                        <span class="text-muted fs-14 align-middle">(in No's)</span>
                        <h2 class="mb-0 cfs-22"><i class="ri-building-line display-6 text-muted cfs-22"></i><span class="counter-value" data-target="911">0</span></h2>
                    </div>
                    <%--<div class="d-flex item-bottom align-items-center">
                        <div class="flex-shrink-0">
                           
                        </div>
                        <div class="flex-grow-1 ms-3">
                           
                        </div>
                    </div>--%>
                </div>
                <div class="card-footer-border"></div>
                <!-- end card body -->
            </div>
            <!-- end card -->
        </div>
        <!-- end col -->
        <div class="col">
            <div class="card crm-widget card-height-100">
                <div class="card-header-border"></div>

                <div class="card-body">
                    <h5 class="text-muted item-bottom  fs-21">Registered Institutes </h5>
                    <div>
                        <span class="text-muted fs-14 align-middle">(in No's)</span>
                        <h2 class="mb-0 cfs-22"><i class="ri-building-4-line display-6 text-muted cfs-22"></i><span class="counter-value" data-target="1090">0</span></h2>
                        <%--  <div class="d-flex item-bottom align-items-center">
                        <div class="flex-shrink-0">
                            
                        </div>
                        <div class="flex-grow-1 ms-3">
                            
                        </div>
                    </div>--%>
                    </div>
                </div>
                <div class="card-footer-border"></div>
                <!-- end card body -->
            </div>
            <!-- end card -->
        </div>
        <!-- end col -->
        <div class="col">
            <div class="card crm-widget card-height-100">
                <div class="card-header-border"></div>

                <div class="card-body">
                    <h5 class="text-muted item-bottom  fs-21">Registered Schools</h5>
                    <div>
                        <span class="text-muted fs-14  align-middle">(in No's)</span>
                        <h2 class="mb-0 cfs-22"><i class="ri-community-line display-6 text-muted cfs-22"></i><span class="counter-value" data-target="122938">0</span></h2>
                        <%--<div class="d-flex align-items-center">
                        <div class="flex-shrink-0">
                            
                        </div>
                        <div class="flex-grow-1 ms-3">
                           
                        </div>
                    </div>--%>
                    </div>
                </div>
                <div class="card-footer-border"></div>
                <!-- end card body -->
            </div>
            <!-- end card -->
        </div>
        <!-- end col -->
        <div class="col">
            <div class="card crm-widget card-height-100">
                <div class="card-header-border"></div>
                <div class="card-body">
                    <h5 class="text-muted item-bottom  fs-21">Registered Sankuls </h5>
                    <div>
                        <span class="text-muted fs-14  align-middle">(in No's)</span>
                        <h2 class="mb-0 cfs-22"><i class="ri-community-line display-6 text-muted cfs-22"></i><span class="counter-value" data-target="18088">0</span></h2>
                        <%-- <div class="d-flex align-items-center">
                        <div class="flex-shrink-0">
                           
                        </div>
                        <div class="flex-grow-1 ms-3">
                           
                        </div>
                    </div>--%>
                    </div>
                </div>
                <div class="card-footer-border"></div>
                <!-- end card body -->
            </div>
            <!-- end card -->
        </div>
        <!-- end col -->
        <div class="col">
            <div class="card crm-widget card-height-100">
                <div class="card-header-border"></div>
                <div class="card-body ">

                    <h5 class="text-muted item-bottom  fs-21">Registered Special Schools </h5>
                    <div>
                        <span class="text-muted fs-14  align-middle">(in No's)</span><div class="d-flex align-items-center">
                            <h2 class="mb-0 cfs-22"><i class="ri-community-line display-6 text-muted cfs-22"></i><span class="counter-value" data-target="19">0</span></h2>
                            <%--  <div class="d-flex align-items-center">
                            <div class="flex-shrink-0">
                                
                            </div>
                            <div class="flex-grow-1 ms-3">
                               
                            </div>
                        </div>--%>
                        </div>
                    </div>
                </div>
                <div class="card-footer-border"></div>
                <!-- end card body -->
            </div>
            <!-- end card -->
        </div>
        <!-- end col -->
    </div>
    <!-- end row -->



    <div class="row mt-3">
        <div class="col-xxl-3 col-xl-6">
            <div class="card card-height-100 ">
                <div class="card-header border-bottom border-primary  align-items-center d-flex">
                    <h4 class="card-title mb-0 flex-grow-1">Employee Transfer Details </h4>
                    <div class="flex-shrink-0">
                        <div class="dropdown card-header-dropdown">
                            <a class="text-reset dropdown-btn" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class=" fs-16"><i class="mdi mdi-dots-vertical align-middle"></i></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                                <a class="dropdown-item" href="#">Today</a>
                                <a class="dropdown-item" href="#">Last Week</a>
                                <a class="dropdown-item" href="#">Last Month</a>
                                <a class="dropdown-item" href="#">Current Year</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end card header -->

                <div class="card-body">
                    <div class="row">
                        <div class="col-12">
                            <p class="mb-0 fw-bold">Total Employee Transfer (No's)</p>
                            <h5 class="mb-1">
                                <span class="counter-value" data-target="1359">0</span>
                            </h5>
                        </div>
                    </div>
                    <div id="Chart_Transfer" data-colors='["--vz-primary", "--vz-success", "--vz-warning", "--vz-danger", "--vz-info"]' data-colors-minimal='["--vz-primary", "--vz-primary-rgb, 0.85", "--vz-primary-rgb, 0.70", "--vz-primary-rgb, 0.60", "--vz-primary-rgb, 0.45"]' data-colors-interactive='["--vz-primary", "--vz-primary-rgb, 0.85", "--vz-primary-rgb, 0.70", "--vz-primary-rgb, 0.60", "--vz-primary-rgb, 0.45"]' data-colors-galaxy='["--vz-primary", "--vz-primary-rgb, 0.85", "--vz-primary-rgb, 0.70", "--vz-primary-rgb, 0.60", "--vz-primary-rgb, 0.45"]' class="apex-charts" dir="ltr" style="height: 100%"></div>
                </div>

                <div class="card-footer-border"></div>
            </div>
        </div>
        <div class="col-xxl-3 col-xl-6">
            <div class="card card-height-100">
                <div class="card-header  border-bottom border-primary align-items-center d-flex">
                    <h4 class="card-title mb-0 flex-grow-1">Payroll Details</h4>
                    <div class="flex-shrink-0">
                        <div class="dropdown card-header-dropdown">
                            <a class="text-reset dropdown-btn" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class=" fs-16"><i class="mdi mdi-dots-vertical align-middle"></i></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                                <a class="dropdown-item" href="#">Today</a>
                                <a class="dropdown-item" href="#">Last Week</a>
                                <a class="dropdown-item" href="#">Last Month</a>
                                <a class="dropdown-item" href="#">Current Year</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end card header -->

                <div class="card-body">
                    <div class="row">
                        <div class="col-12">
                            <p class=" mb-0 fw-bold">Total Registered Staff (No's)</p>
                            <h5 class="mb-1">
                                <span class="counter-value" data-target="115989">0</span>
                            </h5>
                        </div>
                    </div>
                    <div id="Chart_Payroll" data-colors='["--vz-primary", "--vz-success", "--vz-warning", "--vz-danger", "--vz-info"]' class="apex-charts" dir="ltr"></div>
                </div>

                <div class="card-footer-border"></div>
            </div>
        </div>
        <div class="col-xxl-6 col-md-12">
            <div class="card card-height-100 ">
                <div class="card-header  border-bottom border-primary align-items-center d-flex">
                    <h4 class="card-title mb-0 flex-grow-1">Live Users By District</h4>
                </div>
                <!-- end card header -->
                <!-- card body -->
                <div class="card-body px-0">
                    <div class="row">
                        <div class="col-12 text-center">
                            <div id="tooltip"></div>
                            <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="10 140 670 440" style="enable-background: new 0 0 720 720; background-color: white; max-height: 475px; min-height: 220px" xml:space="preserve">
                                <a xlink:href="#">
                                    <g>
                                        <path class="st0" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="Chhindwara-8" title="छिंदवाडा:User Count : 10" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M421.06,460.92c-3.71-1.18-2.8-0.82-2.7-4.04c0.02-0.74-0.67-6.04-2.64-5.19c-1.62,0.69-0.6,1.34-2.93,1.48
                                c-2.13,0.13-1.07-0.58-2.82,1.11c-3.57,3.45-2.62,1.8-5.98,1.36c-2.82,2.65-0.11,6.43-2.93,10.23c-4.16,0.5-5.33-0.44-6.53-4.08
                                l-4.3-0.67c-3.29,3.98-1.86,0.16-4.28,3.31c-1.81,2.35,1.27-0.76-0.53,0.8c-2.16,1.86-3.97-0.8-3.98-0.81
                                c-3.16-3.22-2.42,0.93-3.55-4.27c-3.18,2.1-1.29-0.12-4.22,3.34c-2.01-0.37-5.16-1.51-6.91-0.31c-1.83,2.89-0.47,4.56,1.31,6.74
                                c2.93,3.57,0.4,3.94-0.91,6.14c2.06,1.93,3.04,0.95,3.06,4.46c-2.59,1.53-0.54-0.71-4.62,2.47c-4.45,3.47-6.66-1.63-9.02-2.01
                                c-2.16-0.35-4.13,0.15-6.14,0.32c0.3,5.14,1.17,3.06-1.99,6.43l0.76,3.83l2.25,1.16c-0.8,2.88-2.3,1.38-2.03,5.74
                                c0.16,2.55,0.71,3.65,0.68,6.46c2.41,0.21,2.32-0.98,4.76-1.19c-0.73,6.56,2.5,4.49,4.07,8.74c-0.34,2.64-1.21,0.98-0.92,4.2
                                c0.65-0.13,3.55-2.52,5.94-1.12c3.25,1.9,2.62,1.82,3.79,3.28c1.23,1.54,0.21-0.7,0.92,1.04c0.76,6.3-1.32,4.43-4.81,6.42
                                l1.79,1.91c-1.51,1.68-1.34,0.04-2.09,2.03c-0.61,1.62,0.16,1.44-0.73,3.37c-1.01,1.29-0.67-0.65-2.45,1.87
                                c-1.34,1.89-0.99,0.74-2.4,2.08l0.41,2.04c-3.47,2.3-3.66,1.53-3.78,3.1c-0.1,1.33-0.01,0.75,0.59,1.42
                                c1.56-0.79,0.56,0.01,1.13-1.21l0.59-1.88l3.47,1.31c-0.19,2.21-0.26,5.44,1.16,7.43c3.41,0.35,2.63-1.41,4.67-1.72
                                c4.96-0.76,3.31,3.48,9.63,3.43c3.74-0.03,3.1,0.69,5.72,1.2l1.51-2.04c1.42,0.62,0.98,0.44,1.78,1.49
                                c1.26-1.67,3.21-1.35,5.51-1.39c0.62-0.01,0.89,0.06,1.28,0.04l1.02-0.11c0.12-0.01,0.24-0.05,0.36-0.06
                                c2.14-0.23,0.8-0.03,2.87,0.41c0.24-1.88-0.64-2.63-1.54-4.17c-0.53-0.9,0-2.45,0.44-3.55c3.79-0.67,1.98-0.73,4.65-2.03
                                c2.73,0.47,3.44,1.94,7.29,0.87c2.12-0.59,3.68-2.89,5.02-3.85c2.23-0.13,2.38,0.93,4.8,0.16c0.06-0.92-0.38-5.18-0.27-6.05
                                c0.4-3,2.7-2.48,4.21-3.66c1.1-3.5-1.6-1.69,0.47-5.18c1.07-1.82,0.97-2.88,2.62-4.48c2.86-2.78-0.2-1.32,1.65-3.52
                                c0.96-1.15,2.67-2.41,3.52-3.55c-0.03-2.3-1.08-2.78-1.42-4.75c-0.48-2.76,1.01-1.69-1.19-4.01c-1.36-1.44-2.96-7.17-2.32-8.87
                                c1.7-0.29,0.73,0.33,2.19,0.62c0.95-5.25-4.36-1.09-5.29-6.82c1.74-1.96,3.62-0.9,4.41-3.18c-1.62-2.62-2.06-0.56-4.1-0.76
                                c-1.06-3.3,0.91-2.93,2.97-3.85c-0.65-0.66-3.11-1.42-4.15-1.49c-2.71-0.19-1.6,1-3.73,2.1l-1.48-1.52
                                c1.4-4.39,8.07-2.86,10.18-4.01c-0.43-1.96-2.51-1.51-1.34-4.55c0.62-1.61,2.34-2.95,2.63-3.89c-2.45-1.52-3.26,0.96-4.42-2.07
                                C420.6,462.02,420.27,464.6,421.06,460.92z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st1" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="Shivpuri-8" title="शिवपुरी : User Count : 7" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M340.27,296.14l2.37-0.57c0.12-1.48-0.11-1.03,0.51-2.2l10.78-8.86c1.94-1.67,0.94-2.57,0.49-4.97
                                c-1.47,0.43-1.24,1.51-2.64,0.13c-1.35-1.32-1.63-2.03-1.56-3.3c3.28-1.93,1.65,1.39,6.74-0.2c-1.22-2.83,0.3-1.61,0.42-4.32
                                c-1.47-0.69-0.69-0.73-2.03-0.37c-0.55,2.24,1.96,0.42-0.8,3.64l-3.56-0.79c0.11-1.04,1.24-5.24,1.6-6.04
                                c1.32-2.95,3.2-1.43,5.05-0.95c-0.52-1.8-0.56-0.85-0.85-1.73c-0.39-1.18,0.28-0.32-0.33-2.04c-0.59-1.68-1.96-1.73-3.19-2.89
                                c1.2-2.2,2.7-1.75,0.13-3.68c-0.83-0.62-1.88-0.18-0.57-1.92c0.51-0.68,1.09-0.53,2.09-1.89c-1.73-0.92-1.1,0.34-2.3-1.28
                                c2.72-4.43,1.52,1.87,4.69-6.02l-5.43-0.05c0-2.6-0.21-2.01-1.28-3.98c0.74-1.82,2.14-2.55,1.59-5.12
                                c-0.33-1.56-0.99-0.87-0.53-2.62c0.56-2.08,0.23-0.74,1.98-1.62l-0.35-0.73c-0.67-0.64-1-0.82-1.64-1.35l-1.96-1.03
                                c-0.57,1.49,0.31,2.68-2.93,1.46c-0.39-4.27,4-2.63,3.71-6.2c-0.87,0.56-2.01,2.02-3.16,2.58c-2.66,1.32-1.78-0.9-4.04,1.93
                                c-4.78-0.53-7.45,1.97-10.91-0.99c-2.09-1.78-0.56-1.31-1.02-2.42c-3.12,0.68-5.39,2.1-8.97,0.19c0.07-2.08,1.76-0.9-0.06-3.9
                                c-2.84-0.98-3.07,0.81-4.9-2.11c-1.78-2.84-2.84,0.09-3.49-3.41l-2.96-0.01l-0.83-2.67c-4.83,0.55-0.24,4.72-6.71,3.97
                                c-0.33,7-3.6,2.2-4.57,1.47c-1.7-1.28-2.24-0.59-3.77-1.48c-2.17-1.28-0.49-2.08-3.06-2.19c-0.74,1.25-0.8,3.64-0.83,5.26
                                c1.45,1.35,2.28,1.41,2.08,3.32l-6.98-0.84c-1.61,2.28-0.6,1.37-1.51,3.43c-1.13,2.54-0.77-0.62-2.68,1.51
                                c0.64,2.03,3.14,1.27,2.8,4.32c-3.06,1.35-2.14-1.83-4.41,0.27c0.21,1.74,0.71,0.49,1.7,2.49c-1,1.62-1.69,1.37-1.24,3.03
                                c0.65,2.41,1.75,1.83,2.8,2.52c-1.01,3.64-6.14,2.6-9.02,3.79l0.63,3.19l-2.9,0.4l0.52,3.08l-2.75,0.62
                                c-0.42,4.17-2.75,1.57-6.51,2.16c-0.36,3.41,1.34,2.42,3.86,1.79c1.73,2.73,0.66,0.89,3.44,2.1c2.73,1.18,1.17,0.88,4.48,1.45
                                c4.69-6.86-0.42-2.42,4.91-6.57c1.13-0.88,1.63-2.33,3.03-2.64c1.09-0.24,3.7,0.73,4.39,1.44c0.14,1.55-0.72,1.25-0.66,2.68
                                c0.07,1.78,1.03,0.49-0.24,3.28c3.92,2.43,1.14,3.18,0.74,6.01c2.3,2.58,3.12,1.35,4.09,5.44l-1.79,1.08
                                c-0.21,2.42-0.69,2.84,0.5,4.84l-6.31,2.22c0.07,1.78,2.76,10.19,3.99,11.68c2.27-0.83,0.78-2.85,4.39-0.87
                                c2.37,1.3,1.57,1.65,2.68,4.47c1.01,0.12,1.92,0.34,2.86,0.28c1.82-0.12,0.79-0.51,3.16,0.06c-0.88-3.19-0.09-6.42,1.74-6.09
                                c2.09,0.37-1.57,0.9,4.01,4.78c1.26,0.88,1.77,1.96,2.5,2.36c1.66,0.9,1.5-0.05,3.73,0.11c0.84-1.61,0.13-1.2,1.31-2.6
                                c0.83-0.98,1.1-1.36,1.9-2.47c4.13-5.72,1.05-5.94,5.2-5.59c1.58,0.13,0.7-0.24,1.92-0.23c3.35,0.03-0.44,1.95,4.81,1.39
                                c2.76,3.62,1.47,0.57,4.37,2.28c0.9,2.62-1,1.48-1.84,3.44c-0.74,1.71,0.14,0.65-0.27,2.1c-0.52,1.83-0.59-0.5-0.86,1.95
                                c3.66,2.95,4.49,0.89,4.65,0.81C336.92,293.93,336.59,295.85,340.27,296.14z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st2" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="Sagar-8" title="सागर : User Count : 37" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M337.39,343.22l0.11,0.35c1.67,0.18,2.42-0.33,3.99,0.73c0.04,1.62-0.73,0.76-0.83,3.57l-1.89,0.5
                                c0.87,1.7,1.04,1.54,2.4,2.62l-1.26,5.38c0.82,0.77,2.54,2.18,3.43,2.83c1.14-1.66,0.48-2.03,2.32-4.25
                                c4.9,0.24,6.04,4.27,6.09,8.48l-1.55,1.01c0.35,0.44,3.66,1.91,0.02,7.15l2.09,0.46c0.06,2.16-0.08,1.33-0.57,2.99
                                c-0.56,1.91-0.19,1.37-1.11,2.43c-2.35,2.72-0.05,0.53-1.17,2.39c-0.01,0.02-0.75,0.84-0.85,0.98c0.62,0.3,0.74-0.22,1.41,0.43
                                c1.52,1.47-2.37,0.33,3.45,2.31c1.58,0.54,0.22,0.07,1.58,0.95c1.77-1.86-0.3-4.55,6.66-4.92c1.36,5.26,1.51,3.51,2.34,5.65
                                c0.35,0.91,0.02,0.8,0.52,1.9c2.03,0.03,0.94-0.55,2.82-0.68c-0.04,0.99-0.05,3.35-0.21,4.09c-0.59,2.73-0.33,1.61-0.4,4.47
                                c0.6-1.35-0.39-0.35,1.54-1.18c3.86-1.66,2.24,1.11,6.24,0.67l4.12-1.23c1.57-0.48,2-1.52,4.32-0.81
                                c0.89,3.99-0.05,3.24-2.38,5.36c-4.21,3.84-1.17,2.96-3.14,4.73c-1.9,1.31-0.84-0.54-3.37,1.17c0.55,1.63,0.77,0.13,1.2,3.29
                                c0.24,1.78,0.18,2.1,1.49,3.44c4.6-0.25,2.37-3.54,7.27,2.32c1.88,2.25,0.51,1.63,0.39,4.21c2.67,1.56,2.62,0.63,4.76,0.18
                                c1.65,1.23,0.83,2.13,3.15,2.6c1.18,0.24,2.38-0.7,4.04-0.96c1.24,0.72,1.3,1.59,2.84,1.87c1.88,0.35,0.27-0.8,2.48,0.18
                                c2.41,1.07,4.25,0.57,6.74,0c0,0,0.92,5.45,5.32,0.43c-0.47-1.97-1.16-1.1-0.99-4.07l2.88-0.52l1.25-2.06l-1.38-1.94l1.25-1.56
                                c-1.2-2.03-3.03-1.37-3.21-3.84c-0.15-2.06,0.57-0.98,0.55-1.9c-0.01-0.54-0.59,0.14-0.47-1.58c1.55-1.25,0.93-0.01,2.86-1.55
                                c3.11-2.48,2.6-0.51,4.87-3.87c1.18-1.75,0.8-0.55,2.07-1.89c-0.64-2.51-1.63-1.18-1.61-3.73c0.01-0.91,0.09-3.77,0.31-4.53
                                c1.81-0.94,0.74-0.1,2.41,0.13l0.45-1.37c-3.01-3.04-4.4,0.27-3.39-6.2c-1.15-1.04-3.1-1.91-4.19-2.75
                                c-2.31-1.77-0.16-2.25,0.29-4.12c-1.98-1.33-1.65-0.14-3.4-0.38c-4.71-0.63-6.13-5.36-6.54-6.03c-1.64,0.43-1.48,1.48-2.85-0.58
                                c0.69-1.45,0.72-0.71,1.6-1.8c1.47-1.81,0.47-0.15,0.22-2.79c4.39-0.05,2.97-1.1,6.94-2.42c-0.45-1.69-1.49-4.59-2.45-5.88
                                c-0.95-1.3,0.03,0-1.14-0.98c-0.07-0.06-0.17-0.14-0.24-0.2c-2.32-1.99-0.59-0.7-3.7-2.01c-0.5-2.87-1.64-3.08-1.83-5.77
                                c-0.16-2.24,0.16-1.13,0.78-2.31c0.79-1.5,0.09-1.26,0.88-2.56c3.17,0.11-0.2,0.18,2.19,1.22c1.97-2.73,0.83,0.27,3.54-1.66
                                c2.25-1.61-0.12-1.05,2.07-3.6c-1.67-1.75-0.89-1.8-2.85-3.48l0.76-3.5c-3.21,0.54-4.04,0.46-5.38,2.05
                                c-2.46,2.92-1.14,0.74-4.74,1.33c-0.79-1.73,0.41-0.91-0.95-2.44c-1,1.7-0.4,2.71-1.3,4.23c-0.45,0.76-2.1,2.29-2.75,2.95
                                c-2.04,2.06,0.81,0.99-1.5,3.28c-1.44,1.43-0.71-0.37-1.37,1.75c-0.35,1.12,0.5,0.41-0.54,1.99c-1.77,0.98-1.57,0.01-3.57,1.25
                                c-1.91,1.18-0.4,1.2-2.42,1.83c-2.16-1.33-1.34-4.92-4.35-4.81c-1.64,0.06-1.37,0.98-3.47,0.13c-2.21-0.9-0.97-1.05-2.33-2.53
                                c-2.33-2.55,0.06,1.3-2.96-3.21c-1.53-2.29-4.25-4.67-7.03-5.88c-1.32,1.05-1.16,0.88-1.78,2.37c-1.16,2.82-0.25,0.75-1.93,2.51
                                c-1.48,1.56-0.78,3.62-4.61,4.14c-1.74-1.01-3.6-2.97-4.48-4.82c0.41-1.24,1.4-2.52,2.46-3.54c-2.15-1.74-3.7-3.22-6.31-4.86
                                c-2.22,1.37-4.42,3.06-6.99,3.53c-2.96,5.7-0.81,2.31-5.52,5.84C337.65,338.38,339.68,342.5,337.39,343.22z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st3" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="Betul-8" title="बेतुल : User Count : 325" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M350.63,493.16c-1.51-1.19-1.36,0-2.08-1.89c-2.37-6.17,1.81-2.75,1.31-8.5c-2.52,0.06-6.53-0.27-8.82,1.01
                                l-6.74,3.37c-3.64,2.06-5.45-0.04-8.08,0.81c-2.65,0.86-3.51,3.74-5.95,3.08c-0.68-2.02,0.06-3.48-0.15-5.51
                                c-1.57-0.05-2.61,1.51-3.97,1.85c-1.99,0.51-1.67-0.1-2.49-0.07c-1.22,0.06-0.72,0.29-1.93,0.86c-3.05,1.44-0.61-1.06-4.04,0.29
                                c-2.63,1.03-1.76,0.71-3.94-0.6c-2.69-1.62-6.33-2.58-8.08,0.87c-1.32,2.59-0.12,2.54-3.25,4.61c-1.67,1.11-0.03,0.47-1.79,2.31
                                l-3.5-0.34c4.83,5.51,3.99,1.71,5.63,3.53c0.8,1.84-0.14,4.21-0.31,6.11l3.04,0.94l-0.32,3.72c-2.92,0.86-4.28,0.73-7.25,0.72
                                c-1.15,2.71,2.09,1.16-2.95,2.63c-1.5,0.44-1.07,0.7-2.45,1.07c-1.11,0.29-1.51,0-2.57,0.51c-1.44,0.7-1.63,2.96-2.67,3.87
                                c-1.25,1.09-1.26-0.02-2.13,1.33c-0.91,1.42,0.24,0.72-0.73,2.58l-2.88-0.31l0.32,3.53c1.69,1.17,1.08,0,1.98,2.27
                                c-1.51,0.97-3.84,0.96-5.55,1c-3.51,0.07-3.07,0.87-3.13,3.72c2.27,0.11,1.68-0.36,4.23,0.12c3.57,0.67,0.25-0.2,3.23-0.38
                                c2.01,1.85-1.07,0.86,1.75,2.15c1.88-1.1-0.07-0.36,1.21-1.11c0.09-0.05,0.2-0.11,0.3-0.15l3.59-1.03
                                c-0.32-1.19-0.49-1.09-0.1-2.44c2.02-0.13,5.11,0.18,7.24,0.32c2.81,0.18,4.09-0.48,6.65-1.01c2.44,2.98,1.33,1.22,2.81,2.82
                                l2.41,3.3c1.46,3.23,2.08,5.92,1.8,9.68c1.63,0.81,2.09-0.13,2.55,2.32c-2.53,1.55-4.19,0.7-6.8-0.37
                                c-1.33-0.54-2.08-0.83-3.67-0.61l-2.51,1.03c-0.05-0.09-0.21,0.11-0.3,0.18c0.56,3.03,1.62,3.48,3.02,5.43
                                c1.12,1.56,0.88,4.91,2.26,5.93c1.47-1.13,0.93-3.9,3.06-2.57c2.33,1.45-0.41,2.97,3.25,3.45c1.43-1.11-0.42-2.52,3.8-1.74
                                c4.28,0.79,0.65,0.23,3.63-0.18c0.82,1.33,0.42,1.48,1.71,2.34c1.83-0.46,0.7-0.89,3.03-1.67c2.93-0.98,0.85-0.43,3.04-1.85
                                c2.71,0.21,5.09,2.98,8,2.07c1.91-0.6,5.61-2.15,7.56-3.02c14.01-6.18,8.85-5.89,10.45-9.67c1.39-0.5,3.21-0.2,5.66-0.94
                                c0.61-1.41-0.31-2.11,1.77-1.87c1.81,0.2,1.4,1.3,3.3,0.93c1.45-1.78,0.22-2.35,1.84-3.54c2.32-1.71,1.37,0.97,2.45-2.66
                                c0.91-3.06,0.68-0.22,2.37-2.88c1.64-2.57,0.32-0.62,2.79-2.12c0.06-3.39-0.65-2.18,1.67-4.77c-0.59-1.35-0.92-0.5-1-2.15
                                c2.31-1.99,7.88-1.05,3.32-7.3c-0.75-1.02-3-2.46-4.3-2.56c-3.12-0.24-2.39,2.02-4.63,2.02c-1.95-3.67,2.2-4.69-0.37-7.1
                                c-0.96-0.9-1.92-0.97-2.55-2.31c-0.68-1.45-0.16-2.28-0.96-3.76c-2.15,0.03-1.38,1.43-3.94,0.77c-0.38-0.92-0.93-5.47-1.05-6.78
                                C348.34,494.2,349.36,495.87,350.63,493.16z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st4" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="Balaghat-8" title="बालाघाट : User Count : 9" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M542.83,498.43c0.76-0.71,0.21-0.16,0.58-1.09c-1.02-2.05-0.1-1.88,1.13-3.2c-3.32-5.33-5.82-0.72-9.31-2.52
                                c-1.26-2.71-0.03-1.75,0.07-4.22l-2.38-0.47c-0.35-0.78-0.06-0.55-0.55-1.16c-1.89-2.3-1.43-1.33-4.54-2.46l-0.61,5.52
                                c-1.92,1.33-1.12-0.23-3.23,2.1c-1.15,1.27-1.48,1.08-2.79,1.88c0.19,2.57,1,0.94,1.72,3.51c-2.23,1.78-1.83,1.56-4.52,0.41
                                c-3.7-1.58-8.01-0.41-9.94-2.3c-1.11-1.08,0.45-0.43-1.45-1.55c-0.9-0.53-0.95-0.17-2.27-0.83c-1.69,1.8-1.3,2.61-4.32,2.44
                                c-0.68-4.88,0.15-4.72-5.49-4.06c-0.61-2.5,0.56-0.98-0.36-3.1c-2.97-0.59-2.78,2.95-6.35,2.83c-1-0.03-2.04-0.77-3.43-1.33
                                c-4.25-1.71-0.19-1.87-5.73-1.76c-2.86,4.52-0.25,3.56-0.67,6.87c-0.27,2.18-2.55,3.11-4.14,4.51c0.02,5.74,2.03,4.36,2.2,8.78
                                c-2.51-0.26-2.66-0.72-5.15,0.22c-2.38,0.89-2.72-0.08-4.91,0.8l-0.27,7.03c-3.85,1.06-2.29-0.5-5.6,2.12l3.44,0.75
                                c-1.43,3-4.73,3.23-6.83,5.92c-0.09,0.11-0.87,2.64-1.87,3.54c-1.74,1.55-3.11,0.24-5.44,0.77c-0.55,1.18,0.36,0.7-0.23,2.69
                                c-0.6,2.04-0.72,1.09-2.08,1.99c0.92,1.77,1.09,1.1,0.93,3.06c-2.55,0.91-2.43-0.32-4.42-0.92c-0.59,1.31,0.27,0.61-0.63,2.83
                                c-0.9,2.22,0.18,1.29-1.38,2.17c-5.06,2.86-0.19,0.47-4.3,4c1.93,1.16,1.18,1.25,1.92,2.82c1.68-0.35,4.96-0.84,6.65-0.85
                                c1.61-1.39-0.16-0.81,2.08-1.85c3.31-1.54,4.96-1.76,7.68-0.53c2.28,1.03,2.36,2.03,3.83,3.17c1.44,1.12,3.3,1.26,5.07,1.66
                                c1.27-1.45,0.33-2.23,2.74-2.53c2.51-0.31,1.98,0.4,3.42,1.55c0.55-0.26,1.77-1.06,2.12-1.19c2.83-1.02,1.58,1.08,5.19-2.63
                                c2.07-2.13,1.16-0.96,3.43-1.77c0.81-0.29,2.59-1.39,3.73-1.83c2,0.66,0.57,0.63,2.3,0.98c5.06,1.02,0.69-1.41,4.4,2.67
                                c1.55,1.71,0.43-0.11,2.36,1.17c2.9,1.92-0.45,0.56,1.67,2.65c1.19,1.18,1.16-0.27,2,2.01c0.65,1.76-0.18,1.21,1.36,2.96
                                c4.11,4.66-3.98,5.41,2.77,7.47l0.65-2.22c8.73,0.88,5.69,2.14,10.52,5.34c5.19,3.44,6.4-5.69,7.47-7.42
                                c0.71-1.15,1.45-0.67,1.64-2.68c0.12-1.22-0.27-1.57-0.17-3.15c0.21-3.12,0.45-1.11-0.42-3.58c-1.74-4.94,0.91-2.66-0.24-6.35
                                c-0.83-2.66-0.65-0.43,0.63-6.34c1.22-5.63,4.05-1.42,5.18-1.83c1.99-1.23,2.51-5.66,2.63-7.86c0.2-3.56-1.03-0.69-0.66-4.02
                                c0.21-1.87,0.62-0.41,0.38-2.13c-0.25-1.75-0.17,0.65-0.87-1.88c1.79-0.64,2.12,0.6,3.58-5.66c0.51-2.17,0.88-1.88,1.51-3.36
                                c0.28-0.66,0.68-2.41,1.01-3.39c5.95-1.07,3.64,3.27,5.44,5.1c1.54-0.99,1.13-1.77,1.13-3.49c-2.06-1.08-1.28,0.27-2.02-1.49
                                c1.2-1.54,1.41-1.01,3.33-1.52L542.83,498.43z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st5" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="Seoni-8" title="सिवनी : User Count : 10" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M434.22,458.12l-1.1-0.35l-2.79,0.68c-0.93,2.2-0.59,2.16-2.14,4.02c-1.57,1.89-1.68,1.39-3.21,2.77
                                c1.05,1.21,1.21,0.82,2.45,1.73c-0.48,1.5-2.68,3.62-3.56,5.26l1.12,1.63c0.86,1.19,1,0.19,0.58,2.21
                                c-3.03,1.43-5.98-0.25-8.52,1.98c-0.06,0.05-0.8,0.81-0.85,0.87c-0.55,0.77-0.51-0.23-0.41,1.03c1.88-0.17,0.59-2.17,4.09-1.8
                                c0.96,0.1,4.5,0.73,4.95,0.97c0.17,4.36-2.08,0.48-3.14,3.69l3.76,0.61l0.63,2.8l-4.13,1.93c0.62,4.13,1.44,1.87,3.24,3.02
                                c1.68,1.07,1.83,3.03,1.68,5.03c-2.92,0.23-0.67-0.78-2.68-1.02c0.02,0.23,1.22,5.22,1.35,5.62c0.71,2.34,1.69,2.25,3.05,3.91
                                c-0.45,1.6-1.23,0.93-0.24,3.22c1.32,3.05,1.39-0.23,1.25,3.33c-0.1,2.52-0.17,1.58-1.52,2.71l-2.6,2.22l0.18,2.44
                                c-2.77,1.79-2.27,2.15-3.78,4.91c-1.26,2.3-0.99,0.87-0.52,2.85c0.56,2.36,0,0.99-0.24,3.2c-1.8,1.15-3.62,0.44-4.13,3.41
                                c1.19,0.84,1.63,0.4,3,1.32c3.85,2.61-0.27,0.86,6.39,2.36c3.29,0.74,1.76,0.16,3.52-0.39c2.72-0.85,6.67,0.3,7.3,4.35
                                c0.36,2.27-1.1-0.08-0.02,2.4c2.11-0.4,1.31-0.64,1.51-2.2c6.01-2.57,3.45-3.94,4.45-6.23c3.78-0.26,1.64,1.52,4.59,0.86
                                l-0.96-2.89c1.28-1.06,1.72-0.32,2.14-1.99c0.43-1.7-0.79-0.84,0.4-2.89c2.26-0.55,4.07,0.43,5.42-0.63
                                c2.12-1.69,0.79-2.61,0.77-3.92c2.17-0.26,2.57-0.15,3.88-1.9c2.37-3.16,1.62,0.25,3.33-2.46l-3-1.17
                                c0.77-2.84,3.17-2.45,5.56-2.83c0.99-2.95-0.8-4.79,1.25-7.37c2.17-0.67,1.9,0.13,4.52-0.8c2.04-0.72,2.35-0.2,4.4-0.45
                                c0.16-2.08-4.23-6.4-0.39-9.49c5.42-4.36,0.48-2.91,2.7-9.22c-2.99-3.53-2.05-2.8-0.3-6.02c-1.73-2.87-2.12-2.71-2.68-3.63
                                c-1.23-2.06-0.21-1.2-2.32-3.51l0.7-2.15c-2.05-0.65-4.06-0.02-5.38-1.56c0.91-1.2,2.42-1.58,3.47-2.26l0.49-0.36
                                c1.6-1.2,6.53-2.87,6.88-2.88c1.8,0.42,5.47,3.02,6.94,0.96c1.27-1.78-0.99-0.69-0.68-2.84c0.26-1.81,1.63-1.39,2.65-2.08
                                l0.34-2.88c1.8-0.78,1.49,0.11,3.17-0.81c-0.52-4.4,0.4-4.83-4.56-4.93c-2.09,4.61-4.21,1.71-8.09,2.48
                                c-0.51,0.1-3.17,2.34-6.43-3.18c-1.5-2.55,0.36-0.21-2.08-1.85c-0.74-0.5-1.03-1.04-1.77-1.67c-2.28-0.23-1.62,0.26-2.9,0.41
                                c-2.07,0.25,0.37-0.21-1.68-0.69c-3.22,2.48-3.91,3.43-5.7-0.48c-1.49,1.35-1.32,1.96-3.5,1.37c-0.53-2.27-0.13-1,0.64-2.73
                                c-2.47-1.38-1.27-0.71-2.16-2.59c-1.49-0.27-5.05-0.35-5.93-0.71c-1.77-0.73-1.67-3.06-3.97-1.1c0.69,1.96,3,1.3,2.24,4.69
                                c-0.44,1.96-3.69,2.34-5.48,4.77c-0.07,0.09-1.38,2.02-1.42,2.09c-0.68,1.11-0.35,3.1-0.74,5.01
                                C435.42,458.35,436.13,457.68,434.22,458.12z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>
                                        <path class="st1" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="Chhatarpur-8" title="छतरपुर : User Count : 5" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M434.35,275.65l-1.7,0.73l-1.08-1.36c-0.66,0.94-0.23,0.68-1.57,0.81c-2.42-2.35-1.37-5.66,0.98-7.12
                                c0.98-0.61,0.1,0.4,1.69-0.68c-0.26-0.91-0.26,0.39-0.79-1.27l1.44-2.12c-2.27,0.53-2.63,0.53-4.76-2.31
                                c-1.35,3.62-1.1,0.94-2.09,3.19c-1.23,2.83,1.55,0.96-0.39,3.62c-1.52-0.56-2.43-2.12-3.59-3.16c-1.27,2.65,0.73,3.89,2.1,6.14
                                c2.06,3.38,0.05,5.5,3.08,6.75c0.63-1.15,0.36-1.21,0.26-2.55l-1.54-0.84c-0.35-3.34,0.62-2.64,0.88-2.92
                                c1.73,0.94,0.49-0.04,1.22,1.47c0.2,0.42,0.42,0.93,0.68,1.41c0.77,3.66,3.3,2.3,2.73,5.17c-2.38,1.53-1.95,0.49-3.92,0.18
                                c-1.59-0.25-0.16,0.54-1.26-0.13c-1.07-0.65,0.81-0.23-1.12-1.22c-0.96,2.99,1.41,10.14,0.64,12.86
                                c-0.37,1.29-1.57,3.16-2.22,5.26c-1.55,5.02,1.19,1.91,0.37,6.3c-1.78,9.58-5.9,4.92-7.46,6.69c-0.98,1.11,0.49,4.5-3.81,3.26
                                c-9.89-2.84-4.07-0.27-7.91,3.85c-2.42,2.6-1.34,0.8-2.59,4.4c-1.57,4.52-2.75,7.54,2.35,9.69c3.32-2.99-1.33-1.3,6-3.54
                                c1.66-0.51,1.58-1.36,3.57-1.05l3.95,1.23c2,1.54,0.72,7.57-2.37,6.82c-2.4-1.08,0.67-1.05-2.68-2.41
                                c0.21,1.99,1.37,1.73,1.32,3.03c-0.07,1.94-1.09-0.37-0.73,3.39c-0.82,0.47-2.71,1.87-2.86,1.89c-1.15,0.18-0.04-0.46-1.47-0.05
                                c-0.25,0.07-1.02,0.67-1.69,0.96c-1.08-0.56-0.54,0.38-1.12-1.24c-0.54,2.98-1.66,2.14-1.37,4.56c0.29,2.41,1.55,1.97,1.71,4.79
                                c2.66,0.55,2.31,0.51,3.88,2.19c3.47-3.11,1.86-0.66,5.55-2.62c2.95-1.57,4.32-0.47,7.45-0.87c-1.5-0.7-1.48-0.69-1.62-2.5
                                c3.62-2.48,4.96,2.43,6.11-6.11c0.2-1.47,0.58-3.65,0.83-5.02c0.76-4.24-1.04-0.75-0.54-4.17l3.16-1.96
                                c2.04-1.05,1.68,0.07,3.14,1.16c3.32-1.29,2.91-0.2,5.46,0.16l-1.21-2.43c2.47-1.26,0.45-0.7,2.3-1.86
                                c5.75,2.96,4.03,3.61,3.54,4.87c1.41,0,1.44,0.29,2.42,0.12l2.28-0.74c1.83-0.27-0.22,0.95,2.05-0.79
                                c1.21-0.93,0.9-0.88,2.38-1.11c1.75,1.62,0.79,3.02,3.13,2.57c3.68-0.71,2.47,1.19,3.85,2.19c3.14-3.12-0.06-3.61,1-8.66
                                c0.47-2.24,0.24,0.02-0.14-1.79c-0.69-3.29,1.16-0.38,0.36-3.77c-0.25-1.07-0.26-1.49-0.44-2.64c-2.06-0.44-2.68-0.41-2.93-2.46
                                c1.37-2.03,1.41,0.81,2.94-2.62c0.8-1.8,0.39-2.9,2.03-4.09c3.48-0.29,1.86,1.22,3.82,2.82c2.52-0.98,2-4.3,4.48-6.77
                                c2.13-2.12,4.98-3.38,4.98-6.75c-1.33-1.35-1.15-0.15-2.3-2.38c-0.63-1.22-1.36-2.45-1.58-3.74c1.58-3.35,4.84-1.74,7.97-1.82
                                c1.63-3.41,2.18-1.53,4.87-4.17c2.16-2.11,3.6-1.68,4.8-4.35c0.76-1.69,2.76-3.51,3.99-5.21c3.07-4.22,2.06-1.91,5.69-3.84
                                c0.02-0.78-1.24-3.47-1.61-4.98c-1.77,0.73-2,0.07-2.96-1.35c-1.79-2.64-0.71-0.53-3.28-1.97c-1.17-4.72,2.32-7.2-2.49-10.58
                                c-1.79,0.77,0.03,0.92-1.95,1.39c-0.58,0.14-2.31,0.08-2.87-0.12c-1.63,3.52,0.53,0.19-3.66,3.94c-0.8,0.71-0.5,0.62-1.38,1.44
                                c-2.02-0.64-1.63-1.62-7.29,0.02c-0.36,1.08-0.21,1.43-0.45,2.18c-1.18,3.6-1.57,3.37-5.04,3.31c-1.02,1.82-0.91,0.74-1.76,2.42
                                c-2.2-0.88,0.58-0.71-1.77-1.02c-1.08-0.14-1.37,0.15-2.43,0.49l0.39,2.8c0.06,1.69,0.14,2.85,1.1,3.99
                                c-2.56,2.15-1.7,0.51-1.73,3.78c-2.87,0.17-5.26-1.29-7.34-2.85c-8.69,1.59-7.18,0.12-10.48,0.7l-2.57-3.3
                                c-2.18,1.77-2.83,4.94-3.04,5.29C437.47,277.99,433.81,279.61,434.35,275.65z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st5" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="Raisen-8" title="रायसेन : User Count : 6" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M363.93,387.99c-1.04-1.98,0.2-1.22-1.16-3.34c-0.76-1.18-1.1-2.27-1.18-2.47l-1.43,1.07
                                c0.77,1.97,0.36,0.03,1.29,2.07l-1.69,0.75c0.74,1.03,1.28,1.6,0,2.32c-1.56,0.88-1.38-0.13-2.25-0.63
                                c-0.76-0.44-1.99-0.59-2.68-1.27c-1.27-1.26,0.31-0.71-1.36-2.13c-3.39,2.01-1.66,3.96-3.1,6.45c-0.8,1.38-1.17,0.63-2.19,2.55
                                c-4.11,7.68,0.24-0.06-7.63,4.45c0.46,2.38,0.39,1.04,1.12,2.66c-4.69,1.1-3.36,1.8-5.21,1.8c-2.63,0-1.92-2.08-5.23-1.16
                                l-0.33,3.2c1.63,0.66,3.07,0.69,4.07,2.03c0.38,1.92-1,3.28-2.58,4.07c-5.56-2.51-4.6-3.71-4.87-5.51
                                c-1.62-0.57-2.05-0.81-2.78-2.22c-2.06,0.17-3.61,2.32-9.31-3.47c-4.65-4.73-0.16-2.92-7.64-2.35c-1.29-1.88-0.1-1.19-2.57-2.12
                                c0.18,0.72,3.55,7.04-0.95,5.7c-0.15-0.04-2.19-1.42-3.11-1.83c-4.17-1.83-5.6,0.94-5.11,4.71c2.07,0.57,2.2-0.88,3.92,0.38
                                c1.98,2.39-1.67,0.61,0.88,3.42c2.28,2.51,1.39,1.06,4.35,1.93c0.11,3.19-0.39,1.76-2.05,3.68c-1.17,1.36-0.44,2.41-0.21,4.24
                                c0.4,3.14-1.11,4.65-1.59,5.71c-0.23,0.51-0.14,0.18-0.32,1c-0.01,0.06-0.06,0.96-0.12,1.29c-0.18,0.12-0.79,0.45-0.8,0.46
                                l-1.98,1.43c-1.59,0.93-1.49,1.28-3.21,1.77c-5.35,1.51-7.17-1.23-9.09,4.07c3.47,5.45,5.55,4.78,5.69,9.44
                                c2.39,0.95,1.46,0.88,2.91,1.67c1.61,0.87,0.72-0.08,3.14,0.09c0.23,1.98-0.22,1.13,0.85,2.81c1.3-1.21-0.14-0.56,1.73-1.4
                                c2.39,1.36,4.25,4.04,6.54,2.48c1.56-1.06,1.27-3.74,6.21-4.34c2.1-0.25,1.42,0.74,3.7-0.65c2.15-1.3,4.78-4.48,11.9-3.73
                                c0.32,2.45-0.7,1.87-0.71,4.1c2.2-0.19,1.25-1.12,3.42-1.98l2.15,2.09c-0.14,2.33,0.13,1.59-1.33,3.11l1.21,3.98
                                c1.62,0.73,0.38-0.59,2.76,0.4c1.45,0.6,0.62,1.02,2.42,1.12c1.64-1.82-0.38-2.41,2.34-4.62c7.61-6.19,2.06-0.89,9.86-1.47
                                c1.64-2.18,1.01-2.72,3.67-3.45c2.54-0.7,1.98-1.11,3.69-2.79c1.43-1.4,2.22-0.88,4.22-2.8c2.38-2.29,8.85-1.05,10.78-1.91
                                c2.61-1.16,1.65-0.18,4.45-1.13c2.44-0.83,3.21,0.42,5.07-2.02c1.36-1.78,2-1.77,4.02-2.57c-0.12-2.9-0.97,1.82,0.12-4.67
                                c0.99-5.91,1.7-5.85-2.8-6.19c-1.03-5.57,2.7-0.91-2.88-8.06c-2.57,0.02-1.74,0.76-3.88,1.28c-1.57-0.98-2.21-1.82-2.45-3.66
                                c-0.67-5.09-0.77-1.18-1.88-3.9c1.86-2.36,2.5-1.16,4.51-2c0.45-2.76,1.11-2.89,2.77-4.61c2.66-2.76,2.78-1.43,2.4-3.82
                                c-1.67-0.81-2.65,0.22-4.17,0.66c-9.65,2.78-5.39-0.55-8.65,0.17c-2.38,0.52-1.76,1.45-3.34,2.03c-1.47-1.63,0.48-6.03,0.08-8.16
                                C364.5,387.51,366.5,388.75,363.93,387.99z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st3" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="Dhar-8" title="धार : User Count : 14" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M137.31,427.06c-1.53,1.47-5.25-0.66-7.54-0.97c-2.3-0.31-2.14-0.04-4.05,0.01c-1.4,0.04-2.69-0.43-4.04-0.55
                                c-0.29,4.25-0.06,16.09-2.94,19.17c-3.44,3.67,0.58,2.03-3.89,5.74c-1.57,1.3-0.79,1.03-1.86,2.46c-1.49,0.03-3.24,0.4-4.6,0.23
                                c-2.23-0.28-1.91-0.94-4.34-0.37c0.22,0.81,1.61,6.33,1.61,6.66c0,1.3-0.67,5.94-1.71,6.76c-2.78,2.19-3.13-0.47-3.84,4.29
                                c-0.26,1.76-1.14,1.64-0.47,3.19c0.69,1.6,1.34,0.36,2.03,2.41c-1.52,1.17-2.69,0.57-3.34,1.91c-0.68,1.39,0.8,1.5-0.68,3.93
                                c-1.76-0.03-3.79-1.42-4.09,1.28c-0.31,2.73,1.75,1.86,2.84,3.4c-0.98,2.34-1.87,2.33-4.24,2.36c-1.14,1.28,0.31,0.58-1.71,1.78
                                c-2.1,1.25-0.73,0.33-2.27,2.04c-1.25-0.95-0.77-1.17-2.11-1.2c-0.04,0.06-1.55,4.01-1.8,4.62c0.81,1.5,2.66,1.64,2.61,4.22
                                l-4.21,0.47c1.49,0.09,1.4-0.31,2.75,0.71l-1.51,2.82c2.08,1.45,1.04-0.7,3.76,1.85c1.3,1.22,2.05,0.94,3.82,0.44
                                c5.02-1.4,0.45,0.66,8.59-2.39c6.91-2.59,4.07,0.34,7.94-0.29c1.45-0.23,2.66-1.01,4.56-1.19c4.33-0.41,8.61,0.11,15.21-0.92
                                c1.57-0.25,4.06-0.32,5.16-0.6c1.68-0.43,1.7-1.11,4.09-1.3c2.89-0.23,1.99,0.15,4.83-0.73c1.66-0.51,11.64-0.35,13.14-2.09
                                c0.22-0.45,1.44-4.45,1.46-5.11c0.07-4.22-1.87-1.48-0.98-6.06l-1.76-0.8c0.4-1.23,0.54-0.81,0.76-1.46
                                c0.36-1.04-0.28-0.57,0.44-1.62c1.34-1.95,1.04,0.48,3.3-0.13c-1.02-5.48-0.49-1.62,0.74-4.96c0.95-2.59-0.83-3.13-0.47-5.74
                                c1.12-0.71,1.27-0.38,2.8-0.77l0-3.41c1.84-0.37,2.15,0.74,4.96-0.73c1.43-0.74,2.33-2.46,3.25-3.28
                                c-11.47-1.38-5.02,0.51-8.79-2.43c-2.14,1.41-1.16,2.86-4.69,1.04c-0.06-0.03-0.17-0.09-0.23-0.11c-0.82-0.38-0.14,0.68-1.44-0.58
                                c0.22-1.04,0.9-1.28,1.62-1.91c-1.43-3.15,0.99-3.8-2.87-4.42l-0.08-2.4l-2.54-0.57c-0.17-1.91-0.92-3.08-0.87-3.99
                                c0.06-1,0.8-1.59,1.21-2.95c-6.4-2.26-3.23,3.48-7.31,2.16c-0.84-1.37-0.59-4.3-1.16-6.21c-0.53-1.8-1.1-0.99-0.89-2.59
                                c0.34-2.68,0.58,0.75,1.42-2.26c-2.01-2.51-1.3,1.29-1.53-5.28c2.61-1.4,0.3,1.48,2.84-1.47c-2.47-0.46-1.32-4.62-4.86-4.98
                                l-1.5,0.06C137.9,425.92,138.34,425.9,137.31,427.06z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st6" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="Khargone-8" title="खरगोन : User Count : 9" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M195.63,469.17c-2.1,1.39-1.81,0.39-3.34-0.26c1.15,1.81-0.66,1.14,0.36,3.61c0.92,2.23,3.17,2.2,0.34,4.42
                                c-1.35,1.06,0.07,0.07-1.16,0.63c-0.92,0.42-0.37-0.08-1.07,0.69c-1.19,1.32,1.55,1.4-6.22,0.96l-0.71,2.15
                                c-4.29,0.59-2.82,2.07-5.81-1.19c-6,4.93-5.53,2.21-8.31,2.88c-1.21,0.29-2.82,1.77-4.03,1.95l-4.02-0.29
                                c-0.44-2.14,0.7-0.74-0.47-1.79c-2.03-1.82-2.72,1.42-5.8-0.57l1.09,6.69c1.55,3.23,0.44,4.02-0.38,7.09
                                c-0.95,3.55-2.51,2.22-5.77,2.93c-6.58,1.44-3.06,0.06-8.05,0.83l4.62,2.66c5.27,4.01,3.56,0.15,4.65,2.92
                                c-1.57,0.91-1.18,0.08-2.96,0.82c1,3.46,0.92-0.48,2,2.24c-1.08,0.67-1.82,1.3-2.79,1.97c-2.24,1.54-1.35,0.21-3.36,1.09
                                c-0.19,0.9-1.43,4.51-1.88,5.44c-2.02,0.38-1.67,0.49-2.9-0.81c-0.44,1.34,0.02,0.96-0.77,2.73c2.2,2.48,2.71,2.01,0.8,4.94
                                c-1.02,1.56-1.43,3.94-0.97,5.76c-2.58,0.27-0.68,0.11-2.06,0.77c-1.34,0.64-1.07,0.08-2.13,0.82c1.56,3.28,2.37-0.36,4.27,3.93
                                l0.25,0.54c0.24,0.5,0.62,1.34,0.97,1.92c4.61-0.88,11.12-2.91,13.44,2.59c1.94,4.6,0.52,9.61-2.01,13.71
                                c2.14,1.25,1.42-1.32,3.71,1.62c1.27,1.63,1.65,1.77,3.44,1.08c3.1-1.2,1.79-0.76,4.13-0.02c1.95,0.62,2.88,0.1,4.64-0.26
                                c3.47-0.72,7.94,1.01,11.46,0.01c3.58-1.01,1.81-0.16,4.65,0c2.88,0.16,1.54-1.1,4.23,0.9c1.7-2.41,1.38-2.29,1.49-5.38
                                c0.1-2.92-1.57-1.45-4.15-1.8c-0.23-10.12,2.17-3.02,9.11-7.49c0.41-2.73-0.21-4.01-0.12-6.46c4.89-4.47,3.92-1.05,6.6-1.21
                                c1.51-4.84-2.46-2.88-2.48-2.88c-2.61,0.31-2.19-2-0.59-2.79c-1.78-1.5-2.48,0.31-1.46-2.75c0.18-0.54,0.21-0.21,0.34-1.01
                                l-0.15-3.47c1.48-1.05,2.98-2.16,4.42-3.31c-0.72-2.71-1.59-5.24-0.64-7.07c1.91-3.67-0.27-0.93,0.58-3.45
                                c0.49-1.45,1.57-0.94,2.72-0.75l1.95-2.79c-2.97-4.93-5.08-0.95-5.22-0.84c0.54,0.82,2.56,1.38,0.64,2.71
                                c-0.86,0.59-2.82,0.54-3.96,0.38l-0.09-3.17l2.78-1.68c-1.04-1.48-1.34-2.21-1.21-4.04c1.92-1.57,2.32-0.02,2.54-2.65
                                c-0.5-0.28-1.87-0.43-2.56-0.23c-1.29,0.37-0.64,0.37-1.68,1.71c-2.22,0.05-4.66-0.4-6.49-1.42c0.59-2.3,3.49-1.78,5.66-3.06
                                c3.5-2.07,3.95-0.86,6.29-2c1.07-2.17-0.48-1.91,1.32-3.97c1.79-2.05,1.05-0.22,0.77-2.7c1.94-0.65,2.95-2.4,1.03-3.84
                                c-0.99-0.75-2.98-1.1-4.45-2.14C195.27,473.9,197.11,476,195.63,469.17z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st0" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="Satna-8" title="सतना : User Count : 6" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M497.78,308.07l-0.75,0.84l1.85,0.54c2.62,1.81,1.7,1.73,2.7,4.26l2.69-0.1c0.1,3.53-1.53,2.94-0.42,7.81
                                c-2.35,1.53-1.4,1.37-2.33,4.28c1.2,1.08,0.72,0.07,2.24,1.02c0.05,1.33-0.65,2.57-0.92,3.64c3.24,2.96,2.37,0.03,4.95,3.39
                                c1.48,1.93,1.42,2.31,4.05,3.66c-0.21,1.87-0.06,0.57-0.74,2.23c2.77,2.85,0.9,1.35,2.37,4.87c0.61,0.71,4.1,0.63,5.3,1.32
                                c-0.5,1.11-0.02,0.58-1.57,1.37c-0.46,0.23-1.05,0.44-1.25,0.56c-1.49,0.89-2.57,3.8-10.69,8.03c-1.64-0.55-0.51-0.92-2.47-1.07
                                l-0.61,3.42l-3.27,0.03c0.69,2.96-1.06,2.59-1.85,4.42c1.23,0.42,4.72-0.64,6.01-1.11c1.66-0.61,3.39-1.49,4.6-2.78
                                c-0.55-1.99-1.02-1.97,1.06-3.38c2.15,0.95,0.61,1.92,2.8,1.17c0.65-0.23,1.5-1.1,2.51-1.52c2.57-1.08,1.07-0.07,2.17-0.93
                                c1.21-0.94,0.66-1.06,2.22,0.14c-0.04-2.3-0.28-2,1.79-3.07c1.51-0.78,1.53-1.19,3.19-0.66c0.94,3.42-1.98,2.23-2.72,4.13
                                c0.62,0.42,4.72,0.24,6.46,0.62l-0.03,2.47c-1.3,0.99-0.97,0.29-2.54,0.8c0.52,2.63,0.02,2.26,1.94,4.09
                                c0.02-0.14,0.29-0.83,0.3-0.86c0.2-1.55-1.26-1.14-0.36-2.59c1.66-1.2,2.21-0.47,3.38-1.87c1.17-1.4,0.67-2.22,2.04-3.41
                                c3,0.6,0.05,0.99,3.58,1.21c5.85,0.37,3.24-0.56,5.75-1.74l8.99-3.25c3.99-0.79,2.85,1.73,5.16,1.64c2.27-2,0.38-1.21,1.49-2.89
                                c0.06-0.1,1.83-1.43,2.19-1.71c4.88-3.75,6.53,2.07,8.56-5.37l-2.35-0.69c-0.55-3.53,0.63-1.25-1.83-3.5
                                c-2.23-2.04-0.79-0.6-3.74-1.47c-0.1-1.01-0.41-2.51-0.39-3.4c0.04-2.23,0.06-1.22,1.15-2.58c-3.95-4.26-2.18-1.46-5.25-7.01
                                c-2.06,0.07-2.98,0.8-4.9-0.45c0.14-2.74,0.92-0.24,1.44-3.49l1.22-11.84c-2.87-1.36-3.35-4.08-6.98-5.68
                                c-1.8-0.79-0.89-0.16-2.05-1.85l1.33-1.81c1.96-2.52,2.4-0.93,3.81-5.97c-1.19-1.08-1.89-2.14-2.63-3.51
                                c-5.75-0.3-1.16,0.85-4.65,1.37l-3.05,0.22c-0.28,0.05,0,0.09-0.94,0.21c-0.15-1.3-0.39-2.25-0.97-3.05
                                c-3.19,1.31-1.58,0.55-2.21,2.27c-2.27-0.95-4.12,1.21-6.19,1.29c-0.44-0.89-0.48-1.1-0.98-2.06c-0.62-1.18-0.51-0.69-1.02-2.09
                                l4.1-1.94l-1.46-3.12c2.27-2.3,2.93-1.57,2.83-4.54c-0.13-3.77-0.29-2.4,2.3-4.77c-1.3-1.99-1.46-1.91-3.78-1.86
                                c0.32,0.96-0.14,5.06-0.66,5.88c-2.03-0.74-0.72-2.16-3.76-2.16c-1.1,0-1.68,0.18-2.51,0.2c-2.12,0.06-0.28-0.22-1.72-0.31
                                l0.95,2.59c1.9,0.02,3.68,1.2,3.59,3.17c-2.87,1.55-1.1-1.07-7.54,1.04c-0.49-0.8-0.49-1.05-0.83-1.45
                                c-1.52-1.76-2.66-1.3-3.72-1.75l-0.22,1.76l-2.19-1c-4.67,3.19-1.89,1.71-2.64,6.15c-0.97,0.04-2.52-0.37-3.06-0.08
                                c-0.22,0.12-1.75,2.1-1.9,2.34c0.57,2.48,1.14,2.87,1.58,5.65l1.29-1.52c9.36,1.69,3.13,0.87,8.65,2.79
                                c-0.38,2.83-2.92,2.49-5.1,1.82c0.61,1.1,0.77,0.56,1.68,2.21c-1.41,1.32-1.97,0.92-3.15,1.72c-1.17,0.79-1.01,1.24-0.89,2.57
                                c-2.8-0.58-0.24-1.06-2.7,0.29c-1.65,0.9-1.01-0.16-2.86,1.13L497.78,308.07z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st7" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="Mandla-8" title="मंडला : User Count : 9" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M503.43,427.72c-1.3-1.9-0.3-0.7-1.42-1.05c-2.4-0.51-0.73-1.06-2.37-2.5c-0.92,1.17-0.28,1.05-1.17,1.85
                                c-1.03,0.93-0.6,0.05-1.87,1.15c-1.41,1.22-1.03,1.93-3.05,2.63c-2.68-0.36-2.51-2.67-4.25-3.77c-1.22,0.33-4.3,1.44-5.04,2.04
                                c1.16,2.57,2.51,1.93,0.96,3.95c-1.72,2.25,0.89,1.13-0.87,3.56c-2.25-0.91-0.42-1.43-3.52-2.23l-0.84-0.14
                                c-0.88-0.19-0.04,0.23-0.78-0.2c-1.12-0.63-0.33-0.06-1.02-1.51c-3.07,1.1-2.94,2.55-6.47,3.43c-0.49,0.98-0.04-0.04-0.02,0.93
                                c0,0.06,0.01,0.19,0.01,0.25l0.1,2.56l-3.16,2.47c2.39,6.3-0.99,6.12,1.47,8.01c1.23,0.94,0.81,0.05,1.85,1.24
                                c0.4,0.46,0.96,2.37,4.23,4.52c2.96-1.39,2.78-0.72,5.95-0.6c3.6,0.13,2.28-0.71,3.92-2.54c1.8-0.05,3.59,0,5.14,0.97l0.6,5.56
                                l-3.45,0.47l-0.18,2.98c-1.33,0.82-1.73,0.1-2.5,1.32c-0.63,0.99,0.28,0.52,1.05,2.14c-0.94,2.03-2.21,2.78-4.48,2.17
                                c-1.44-0.39-2.7-2.02-4.42-1.27c-1.44,0.63-0.29,0.55-2.51,1.06c-3.62,0.83-0.79,0.32-5,2.52l-1.11,0.73
                                c2.03,1.18,2.14-0.41,4.69,1.37c0.24,1.39,0.1,1.09-0.7,2.24c1.98,1.49,1.09,1,2.02,2.91c0.6,1.24,1.17,1.32,2.13,2.69
                                c2.79,4-2.3,1.05,0.08,6.88c10.13-0.81,2.31-0.48,8.89,2.05c5.64,2.16,4.39-2.43,7.57-2.2c2.03,0.14,1.99,1.79,1.53,3.24
                                c2.57,0.32,2.36-1.36,4.42,0.27c1.45,1.15,1.09,2.63,1.47,4.01c1.47-0.42,1.82-1.21,2.66-2.53c7.12,0.62,2.15,2.98,8.74,3.57
                                c1.58,0.14,3.85,0.29,5.34,0.8c1.65,0.57,2.24,1.47,3.75,0.85c0.49-2.75-1.22-0.63-1.32-4.29c1.43-1,1.91-0.63,3.26-2.05
                                c1.48-1.57,0.72-1.19,2.88-1.81l0.66-5.98c1.87-0.14,6.36,1.45,6.85,4.6c1.49-0.83,1.75-0.56,2.91,0.64
                                c-0.35,1.15-2.46,1.11-1.13,3.34c1.97,0.9,5-1.37,7.13,0.28c1.86,1.44,1.52,3.37,4.69,2.36c1.69-2.94,2.14-2.96,1.97-6.35
                                c-0.14-2.89-1.25-4.19-0.33-7.71c1.11-1.43,1.83-0.94,3.07-2.23c1.5-1.57,0.82-1.16,2.62-2.45c-0.47-0.71-4.07-5.78-4.43-6.07
                                c-1.52-1.27-5.28-3.09-6.78-1.38c-0.29,0.33-0.09,7.31-5.69,3.4c-4.13-2.88,2.22-4.37,3.5-6.08c-1.69-1.1-1.35-0.56-3.13,0
                                c-0.62-1.12-0.31-1.33-1.16-2.4c-1.45-1.81-0.68,0.43-1.38-1.85c-0.78-2.54,0.13-2.28,0.59-4.39c-1.96-1-2.47-0.38-4.43-0.76
                                c-0.06-0.66,0.02-1.53-0.06-2c-0.37-2.27-0.25-0.69-0.61-1.68c-0.71-1.96-0.19-0.76,0.34-3.01c-3.28-0.59-2.87,3.6-9.44,2.54
                                c-0.31-1.63-0.22-1.75,0.35-3.09c-2.37-0.33-2.47,0.97-4.33,1.47c-2.34-0.37-0.92-0.44-2.59-1.07l-5.27-1.49
                                c-1.24-0.14-1.07,0.55-2.53-0.29c0.39-1.84,1.22-1.56,0.87-3.42c-0.43-2.26-0.87-0.32-1.81-2.58c0.58-0.41,4.44-0.37,4.06-4.51
                                c-0.15-1.69-0.07-0.28-0.67-1.62c-0.52-1.16-0.21-1.11-0.64-2.04c-0.58-1.25-1.75-1.23-3.1-1.7
                                C506.62,428.74,506.17,428.65,503.43,427.72z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st4" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="Damoh-8" title="दमोह  : User Count : 8" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M408.18,363.37l0.24,0.19c-0.67,2.21-1.74,2.13-2.38,3.54c1.64-0.86,0.12-0.76,1.98-0.51
                                c1.59,2.5,1.32,4.06,4.29,5.23c5.21,2.04,4.66-0.07,6.79,2c-0.9,1.38-1.41,1.18-1.75,2.99c0.58,0.72,2.23,1.74,3.13,2.24
                                c4.77,2.66,2.2,1.41,1.85,5.53l3.97,1.99l-1.2,2.42c-1.85,0.45-0.55,0.2-2.27-0.15c-0.42,7.68,0.4,3.58,1.76,8.12
                                c-1.57,1.31-1.39,0.19-2.58,2.01c-2.37,3.62-2.77,2.1-4.79,3.94c-1.21,1.1,0.69,0.21-1.22,0.91c-0.02,0.01-1.22,0.17-1.64,0.33
                                l1.14,1.54c-1.38,1.11-2.01,1.81-0.18,3.02c1.93,1.28-0.67-1.47,2.56,2.32c-0.52,1.64-0.01,0.54-1.36,1.72
                                c1.35,1.73,1.73,1.07,0.45,3.48c-1.06,2-1.2,1.66-3.38,1.53l0.3,1.74c2.23-2.63-0.73,0.48,3.47-1.62
                                c0.75-0.38-1.14-0.65,1.22-0.28c1.55,0.24,1.7,1.57,1.88,2.21c1.99-0.33,0.45-0.62,2.48-0.35c0.87,1.84,1.22,3.49,2.02,5.43
                                c1.92-0.79-0.23-0.57,1.61-1.23c0.26-0.09,0.85-0.04,2.02-0.56c2.18-0.97,4.92-4.39,6.79-5.93c1.88-1.55,2.36-0.18,4.22-1.02
                                c1.53-0.69,6.05-3.72,7.85-4.82c1.48-0.91,4.02-4.88,4.22-5.39c0.84-2.14-0.54-0.12,0.3-1.83c1.75-0.94,2.76-0.11,4.29-1.9
                                c0.97-1.13,1.26-2.94,1.85-4.62l2.35,0.52c1.56-1.83,2.46-4.36,4.14-5.95c7.31-6.93-0.18-6.7-5.61-7.87
                                c-0.43-4.04-1.57-1.24,0.15-5.67c0.67-1.72,2.28-2.77,2.25-4.33c-0.05-1.88-0.8-0.47-0.17-3.32c0.36-1.62,1.03-1.79,0.05-3.32
                                c-1.17-1.82-2.83,0.22-0.43-5.61c-2.17-3.06-0.39-0.54-1.01-2.68c-3.35-1.21-5.79,0.24-7.25-3.44c0.49-0.9,0.34-0.31,0.8-0.82
                                c0.64-0.7,0.23-0.11,0.66-0.77c0.27-0.4,0.27-0.72,0.63-1.43c1.88-3.75,2.28-2.11,3.1-6.13c0.55-2.68,0.18-0.77,1.99-2.27
                                l0.15-2.66c-2-0.96-2.42-0.17-2.21-2.72l2.96-0.81c-0.45-2.18-1.69-1.44-3.5-1.7l1.13-2.07c-1.62-1.61-3.18-3.48-4.63-4.99
                                c-2.43,1.48-1.25,1.69-3.6,2.24c-2.58,0.61-2.3,1.19-5.9,0.19l0.52-2.49c-1-0.75-1.69-1.07-2.94-2.07l-1.4,1.26
                                c0.63,1.66,0.95,0.44,0.65,2.67c-3.17,0.42-2.26-1.48-6.58,0.2l-1.74-1.75c-0.94,0.67-0.5,0.68-1.6,1.25
                                c-1.2,0.62-0.58-0.12-1.85,0.79c1.46,3.02,1.27,0.48,0.64,4.07c-2.1,11.98,0.03,9.6-6.83,11.25c0.89,2.07,0.9,0.37,1.81,2.11
                                c-1.99,1.87-4.2,0.05-7,0.96c-0.74,0.24-2.13,1.17-2.94,1.4c-1.98,0.57-0.84-0.66-2.53,0.58c-0.83,2.14,1.8,5.34,2.42,8.15
                                c-1.57,0.89-1.6,0.2-3.27,1.48C410.05,362.91,410.07,362.98,408.18,363.37z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st0" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="Khandwa-8" title="खंडवा : User Count : 6" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M191.72,494.47l-0.11,0.96l4.52,0.7l1.21-1.81c1.71,0,3.71-0.58,4.1,1.13c0.56,2.47-1.37,2.01-2.6,3.1
                                l1.4,4.09c1.03-1.78,2.17-1.66,3.67-0.67c0.12,0.08,0.69,0.58,0.77,0.65c1.24,1.06,0.92,0.77,1.6,2.4
                                c-0.96,1.43-0.45,0.27-1.36,1.47c-0.46,0.6-0.29,0.72-0.85,1.26c-1.54,1.46-0.64-0.8-2.77,0.82c-0.06,1.15,1.04-0.06,0.09,2.18
                                c-0.34,0.8-0.63,0.56-0.82,1.66l0,0.93c0.03,1.85,0.56,4.03,1.02,6.12c-1.49,0.63-1.61,0.34-2.72,1.46
                                c-1.19,1.21,0.56,0.31-1.86,1.58c0.12,3.47,0.78,2.37-0.56,5.34c1.55,0.48,1.09-0.05,1.91,1.12c-0.97,2.57-2.05,0.06-0.97,2.38
                                c1.63,0.14,3.23-2.16,4.14,1.15c0.79,2.87-0.21,3.62-2.78,2.66c-5.56-2.07-3.85,6.51-3.55,7.48c1.82-0.47,2.68-1.76,3.86-0.89
                                c1.73,1.29-0.24,3.58,2.56,3.09c0.83-0.15,1.78-1.53,3.65-2.2c2.22-0.79,2.9-0.07,4.33-1.34c1.25,1.68-0.24,1.31,2.11,1.94
                                c0.99,0.26,2.25,0.62,2.35-0.42l1.45-1.46c2.97-0.54,4.59,0.4,7.16,1.36c7.46,2.77,4.39-0.33,15.12,1.13
                                c2.57,0.35,1.2-0.48,3.03-0.58c2.46-0.14,0.17,0.51,2.49,1.52l1.5-2.79c1.64-0.41,1.65,0.13,2.64-0.2
                                c2.59-0.88-0.35-2.14,5.02-0.37c7.25-6.74,4.66-2.6,5.91-6.95c1.64-0.1,0.51-0.08,1.9,0.5c0.23-1.47-0.5-2.44,1.04-2.64
                                c1.4-0.18,0.48,0.36,1.58,1.46c1.03-1.21,0.75-3.38,2.44-5.02c0.12-0.12,1.08-0.86,1.2-0.92c1.39-0.72,3.88,1.13,5.86-0.59
                                c0,0-2.45-1.93-1.22-5.89l2.36-0.12c2.49-5.39,0.17-3.69-1.82-6.19c-1.02-1.29,0.35-0.84-1.6-1.89c-1.8-0.76-3.88,0.35-6.13-0.03
                                c-4.62-0.77-1.01,0.08-4.57,0.62c-1.97-1.56-0.86-2.26-4.33-1.97c-3.08,0.25-0.58,0.92-3.48,1.07c-0.03-0.04-2.68-4.71-2.69-4.75
                                c-0.71-1.84-0.04-4.48,1.07-5.78c-2.64-2.01,0.12,0.56-1.61-0.77c-1.8-1.38-0.21-2.27,0.04-3.27c0.03-0.12,0.06-0.23,0.08-0.36
                                c0.08-0.5,0.31-5.64,0.18-6l3.22-3.13c-4-2.87-1.74-1.41-3.44-1.6l-3.37-1.23l-3.16,3.18c-1.66-0.67-0.37-0.93-2.03-0.92
                                c-0.79,0-0.8,0.41-2.15,0.45c-2.92-2.71-1.49-1.75-2.06-4.47c-3.76-1.91-1.37-1.26-3.49-3.48c-1.88-0.22-2.19,0.38-3.92-0.05
                                c-1.85-0.46-1.64-1.07-3.85-0.24c-4.77,1.79-2.48,3.37-3.06,4.37c-0.92,0.97-2.49,0.23-6.48,2.75c-2.36,1.49-5.15,1.76-7.91,1.33
                                c-0.97-1.1-1.36-2.15-2.77-2.42c-2.01,1.6-0.55,2.06-1.43,4.26c-2.56,1.81-3,0.05-5.79,1.66
                                C194.14,494.02,193.75,493.48,191.72,494.47z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st4" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="Vidisha-8" title="विदिशा : User Count : 6" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M297.6,395.98c0.88,0.97,0.72,0.73,1.6,1.46l1.49-0.27c0.95,0.79,3.54,2.93,4.69,2.44
                                c1.85-2.71-1.27-1.97-0.72-5.6c1.62-0.23,2.57,0.53,3.45,2.04l4.57-0.69c2.21,0.36,1.84,1.76,3.07,3.07
                                c1.87,2.02,2.5,2.15,4.25,3.25c2.99,1.89,1.87,0.22,5.08,0.26c1.71,2.14,1.06,1.23,3.12,2.55c0.94,4.59-1.17,1.22,4.11,4.96
                                c1.14-0.68,1.7-1.04,2.07-2.42c-1.09-1.59-2.32-1.4-4.02-2.19c-1.75-8.11,6.24-3.21,6.39-3.23l3.26-1.69l0.21-3.18
                                c1.34-0.2,2.43-0.63,3.44-0.99c2.56-0.93,0.17-0.52,2.59,0.15c1.36-5.1,2.93-3.61,3.71-6c0.92-2.82,1.5-4.82-0.29-7.37
                                c-1-0.02-3.13,2.17-1.26-2.85c0.97-2.62-0.61-3.76,2.33-4.27c-0.95-0.33-1.03,0.19-1.39-1.01c1.67-1.49,0.66,0.46,2.21-1.08
                                c-0.7-1.98-0.37,0.61-2.29-1.77c0.36-1.12,2.12-3.43,1.9-4.71c-0.36-2.06-0.82,0.2-1.47-1.92c-0.54-1.76,0.19-0.91,0.95-2.26
                                c1.4-2.49-0.95-6-4.73-6.95c-1.54,1.33-0.76,2.29-2,4.17c-2.87-0.15-1.65-2.31-4.39-1.78c-1.08,0.21-0.82,0.78-2.27-0.34
                                c-0.6-0.46-0.99-0.8-1.01-1.66c1.75-2.32,1.98-0.69,2.88,0.02l1.24-4.64c-1.98-1.53-1.38-1.07-2.57-3.44
                                c0.08-0.06,2.94-0.9,2.65-3.58c-3.03-0.85-0.83,1-5.1-1.46c-0.03-1.79,1.43-1.95-1.49-4.32c-1.16,1.67-0.32,3.26-2.24,3.52
                                c-1.75,0.24-0.49-0.52-2.43-0.17c-1.14,0.21-0.01,0.36-1.87,0.77c-0.59-0.84-0.78-1.93-1.43-2.5c-0.91-0.8-1.18-0.36-2.71-1.16
                                l0.46-2.7c-1.79-0.2-3.78,0.58-5.42,0.41c-4.53-0.48-1.6,1.21-10.13-0.28c-2.01-0.35-1.56,0.8-4.3,1.13
                                c-0.57,2.42,0.1,1.29-1.85,2.47c-4.51,2.74-3.39,0.21-6.47,0.53c-1.77,0.18-1.16,0.89-3.16,1.17c-3.99-2.2-3.14-3.54-2.92-7.18
                                l-2.33-0.95c-5.1,6.21-0.42,5.49-1.21,10.34l-0.17,2.14l-2.37,1.09c0.69,1.8,0.01,1.53-0.63,2.92c-1,2.18,0,0.64-0.19,3.22
                                c-1.34,0.82-1.82,0.77-2.42,2c1.31,1.68,0.69-0.47,2.29,1.69c0.85,1.15,1,0.78,0.89,3.28c-0.18,3.85-0.67,3.39,1.15,7.15
                                c2.45,0.32,4.21,0.98,5.34,4.4c0.98,2.98,0.25,1.45,2.06,2.69c1.57,1.08,0.37,0.75,1.93,2.87c2.75,0.06,1.08-1.51,3.62-0.51
                                c4.29,1.68,2.81-0.66,5.84,1.18c1.81,1.1,0.7,0.22,1.09,1.19c1.31,3.22,0.98,0.82,1.96,2.71c0.16,4.27-1.23,3.72-4.14,4.67
                                c-1.89,2.96-0.49,4.39-4.95,5.4C297.22,394.6,296.45,393.94,297.6,395.98z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st7" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="panna-8" title="पन्ना : User Count : 4" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25"
                                            d="M496.25,329.96c-0.55-1.93-0.26-2.72,1.75-2.98l0.89,2.33C497.67,330.74,498.07,330.74,496.25,329.96
                                L496.25,329.96z M501.02,282.41c1.85-1.93,1.91-0.52,2.53-2.25c-0.99-0.59-1.14-0.84-2.5-0.63c-1.19,0.18-0.02,0.02-1.19,0.34
                                c-3.04,0.81-0.89,1.8-0.85,4.2c-2.87,0.57-0.84-0.06-1.66-0.31c-3.28-1.02-1.06,0.82-3.4,0.8c-1.74-0.01-2.49-2.25-4.81-1.25
                                c-1.7,0.74-2.6,2.54-3.77,3.26c-0.93,0.58-1.72,0.5-2.48,1.04c-1.42,1.02,0.11,0.6-1.54,1.92c-2.19,0.46-4.87-1.21-6.93,0.53
                                c-1.39,2.06,3.48,6.74,3.49,6.74c-0.07,4.16-2.82,4.84-5.22,7.26c-2.59,2.61-1.33,5.7-5.01,6.97c-2.49-1.71-0.76-2.39-3.06-2.86
                                c-1.87,0.74-1.29,1.8-2.02,3.71c-0.86,2.24-1.09,1.68-2.83,2.78c1.23,1.48,1.21,0.94,2.83,1.65c1.55,7.77,0.08,3.72,0.04,6.35
                                c-0.03,1.92,0.98,0.08,0.23,2.63c-0.44,1.51-0.82,0.47-0.35,2.92c0.42,2.24,1.63,4.12-0.68,5.73c-3.12,2.16-0.55-2.48-4.06-1.95
                                c-0.04,2.79,1.7,0.22,0.95,3.76c1.84,0.62,2.63,0.64,2.82,2.61c-1.29,1.87-1.74,0.78-3.13,1.45c0.68,1.39,0.76,0.71,2.2,1.81
                                c0.19,3.42,0.01,2.99-2.15,4.63c-0.07,2.42-0.61,3.45-1.96,5.51c-3.66,5.62-0.05,2.66-3.21,4.23c4.19,3.45,5.77,1.82,6.94,2.62
                                c0.34,0.49,1.17,2.97,1.17,3.38c0.02,1.2-0.85,2.24-1.17,3.61c4.4,4.66,1.31,2.45,1.48,7.27c0.74,0.81,1.71,1.2,2.81,1.14
                                c5.58-0.28,4.69-9.8,8.61-12.28c1.87-1.19,1.65-0.66,3.27-0.2c1.59,0.45,1.21-0.03,2.64,0.5c1.77,1.82-0.31,1.7,2.93,2.77
                                l1.6-4.73c1.27-0.05,2.23,0.71,3.37,1.5c3.26,2.25-1.22,1.59,2.91,3.66c4.79,2.4,2.49,3.04,6.56-0.18
                                c-0.57-2.02-1.06-2.2,0.64-3.81c2.05-1.94,0.97-1.53,1.02-3.88l3.61,0.12l0.61-3.21c2.93-0.68,1.67,1.43,5.05-0.23
                                c1.7-0.83,2.05-1.83,3.1-2.58c1.7-1.21,1.82-0.35,3.13-2.59c0.66-1.12,0.37-1.05,1.35-1.72l1.66-0.8
                                c-2.14-0.87-3.16,0.12-4.03-2.04c-0.28-0.68-0.36-1.88-0.57-2.37c-0.7-1.65-0.13-0.33-1.72-1.73l0.72-2.14
                                c-2.63-1.74-3.89-2.83-4.52-5.16c-2.96-0.38-2.89-0.63-4.61-2.83l1.26-2.64c-1.19-0.86-0.71-0.18-2.25-0.8l2.69-11.77
                                c-1.46-0.89-1.46,0.23-2.6-0.91c-1.09-1.08-0.01-0.44-0.81-2.29c-0.98-2.28-2.55-0.97-3.8-1.78c-0.68-2.44,0.36-2.04,2.35-3.84
                                c2.81-2.54,3.73-3.29,7.21-5.17c3.42-1.85,1.09-0.71,2.15-3.07c1.98,0.1,1.29,1.12,3.21-0.18c-0.89-1.84-1.64,0.08-1.22-3.5
                                c1.9,0.47,0.78,0.78,2.37,1.05c1.5,0.26,1.33,0.07,2.52-0.62c-0.49-0.37-2.27-1.51-3.13-1.94c-1.63-0.83-2.12-0.13-4.24-0.91
                                c-3.01,2.83-0.52,4.63-3.03,5.58c-1.42-1.98,1.39-4.36-0.23-8.11c-0.46-1.07-1.09-2.58-1.52-3.74
                                C501.87,283.1,501.58,283.82,501.02,282.41z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st8" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="dewas-8" title="देवास : User Count : 6" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M260.27,447.54c-0.89-2.16,0.37-0.89-1.29-1.95c-2.29,1.44-1.27,0.11-2.85,0.66
                                c-2.72,0.93,0.27,0.87-1.42,2.74c-2.82-1.22,0.6-0.51-1.4-2.97c-2.7-2.53-8.44,3.4-9.9,3.53c-1.02,0.09-0.54-0.67-2.36,0.23
                                c-2.21,1.09,0.15,0.33-1.85,1.63c-1.59,1.04-3.04,0.92-4.14-0.56c-1.53,1.76-0.16,0.83-2.52,1.5c-2.24,0.64-0.73,0.25-2.41,1.45
                                c-1.49-0.91-0.02,0.09-0.84-0.91c-0.68-0.84-0.15-0.15-0.6-0.89c-1.51-2.48,0.24,0.13-1.81-1.37c-1.32-3.57,1.6-2.7-2.22-6.54
                                c-3.21-3.24-2.76-0.08-2.49-5.92c-1.25-0.88-1.44-0.78-2.21-2.34l2.56-1.31c-0.45-2.4-0.67,0.06-0.18-3.32
                                c0.36-2.49-0.76-0.5-0.55-2.67c1.01-0.61,0.13-0.36,1.85-0.61l1.31-1.29c1.4-0.6,0.97,0.09,1.96-0.6
                                c1.94-1.37-0.46-3.72-1.96-4.05c-1.01-0.23-1.03-0.13-2.15-0.45c-6.41-1.86-2.27-1.62-4.66-2.81c-3.35-1.67-7.97,2.3-17.39-0.6
                                c-5.25-1.62-1.32-0.34-4.6-0.87l0.1,2.35c4.7-2.01,5.15,1.13,3.91,1.98c-1.37,0.95-4.9,1.67-5.61,0.14
                                c-0.46,5.07,4.64,3.58,3.8,8.97c-4.12,2.92-4.36-3.99-4.91-5.19c-1-2.19-0.67-3.18-1.58-4.57c-1.41-2.15-1.24-1.38-1.54-4.2
                                c-2.3-0.84-3.39-1.08-0.46-2.91l-2.06-2.8c-0.17,0.18-0.16,0.12-0.6,0.71c-0.91,1.2-1.32,2.56-0.87,4.18
                                c0.3,1.1,3.38,4.99-0.05,8.12c0.91,0.69,3.87,3.39,3.99,4.57c-1.82,6.3-1.54,3.9-6.23,4.49c-0.75,4.4,5.39,2.97,5.55,11.1
                                c4.67,2.69,6.31,7.98,8.06,13c2.72,0.27,1.73,0.79,4.37,0.86c1.78,0.04,2.34,0.3,2.51,2.29c1.67-0.57,0.06-0.59,2-0.66
                                c0.77,3.51,1.35,0.64,0.35,4.49c-1.57,0.55-0.96,0.58-2.52-0.2l-0.77,1.94c-1.59-0.33-2.36-0.96-3.88-0.13
                                c-0.32,0.17-0.99,0.7-1.01,0.71c-2.01,1.04-0.44-0.85-2.76,0.79l1.89,1.1c-1.51,1.5-1.22,0.16-1.1,2.35
                                c0.02,0.45,0.43,2.91,0.62,3.38c0.45,1.09,2.88,2.36,4.18,3.28c1.84,1.29,3.81,1.03,4.96,2.97c1.24,2.09-1.04,3.56-1.21,4.14
                                c0.28,2.28,0.93,2.31,2.37,3.8c6.54,0.62,6.87-2.44,12.69-3.54c0.67-2.52,0.86-4.34,4.51-5.19l7.99,0.64
                                c1.84,1.98,0.46,1.15,2.95,3.18c2.29,1.86-0.21,2.01,1.89,4.2c1.91,1.03,0.8-0.36,3.24-0.01c1.24,0.18,1.7,0.76,2.83-0.9
                                c1.02-1.51,1.06-6.15,1.55-8.1c2.06-1.25,4.15-1.83,5.76-2.98c2.79-2.01,3.41-1.7,6.74-1.81c4.71-0.15,10.73-1.15,10.91-6.77
                                c-2.37-2.79-2.28-0.73-2.77-5.02c-1.79-0.81-3.06-1.21-3.41-1.87c-1.01-2.71,0.33-0.86,0.18-2.56c-0.19-2.3-0.51-0.05-1.32-2.28
                                c0.16-2.83,1.38-0.9-0.02-3.56C260.55,450.22,260.48,449.37,260.27,447.54z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st6" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="narmadapuram-8" title="नर्मदापुरम : User Count : 695" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M372.21,450.77c0.33-4.79-0.64-1.43-1.17-4.35c-0.31-1.71,0.83-3.53-0.34-5.34c-1-1.56-3.19-0.85-5.23-1.12
                                c-3.11-0.41-3.23-3.59-7.82,1.39c-1.88,2.04-3,1.13-4.58,2.44c-1.75,1.45-0.6,2.61-3.64,2.86c-3.76,0.32-2.17-0.65-4.5-1.44
                                c-7.87,4.63-3.86,5.75-5.69,7.15c-2.64,0.8-2.08-0.61-3.87-0.92c-1.84-0.32-1.41,1.28-3.48,0.11c-5.5-3.09-3.67,0.83-7.34-0.28
                                l0.15-2.87c-1.65,0.78-0.77,1.39-3.13,1.71c-1.26-1.43-0.43-1.27-1.06-2.85c-4.25,0.61-4.27,3.87-6.05,6.03
                                c-1.76,2.13-1.81,1.64-4,1.53c-2.73-0.13-1.29,0.7-3.34,2.13c-2.03-0.42-2.63-1.64-3.93,0.3c-0.93,1.37-0.95,2.7-2.07,4.09
                                c-1.83,0.49-2.49-0.1-4.1,0.75c-1.79,0.95-0.28,1.17-2.78,1.21c-3.88,0.06-2.53,1.53-5.88,2.35c-1.39,0.34-2.14-0.13-3,0.92
                                c-0.87,1.07-0.36,1.88-1.79,2.64c-3.41,1.81-3.69-1.84-4.93-2.95c-1.22,0.23-2.37,1.53-2.94,2.74l3.03,0.81
                                c0.68,1.87-0.71,0.8,0.58,3.04c1.21,2.11,0.82,2.36,0.97,4.73c1.82,1.96,1.18,0.73,1.79,4.03c1.01,5.52,0.05,1.98,2.53,5.34
                                c2,2.73-0.94,7.83,5.86,7.9c1.44-2.56-0.21-0.85,2.32-2.58c2.28-1.55,0.35-3,5.75-7.66c2.47,2.88-0.3-0.91,6.27,3.17
                                c1.91,1.19,1.7,0.19,3.13-0.32c1.41-0.5,1.92,0.1,3.7,0.14c0.9-1.9-0.59-0.63,0.79-1.9c2.75,0.3,1.28,2.1,4.05,0.67
                                c2.18-1.13,1.87-2.03,4.22-1.37c0.75,1.79-0.18,3.26,0.22,5.48c1.45-0.14,2.64-1.94,4.04-2.72c2.05-1.14,3.21-0.62,5.67-0.48
                                c5.88,0.34,8.72-5.19,14.62-5.12c5.24,0.06,2.39-0.15,5.4-1.52c1.45-0.66,4.68-0.62,6.29-0.35c2.26,0.38,2.2,1.56,3.65,2.79
                                c2.74,0.13,2.83,0.53,4.94-1.07c3.11-2.36,2.51-1.13,4.06-2c-0.78-3.67-1.77-0.45-3.24-4.19c0.96-1.39,3.13-2.23,2.03-4.44
                                c-0.34-0.69-2.41-3.03-3.07-3.93c-0.07-1.92,0.01-3.85,1.34-5.38c2.14-0.55,4.42,0.27,6.6,0.32c0.92-0.7,0.9-1.21,1.85-1.85
                                c0.92-0.62,1.68-0.63,2.77-1.22c0.03-0.07,1.13-4.97,1.12-5.01c-1.62-0.62-1.41,0.74-3.52,0.69
                                C372.74,451.67,376.28,453.11,372.21,450.77z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st4" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="sheopur-8" title="शेओपुर : User Count : 12" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M238.24,213.91l-0.88,2.61c-1.99,0.48-1.98-0.94-3.32,0.59c-0.55,0.62-0.82,1.72-1.9,2.95
                                c-3.16,3.6-0.95,4.12-1.64,7.06c-1.5,0.77-2.74,0.18-3.25,1.68c-0.59,1.74,0.88,1.57,2,2.51c-0.4,3.76-0.54,0.53,0.24,3.61
                                c0.46,1.84-0.36,2.49,0.18,5.11c0.5,2.42,0.28,2.35,1.61,4.56c0.96,1.6,1.35,3.72,1.81,4.34c4.09,5.49,1.7,4.37,5.93,5.8
                                c1.64,0.55,1.99,1.28,4.08,2.11c2.27,0.91,2.05,1.29,3.73,2.3c4.1-0.8,4.81-2.49,9.86-0.13c1.25,2.14-0.74,1.68,1.52,3.01
                                c3.08-1.39-0.32-1.88,5.72-1.93c1.49-0.94,0.41-0.86,1.97-1.57c0.9-0.41,1.47,0.06,1.69-1.71c-2.84,0.3-1.43,0.79-4.5-0.35
                                c-0.07-1.39-0.05-1.99,0.55-3.19l5.49,0.18c1.68-2.56-1.46-1.36,3.35-2.75c-0.65-2.59-1.63-3.16,2.22-3.47
                                c-2.03-6.05,4.67-2.66,8.38-5.55c-0.74-0.52-1.75-0.36-2.65-2.99c-0.6-1.74,0-2.06,1.19-3.68c-1.52-0.8-1.23-0.46-1.77-2.07
                                c2.34-3.61,2.13-0.07,4.8-1.25c-1.1-1.17-2.62-2.06-3.1-3.06c0.63-1.76,1.02-2.22,2.72-1.81l0.94-4.43l7.38,0.71
                                c-0.93-2.14-1.43-0.08-1.81-2.78c-0.24-1.73,0.48-2.58,0.08-4.62c3.59-2.91,3,0.46,5.37,1.49c1.66,0.73,1.64-0.06,3.48,1.37
                                c1.58,1.23,1.02,1.85,2.49,2.01c1.54-1.35,0.22-1.27,0.91-3.5c3.31-0.8,2.86,1.78,4.41-3.16c-3.64-1.35-3.97,0.85-6.79,0.5
                                l-0.8-3.38c2.6-0.47,0.65,1.24,3.1-0.53c2.02-1.45,2.04-0.55,4.39-1.3l-0.1-2.5c-1.27-0.75-1.39-0.56-2.35-1.92l-1.61,1.52
                                c-6.72-4.01-5.56-5-9.46-7.72c-2.29-1.6-2.18-5.05-9.92-1.9c-3.49,1.42-1.94,2.48-4.35,3.97c-3.16-0.83-2.67-4.48-4.69-6.72
                                c-1.57,0.11-0.67,0.66-2.27,0.05c-0.96-2.18,0.86-1.76-1.08-3.29c-2.59,1.34,1.05,1.34-4.87,2.38c-3.88,0.68-1.92,4.47-8.66,6.09
                                c-3.97,0.95-1.5,1.21-3.83,3.63c-7.54,7.84-1.99,6.5-5.61,8.4c-1.48,0.78-0.96-0.27-2,0.92c-0.59,0.67-0.3,1.18-1.84,1.83
                                C241.98,215.14,241.82,212.88,238.24,213.91z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st0" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="sehore-8" title="सीहोर : User Count : 7" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M276.55,385.98l-3.55-0.87c-4.56,3.99,0.44,5.51-2.17,9.21c-5.69,8.06-0.29,1.48-6.79,7.22
                                c-2.81,2.48-3.2,7.3-3.24,10.78c-0.05,4.62-4.45,5.21-6.58,6.98c-0.6,2.6,0.78,8.94-3.75,8.49c-3.3-0.33-6.39-5.2-6.64-5.41
                                c-0.62,1.18,0.59,0.64-0.66,2.54c-1.94,0.19-0.46,0.1-1.56-0.37c-3.37-1.46-2.16-1.34-2.95-3.2c-3.08,0.19-0.77,0.16-3.09-0.58
                                c-1.05,3.74,1.06,2.56-2.25,5.17c-2.89,2.27-1.9,1.46-4.88-0.02c-0.52,0.26-2.63,1.35-2.99,1.57c1.7,1.15,1.73,0.05,1.57,2.19
                                c-2.49,1.58-1.73-0.52-4.1-0.72c0.57,2.81,0.3,0.89,0.05,3.2c-0.22,2.09,0.24,0.72,0.35,2.9l-2.36,1.52l1.94,1.11
                                c0.07,1.76-0.76,2.6-0.09,3.88c0.82,1.58,1.19,0.68,2.39,2.01c0.19,0.21,2.11,2.57,2.15,2.67c0.69,1.64-0.2,1.64-0.01,3.5
                                c2.69,1.38,1.48,1.22,3.31,2.6l4.5-2.41c1.72,0.58,0.56,1.78,3.09,1.07c1.89-0.53,0.26-0.34,0.4-2.17
                                c3.27-1.17,4.95,0.87,7.33-1.92c1.44-1.68,4.39-2.97,6.62-3.37c3.06,1.55-0.01,1.09,3.58,1.15l3.99,0.2
                                c1.19,1.24,0.63,3.38,1.3,5.2c0.92,2.49,2,1.55,0.49,4.64c1.25,1.97,2.26,1.69,1.04,4.78c1.9,0.73,0.27-0.44,2.33,1.21
                                c1.62,1.29,1.1,0.19,1.42,2.12c0.38,2.28,1.67,2.25,2.97,4.95c4.54-1.57,2.39,0.13,5.17,0.15c1.59,0.01,1.96-2.26,4.21-2.62
                                c1.71,1.58,0.46,3.61,3.09,3.46c2.07-0.11,1.76-1.78,2.93-3.3c2.06-0.61,2.89-0.03,5.06-1.45c3.17-2.08,0.81-1.52,5.15-1.42
                                c3.84-2.95,1.76-0.65,5.43-2.06c0.82-1.19,1.19-2.95,2.26-4.3c1.74-2.18,1.93-0.4,4.11-0.11c3.49-4.76,4.95,0.66,7.54-4.44
                                c1.07-2.1,0.29-2.18,2.53-3.55c2.22-1.36,1.47-2.11,4.21-1.46c0.81,2.06-0.39,1.19,0.48,2.72c1.84-1.06,1.44-2.13,3.42-1.93
                                c1.2,1.9,0.23,1.39,0.01,3.25c1.93,0.08,1.53-0.96,3.75-1.06c2.1-0.09,2.05,0.58,3.25,0.95c0.41-2.08-0.37-1.7-0.81-3.21
                                c-0.58-2.02,0.81-1.53,1-3.3c0.44-4.23-2.99,0.49-5.37-0.43c-0.71-2.21,1.01-1.89,0.63-3.67c-3.36-0.92-7.45,0.92-10.08,2.93
                                c-3.2,2.46-6.3,0.04-9.45,3.92l1.17,1.85c-7.55,0.76-3.78,0.1-9.08-2.44l-2.13,1.41c-1.26-1.03-0.81-1.08-1.46-2.52
                                c-2.04-0.6-4.06-1.34-5.99-2.34c-0.45-1.74,0.69-1.37-0.27-2.91l-5.67-7.41c0.8-1.31,1.41-0.95,1.74-2.63
                                c-1.9-1.79-3.71-1.13-5.7-1.74c-0.96-1.69-0.25-1.44-1.75-3.06c-1.47-1.58-0.76-0.87-1.69-2.68c-1.49-2.92-2.53-2.58-3.61-4.33
                                c0.87-2.12,2.25-1.86,2.02-4.33c-1.43-1.1-2.43-0.29-2.67-2.23c-0.16-1.3,0.42-2.66,1.35-3.47c1.35,0.54,1,0.91,1.77,2.11
                                c3.03-4.06,1.27-4.05,1.43-5.38l3.27-0.77c0.14-0.64,0.23-8.29,0.16-9.25c-0.33-4.53,0.07-4.42-4.36-6.3L276.55,385.98z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st8" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="rewa-8" title="रीवा : User Count : 12" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M547.59,297.23l-1.11,0.45c-0.06,2.07,0.13,0.86-0.5,2.07c-1.69-0.49-0.84-0.26-0.78,0.92
                                c2.28-0.03,0.14,0.05,2.06-0.8c1.06,2.19,1.23,2.5,2.92,4.12l3.93,3.27c-1.68,5.41-1.04,8.29-1.65,12.33
                                c-0.45,2.97-1.19,0.9-1.35,2.66c1.91,0.87,2.08,0.21,4.03-0.01c1.34,1.37,1.86,2.93,2.86,4.11c7.17,8.36,0.45,0.82,2.49,9.22
                                c2.25,0.16,3.85-1.51,5.94-2.54c1.95-0.95,4.04-1.69,6-2.74c2.01-1.07,3.25-2.27,5.5-3.27c2.22-0.98,4.5-1.42,6.78-2.39
                                c5.29-2.24,3.01-3.45,13.05-3.59c1.26-0.02,1.89-0.24,3.21-0.67c3.93-1.29,1.43-2.63,5.29-3.56c2.72-0.66,0.93,0.26,3.11,1.02
                                c2.3-0.6,1.41-0.98,3.78-1.52c4.13-0.95,1.11-0.16,3.25-2.43c2.86,0.82,5.3,0.58,8.01-0.35c1.25-0.43-0.08-0.92,3.99-0.23
                                c2.61,0.44,0.47,1.31,3.64,1.04l-0.59-4.89c-2.32-1.07-2.47,1.24-4.3-0.16c-0.26-1.15,0.72-4.21,0.86-6.12
                                c-2.15-0.2-0.88-0.06-1.66,1.83c-1.82-1.19-0.88-0.73-3.22-0.89c0.4-1.23,0.72-0.6,1.09-1.76c0.52-1.64-1.14-0.73,0.87-2.33
                                c-1.41-0.47-4.65-0.03-6.1,0.29c-2.68-2.92-1.81-1.6-5.08-3.26c-3.52-1.78-2.61-0.82-5.79,0.23c-0.94-0.98-1.4-1.27-2.15-2.34
                                c-1.37-1.95-0.69-0.67-2.18-2.15c-0.12-0.27,1.55-5.27-0.47-7.42c-0.3-0.32-2.67-1.41-3.21-1.64c-2.29-1-1.7-0.74-3.89,0.14
                                c-0.85-0.49-3.47-2.28-4.16-3.06c-3.33,1.58-2.07,0.97-3.96-0.95c-1.48-1.5-1.72,0.34-4.54,0.29c-1.65-2.35-1.15-1.57-0.06-2.93
                                c-1.78-3.55-1.82-2.64,0.61-4.89c-0.92-0.44-1.3-0.31-1.74-0.61l-0.81-1.05c-0.04-0.09-0.08-0.27-0.11-0.34
                                c-0.03-0.08-0.05-0.24-0.09-0.36l-4.06,0.6c1.7,1.65,1.1,0.58,0.91,3.01c-3.04-0.04-0.86-1.51-3,0.98
                                c0.94,1.77,0.6,0.17,1.82,1.72c-0.87,1.43-0.46,1.55-1.82,2.51c-1.76-0.4-5.36-2.07-6.37-3.16c-0.06-0.07-0.14-0.17-0.2-0.24
                                c-0.01-0.01-0.63-0.6-0.67-0.63c-3.74-3.03-1.29-3.03-4.42-2.76l0.53,3.64c-1.47-0.17-1.11,0.33-1.64-1.46
                                c-0.53-1.82,0.49-0.98-0.71-2.14c-1.47,0.49-2.17,2.37-2.38,4.04c-0.27,2.18,1.59,1.87-0.23,5.03c-0.42,0.73-2.53,3.3-2.66,3.61
                                c-0.56,1.42,0.07,3.74-0.2,5.35c-4.82,1.15,0.3-1.02-3.26-1.78c-0.68,1.26-0.11,1.59-1.62,3.51c-2.33,2.99-0.92-0.31-2.96,3.97
                                C547.71,297.36,548.35,296.36,547.59,297.23z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st8" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="guna-8" title="गुना  : User Count : 4" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M281.68,353.14c-0.04-2.32-1-1.56,0.34-3.64c1.38-2.15,0.69-0.24,0.38-2.66l2.81-1.12l-0.19-3.11
                                c0.16-2.04-3.7-3.27,1.55-9.65c1.8,0.13,2.31,0.7,3.74,1.67c-0.39,3.19-1.1,3.94,1.91,6.59c1.57-0.55,2.43-1.64,4.23-1.24
                                c0.43,0.1,3.25,2.23,6.24-1.68c2-2.61,1.27-0.37,3.74-2.74c-1.66-0.07-1.8-0.13-2.06-2.03c1.2-1.37,1.74-0.73,3.21-1.72
                                c1.27-0.86,0.42-1.06,2.15-1.93c-3.66-0.42-1.7-0.82-3.91-1.89l-2.38,3.65c-0.36-0.03-6.2-2.33-6.59-2.56
                                c-0.86-1.82,0.06-1.3-0.46-2.27c-0.87-1.63-0.29,0.64-1.53-1.47c0.17-2.7,0.86-0.63,0.71-4.17c-0.06-1.37,0.16-2.72-0.06-3.94
                                c-0.57-3.14-1.5-3.89,0.43-7.5c1.03-1.91,3.76-2.71,4.11-5.93c0.49-4.47-2.42-1.82-2.08-7.86l2.5-2.44
                                c-0.27-0.13-4.01-0.01-5.42-0.28c-1.66-3.53-0.51-3.46-4.17-5.29c-1.77,0.98-0.12,0.93-2.53,1.75c-2.54-1.91-2.94-6.93-3.28-7.91
                                c-0.46-1.32-0.42-0.26-1.13-2.38c-1.89-5.64-3.83-3.84-9.18-4.05c-1.9,2.86-0.18,0.84-2.73,2.08c-1.29,0.62-0.94,1.11-3.25,1.68
                                c-2.9,0.71-4.34-1.14-6.87-1.22c-1.55,0.35-0.1,2.56-7.39,3.45c-0.79,2.24-1.65,3.98-0.03,6.1c2.58,3.37,3.07-0.15,2.32,4.59
                                c1.57,0.28,1.26,0.25,2.37,1.35c-2.36,4.05-6.16,1.85-9.78,2.54c-4.29,0.82-0.09,4.01,1.16,6.81c5.85,1.42,3.34-0.32,6.81-1.04
                                c1.32,1.25,0.89,1.87,3.35,2.61c1.72,0.52,2.03-0.28,3.09,1.82c2.46,4.84,2.51,2.58,2.91,8.19c0.23,3.25,0.24,4.09-1.58,5.75
                                c-1.62,1.47-2.34,4.32-5.33,4.8c-1.5,0.24-2.75-0.93-4.07-1.72l0.18-4.35c-2.22,0.32,0.18,0.29-2.12,1.25
                                c-2.23-1.24,0.55-1.17-1.86-1.75c-0.78-0.19-1.91,0.23-2.12,0.98c-0.29,1.02,1.85,2.62,2.01,4.42c0.1,1.15-0.24,1.22-0.2,2.25
                                l0.19,4.78c-0.03,2.03-0.32,0.07-0.85,2.49c0.03,2.7,4.24,8.02,6.19,10.15c0.9,0.98,0.2-0.7,1.11,1.27
                                c-1.66,2.84-1.61-0.39-2.65,3.04c-0.33,1.07-0.09,0.95-0.68,1.95c-1.09,1.84-0.58-0.81-0.92,1.34c2.22,1.21,4.5,1.88,5.66,4.27
                                c2.79-0.86,1.11-0.42,3.09-1.72c1.6-1.05,1.72-0.26,3.65-0.35c1.51-0.07,2.53-0.6,4.43-0.53l3.71,1.07
                                c0.39,3.96,0.21,6.11-1.31,9.87c1.99,2.05,0.91,0.89,1.73,3.47c2.7,0.38,5.97,1.17,8.27,0.28c0.05-1.41-0.7-0.75-1.11-1.98
                                c-0.02-0.07-0.05-0.19-0.07-0.27l-0.04-2.33c-0.07-3.93-0.6-2.55,0.37-4.2c-1.45-0.71-0.44,0.39-1.58-0.79l-0.42-0.59
                                C278.23,354.28,279.36,354.44,281.68,353.14z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st1" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="rajgarh-8" title="राजगढ़ : User Count : 7" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M244.85,347.34c-1.61-0.7-4.1,1.39-5.76-2.24c-1.37-3,2.1-2.16,0.96-6.31c-1.13,0.92-0.87,0.56-2.15,0.71
                                c-0.33,0.04-0.57-0.04-1.27,0.17c-1.21,0.37-1.22,0.73-2.07,1.78c-0.06,0.07-0.14,0.17-0.2,0.24l-2.33,1.89
                                c0.24,1.35,0.52,1.02,0.64,2.45c-7.7,3.74-3.7-1.81-7.67-3.25l-2.04,0.12c-2.14,0.32-0.63,0.26-2.31,0.83
                                c-6.61-6.6-7.93-1.76-8.92-0.6c-2.02-0.35-1.68-1.05-4.12-0.57l-0.19,3.77c1.15,1.44,1.6,0.27,1.29,2.4
                                c-0.22,1.52-0.68,0.36-0.87,2.74c-1.85,0.86-0.44-0.64-2.15,0.84l0.54,2.25c1.82,0.41,1.91-0.26,3.63,0.61
                                c0.48,1.64,0.28,3.25-0.02,5.07l2.97,1.27c0.98,3.72,1.41,1.83-0.13,4.73c7.21,6.75,1.49,4.59,5.72,7.2
                                c-0.35,5.16-0.28,1.09,1.15,4.82c1.29,3.36,0.19,2.57,0.23,5.57c1.87,1.76,0.93,0.14,2.17,2.6c0.78,1.56,1.1,1.24,1.87,3.14
                                c-0.94,1.81,0.25,0.4-1.24,0.74l-0.63,2.69l3.46,2.74c0.06-1.21-1.03-1.62,1.17-1.56l-0.52-1.73c1.38-1.09,1.86-1.14,3.41-0.51
                                c2.97,1.21,0.78,0.95,3.45,0.75c1.6-0.12,2.27,0.32,3.79,1.3c1.72,1.11,1.06,1.02,1.07,2.88c3.51,1.22,1.59,0.86,5.21,0.66
                                c2.39-0.13,2.06,1.07,3.88,2.69c2.6-1.9-1.07-0.94,3.99-2.59c3.33-1.09,0.21-2.21,4.17-1.87c1.22,1.54-0.1,1.11,1.74,3.22
                                c1.64-1.75,1.71-2.59,4.41-1.55c1.46,0.56,2.6,1.67,2.9,3.21c1.43-1.86,1.97-1.56,3.37-2.68c1.24-0.99,1.07-2.1,2.42-3.7
                                c3.18-3.75-1.83-2.96,1.77-8.72c2.74-4.39,4.8-12.21,4.94-17.51l-2.48-0.47c-0.53-3.87,0.08-1.31-1.58-3.84
                                c0.6-2.45,2.14-5.13,1.19-9.72c-4.54-1.12-5.71-0.06-10.32-0.28c-1.73,2.13-1.18,1.64-4.01,2.28c-1.51-1.54-0.63-1.69-3.31-3.26
                                c-3.51-2.05-1.41,0.08-3.55-3.26c-2.35,0.47-2.62,1.17-5.28,1.21C245.91,349.23,246.23,348.28,244.85,347.34z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st0" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="singrauli-8" title="सिंगरौली  : User Count : 2" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M655.51,307.96c-2.44,1.05-4.63,2.42-7.2,2.79c-1.2-1.01-0.11-2.68-5.78-1.86c-0.68-1.43-0.05-2.22-1.57-1.9
                                c-2.11,0.44-0.08,3.89-0.64,7.69c-3.06,1.24-3.71-0.18-5.69-1.56l-1.49,0.95c1.22,3.16,3.04,2.4,4.17,3.75
                                c-0.27,0.77-2,2.44-2.79,3.3c-1.77,1.91-2.14,0.43-4.19,1.94c-5.68,4.18-1.48,2.18-6.75,5.12c0.11,2.28,0.85,3.22-2.83,2.9
                                l-0.4,1.76l-3.16,0.28c-0.67,2.04,0.8,1.84-0.95,2.95c-1.33,0.85-2.84,0.64-4.3,0.53c-1.09,2.05-0.53,1.71-2.25,3.88
                                c-1.89,2.38-1.61,1.28-3.56,0.7c-4.37,2.89-4.34,4.52-5.72,8.46c1.35,0.96,1.82,0.8,2.94,1.36c2.07,1.02,0.84,1.12,1.68,2.57
                                c1.04,1.78,1.25,0.43,2.59,1.87c1.29,1.39,0.14,1.46,1.26,3.03c1.72,0.08,2.69-0.31,4.18,0.27c3.43,1.36,4.17,0.59,8.7,3.16
                                l1.05-1.48c3.09,2.11,1.32,0.18,3.12,0.72c0.27,2.06-0.67,2.6-0.02,3.99c0.74,1.58,1.23-0.04,1.58,2.86
                                c0.32,2.59-2.86,2.69,0.08,6.42c1.58,0.15,0.7-0.63,2.27-0.69c0.87-0.03,1.84,0.51,2.84,0.7c3.2,0.6,11.67-0.05,12.17,0.19
                                c2.28,1.09,0.38,2.65,4.83,0.86l-1.2-1.88c2.54-1.13,2.3,0.27,4.91-0.76c3.25-1.28,2.28-1.73,4.08-2.38
                                c-0.33-1.76-1.3-2.62,0.76-3.72c3.76-2.01,9.61-0.08,9.05-6.68c-6.88-1.14-3.45-1.13-2.59-5.06c-4.15-1.88-0.63,1.37-5.32-2.78
                                c-1.79-1.58-3-2.16-0.86-4.4c1.8,0.28,0.27,0.77,2.88,1.19c1.77-3.27,1.3-1.87,0.76-5.81c1.39-2.09,0.8,0.18,1.5-2.19
                                c0.89-3.01,1.26-5.31,0.56-8.72c-1.38-0.63-4.84,1.15-3.01-4.1c0.72-2.06,0.49-1.49,0.72-3.75c0.67-6.39-0.85,0.58-1.02-7.06
                                c3.64,0.18,2.28,1.49,5.99,0.23l-0.24-2.39c-1.62-1.16-0.81,0.22-2.32-0.91l0.12-3.08l-4.79-0.02
                                C658.84,309.39,660.57,305.78,655.51,307.96z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st5" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="ujjain-8" title="उज्जैन : User Count : 35" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M138.04,423.13c1.09,0.07,1.88-0.2,2.31,0.73l1.36-0.07c0.59,1.83,0.54,0.73,1.38,2.6
                                c1.69,3.76,0,0.5,2.17,2.53c-2.6,4.77-2.12,0.43-3.2,3.34c-0.8,2.15,1.37,1.78,1.54,3.68c0.19,2.14-0.48,1.09-1.53,2.62
                                c2.1,1.8,1.15,6.06,1.98,7.83c1.95-0.34,1.41-0.91,2.15-2.7l4.32,0.01c0.55-2.67-0.54-1.73,1.17-3.28
                                c3.59-3.25-0.51,0.54,0.52-2.83c0.5-1.65,0.66-0.87,0.91-1.31c0.9-1.57,0-1.45,0.73-3.24c2.2-0.19,0.24-0.08,1.75,0.45
                                c1.02-3.79,2.72-1.48,4.61-6.02c2.32-0.11,2.69-0.55,4.65,0.52c0.43,2.63-0.27,2.24,0.05,4.49c1.78,0.67,1.31-0.38,2.74,0.81
                                l3.54,0.09c1.66-1.68,0.04-1.31,2.56-1.38c1.85-0.05,1.92-0.09,3.65-0.27c5.44-0.56,4.41-0.12,5.57,1.16
                                c2.04-1.24,3.16-0.26,5.06-0.63c0.69-1.21,0.73-2.19,1.45-3.72l-3.05-3.53c-0.75-0.78,0.09,0.7-0.9-0.89
                                c0.16-0.4,2.49-3.27,1.08-5.79c-1.23-2.19-0.06,1.13-0.92-1.33c-0.86-2.43-0.05-6.02,2.1-6.96c1.11,0.69,2.45,2.57,2.85,4.19
                                l-1.74,1.27l2.17,0.77c0.08,4.65,1.74,2.94,2.49,6.63l0.72-2.14c2.52,1.15,0,1.31,2.81,0.86c0.66-0.11,2.21-0.53,2.75-0.72
                                c-0.32-1.92-1.22-1.3-2.5-0.82c-1.6,0.6-2.03,0.42-3.7-0.72c1.84-3.26-0.34,1.81,1.96-2.76c3.8-0.36,1.89,0.51,3.8-2.39
                                c1.46-2.22,1.96-0.03,3.37,0.06c1.11-1.77,0.29-2.73,1.29-4.53c1.05-1.88,1.88-0.93,3.57-1.09l0.26-2.11
                                c-1.7-1.14-0.72,0.21-2.75-0.81c-0.27-1.92-0.71-1.94-0.42-3.65c0.48-2.88-0.37-0.48-0.41-3.25c1.72-1.93,1.72-1.11,3.49-2.29
                                l-1.52-1.44l-1.18,2.17c-1.43-0.11-2.66-0.04-3.76-0.77c0.2-2.93,2.55-2.12,0.67-4.63c-2.36,0.04-0.56,1.01-3.51,1.91l-1.06-2.12
                                c-1.6,0.61-4.71,0.94-6.05,0.35c-2.62-1.15-2.35-0.1-4.46,1.07c-2.84-0.81-0.35-1.33-3.36-0.84c-1.04,0.17-2.32-0.09-3.18-0.96
                                c-0.07-0.07-2.6-6.89-2.67-7.29c1-1.49,3.62-2.06,2-4.47l-0.77,2.29c-1.71-0.51-2.43-1.32-4.19-2.01
                                c-2.49-0.99-1.38-1.46-3.11-2.36c-2.27,0.66-1.58,1.06-2.32,2.94c-5.61,2.04-1.99-0.04-4.66,4.01c-3.69,0.71-4.52-0.74-6.49-0.45
                                c-2.49,3.5,0,3.91-1.86,7.4c0.73,0.97,2.67,1.4,0.98,2.69c-1.51,1.15-2.34,0.37-3.68-0.49c-3.32-2.14-3.65-2.96-5.16-5.02
                                l-4.22,0.9l-0.63-2.44c-1.2,1.99-0.38,1.27-2.59,2.58c-0.44,4.24-0.93,3.03-3.57,5.54l-2.55-1.15c-2.12,2.72-0.85,6.44-3.83,8.93
                                c1.84,0.64,1.91,0.83,2.95,2.42c1.51,2.31,1.54,1.36,0.91,3.5c2.69-0.08,3.39,1.66,5.66,2.05c1.28,0.22,1.68-0.08,3.3,0.71
                                c-0.29,3.06-1.7,1.5-4.38,2.33c-0.13,2.7,1.28,0.26,1.35,3.53c-1.95,0.57-3.31-1.27-3.78,1.03
                                C136.89,419.37,137.55,422.51,138.04,423.13z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st6" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="dindori-8" title="डिंडोरी  : User Count : 3" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M526.29,420.56c-1.33,0.08-2.26,0.19-3.03-1.23l-1.3-2.31c-2.97-4.26,5.61-4.42-0.62-7.24
                                c-1.83-0.83-1.34-0.39-3.41-0.17c-1.85,0.2-4.63,0.84-6.12,1.36c-0.17,2.67,1.12,1.37,0.65,3.78c-0.32,1.69-1.7,1.74-2.61,2.16
                                c-2.99,1.37-1.37,3.43-4.08,5.27c3.43,1.72,0.42,2.56,4.35,1.65c0.8,1.22,1.75,1.95,2.17,2.9c-1.24,2.36-2.95,1.16-3.62,3.51
                                c1.46,2.02,0.71-0.66,1.79,1.76c0.53,1.18,0.06,1.31,0.76,2.75c0.87,1.81,0.81-0.18,0.68,2.04c-0.08,1.46,0.1,0.72,0.06,1.93
                                c-1.17,1.16-2.48,1.36-2.54,3.24c-0.07,2.29,0.95,1.91-0.5,4.4c1.59,0.06,1.47-0.41,2.58,0.02c0.93,0.36,0.23,0.52,1.96,0.99
                                c0.86,0.23,1.62,0.19,2.59,0.48c1.23,0.38,0.76,0.5,2.03,0.93c0.96,0.1,2.46-1.8,4.25-1.49c2.28,0.4,0.7,2.12,0.58,3.33
                                c6.14,0.25,5.63-3.47,9.78-2.49c-0.14,1.41-0.22,0.6-0.44,1.7c-0.41,2.04,0.62,0.71,0.53,5.01c1.76,0.02,3.38,0.07,4.83,1.12
                                c-0.31,1.51-2.25,2.42-0.14,5.44c2.09,2.99,1.87,1.34,4.78,2.7c0.09,2.71-0.91,1.91-2.36,2.79c-1.24,0.75,0.01,0.1-0.85,1.08
                                c-0.4,0.46-0.93,0.66-1.67,1.17c1.29,0.86,2.46,1.97,3.74,2.12c3.14-2.99-0.35,0.86,2.4-4.97c3.65-0.01,2.24-1.21,4.82,0.43
                                c1.95,1.24,2.28,0.65,3.79,2.8c5.12,7.31,2.66,4.31,4.29,8.26c5.99,1.34,0.78-5.45,7.06-2.16c0.81-1.3-0.09-2.56,1.67-2.8
                                c0.58-0.08,3.12,0.79,3.61,1.06c0.8,1.78,0.42,3.58,1.3,4.81c2.92-1.11-0.59-3.8,5.64-3.85c1.12-2.08,2.27-4.23,4.79-2.83
                                c1.93-2.24,1.18-1.61,4.23-0.41c1.07-1.12,0.32-0.91,1.01-1.61c0.99-1.01,0.28,0.01,1.63-0.9c-0.98-2.05-0.22-4.27,1.61-5.45
                                c2.92-1.89,1.66,1.56,3.99-3.29c-1.56-1.3-2.6-0.28-2.65-2.42c-0.06-2.56,0.62-1.45-0.81-4.28c-3.57-0.41-2.29-0.29-4.92,1.24
                                c-1.65,0.97-2.99,0.61-4.84,0.85c-2.37,0.32-0.66-0.02-2.49-0.33c-1.45-0.25-1.32,0.18-2.74-0.36c-3.15-1.19-1.26-6.47-5.88-6.74
                                c-2.78-0.16-1.87,0.57-4.72-1.09l-8.87-3.91c-2.05-2.73,1.78-8.99,2.08-9.74c0.81-1.99-0.14-0.93,2.15-1.97
                                c-1.19-4.65-2.53-1.59-4.67-5.27c-2.23-3.84-0.05,1.03-4.41-4.88c-2.49,0.18-2.53,1.25-5.02,0.31c-0.1-0.04-0.22-0.09-0.32-0.13
                                c-0.1-0.04-0.22-0.08-0.32-0.13c-2.28-0.94-3.12-1.81-4.89-3.41c-1.56-1.4-1.13-1.6-2.42-2.83c-2.09,1.15-0.44,1.58-2.84,2.97
                                c-4.06,2.35-1.93,3.42-6.78-0.22C526.74,419.43,527.53,419.16,526.29,420.56z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st0" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="mandsaur-8" title="मंदसौर  : User Count : 4" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M178.4,353.51l1.09-1.06l0.11-1.56l-1.95-0.22c-1.98-0.58-0.47-1.24-3.32-2.41c-0.09-0.04-0.3,0.03-0.37-0.13
                                c-0.07-0.16-0.26-0.07-0.41-0.14l2.15-6.37c3.27-1.06,3.53-2.05,2.6-6.13l-3.08-0.28c-2.05-4.19-1.26-1.8-2.6-7.41
                                c3.33-1.46,1.02,0.12,1.99-1.9c0.46-0.96,0.9-0.81,1.73-2.03c0.73-1.07,0.26-2.08,2.06-1.57c2.08,0.59,0.86,1.47,1.27,2.81
                                c0.69,2.28,3.98,0.86,5.03-0.32c2.19-2.44-0.19-4.02-0.34-5.84l1.99-0.34c-0.03-2.13-2.09-1.35-0.48-3.23
                                c-3.9-1.42-1.33-0.97-3.31-2.84c-1.38,0.46-0.28-0.08-1.65,1.12l-0.9-1.91c2.8-4.23,0.98-2.57,0.04-4.38
                                c0.97-2.43,1.61-3.48-0.49-5.4c-5.15-4.72-10.73,5.06-14.02,4.38c-2.24-1.24-0.98-2.5-3.45-2.35c-0.18,3.7,2.2,1.75,3.34,4.83
                                l-2.51,0.72c0.98,2.08,1.57,5.17,1.06,7.59c-0.58,2.76-2.35,2.54-4.38,4.38c-2.01,1.83-2.67,3.89-4.02,5.16
                                c-4.9,4.59-2.43,2.53-3.71,5.1c-8.1,1.48-3.59-0.32-6.52-0.41c-2.58,0.61,0.31,1.02-4.33,1.26c-1.33,0.07-3.54,0.48-4.66,0.31
                                c-3.45-0.52-6.76-3.22-7.08-3.4c-1.87,1.02-2.94,2.64-4.64,1.94c-0.47-2.33,1.03-0.54,0.33-2.85c-2.16-0.65-1.41-0.04-2.67,1.05
                                c-1.61,1.4-1.31,0.06-2.81,1.68c-0.67,3.7,2.21,0.79-1.82,5.53c-1.29,1.52-2.42,3.71-3.52,5.47c1.57,2.46,1.62,6.24,4.89,10.48
                                c1.1,1.42,1.78,0.69,2.48,2.99c-0.04,1.95-4.44,6.16-4.75,6.82c-2.35,4.87-0.77,4.96-1.24,9.36c2.21,2.59,1.17,2.07,2.3,3.13
                                c1.39-1.35,0.06-1.27,1.82-2.2l2.52-1.42c2.39,1.41-0.79,1.92,2.35,1.73l0.04-2.37c4.02-0.56,2.31,2.19,5.1-1.96
                                c2.15,1.33-0.3,1.11,3,1.52c5.61,0.7,3.8-6.29,7.11,0.58c0.97-1.18,1.08-2.87,3.96-1.76c2.75,1.06,0.3,1.5,1.17,3.19
                                c1.53-1.44,0.75-3.85,3.14-5.23c1.57-0.9,0.93-0.11,2.42-1.5c1.56-1.44,0.27-0.67,2.59-1.26c0.62-4.14,0.56-5.81,4.61-7.82
                                c9.84,4.23,6.8,0.06,10.91-0.88c2.09,1.85,1.01,2.51,2.65,4.8c1.2-0.6,0.87-0.56,1.76-1.22c3.42-2.55,2.18-1.69,3.13-5.67
                                L178.4,353.51z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st1" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="shahdol-8" title="शहडोल  : User Count : 7" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M589.06,397.14c-0.93,0.16-0.54-0.06-1.17,0.58c-0.51,1.5-1.05,1.74-2.61,1.99
                                c-2.37-2.48-0.49-2.74-1.85-4.31c-1.07-1.24-2.04,0.25-1.89-3.56c2.3-2.08,1.24,0.87,2.29-2.05c0.29-0.8,0.51-2.41,0.67-3.3
                                c1.01-0.45,0.99-0.12,1.56-0.43c1.78-0.95-0.33-0.06,2.27-2.26c2.26-1.92,0.38-4.44-2.06-5.29c-0.07-1.5,0.5-2.95-0.51-4.26
                                c-0.98-1.27-2.79-0.66-2.28-2.93c0.28-1.23,1.64-0.29-1.09-2.44c-1.98-1.56-2.36-0.74-3.45-1.77c-0.78-3.18,1.46-3.55-0.4-4.45
                                c-0.09-0.04-0.23-0.08-0.33-0.12c-0.11-0.04-0.25-0.05-0.36-0.09c-1.31-0.44-1.15,0.37-1.66-1.01c-0.35-0.95,0.15-1.8,0.38-2.53
                                c-1.83-0.62-1.06,0.02-2.02-1.36c2.18-1.35,3.01,0.7,3.68-2.54c-2.99-0.64-1.09-1.39-2.45-4.07c-0.66-1.31-0.42-0.73-0.92-2.07
                                c-0.42-1.1-0.08-0.34-0.55-1.26c-1.65-3.26,1.77-0.54-0.55-6.91c-1.24-0.03-0.6,0.26-2.42,0.29c-1.27,0.02-1.24-0.2-2.69-0.06
                                c-0.92,2-0.64,3.46-2.23,5.16c-3.94,1.19-3.21-0.99-7.28,1.96c-2.64,1.9-1.1,0.05-1.94,2.47c-0.53,1.53-0.68,1.69-2.48,2.08
                                c-2.88-1.28-1.42-3.3-6.57-1.1c-1.9,0.81-4.9,1.65-6.39,2.79c0.12,1.23,1.55,3.1,2.41,4.25c1.92,2.56,1.16,1.86,2.37,4.66
                                l3.8-0.43c0.77,1.77-0.4,2.12,1.1,3.15c0.79,0.54,0.7-0.45,2.35,0.95c0.2,2.83-0.18,0.32-0.72,2.61l2.93-0.07
                                c1.64,2.18,0,1.59,2.32,1.96c1.65,0.26,1.7,0.26,2.09,1.99c-1.8,1.54-3.97,0.78-5.85,1.67c-0.28,2.03,0.45,1.82,1.51,3.55
                                c1.71,2.8,0.91,0.71,2.73,2.52c0.57,3.13-0.23,2.38-0.57,3.88c-0.03,0.13,0.19,2.35,0.19,3.29c-0.03,5.74,1.79,3.84,3.89,5.92
                                c0.42,3.76-0.68,4.24,0.7,8.5c0.9,2.78,1.11,1.64,1.95,2.9c0.89,1.33,0.12,1.7,0.78,3.18c1.97,4.39-0.44,3.6-1.11,6.92
                                c-0.19,0.93-0.06,1.29-0.44,2.06c-0.74,1.48-3.06,3.41-3.33,3.71c0.52,1.07,2.35,2.14,3.36,3.22c1.48,1.57,0.63,2.28,0.78,4.43
                                c2.47,0.81,1.81,0.45,3.83,1.82c1.53,1.03,2.74,0.61,4.59,0.73c3.92,0.25,5.14-2.67,7.92,0.35c-0.7,1.55,0.11,0.32-1.59,1.17
                                c1.71,1.04,1.94,1.16,3.74,0.1c-1.49-4.55-3-2.78-4.29-6.09c1-1.96,2.72-1.31,3.73-3.77c1.04-2.54-0.72-4.45,3.2-3.83l-1.19,1.71
                                c1.26,0.03,1.79,0.31,2.68,0.05c6-1.76,2.28,0.44,7-1.62c0.58-1.85,0.67-2.88,2.96-3.1c1.72-0.16,3.48,0.41,5.05,0.29
                                c-0.88-0.65-1.46-1.01-2.38-1.71c-1.92-1.45-0.3-0.21-2.13-0.71l-0.39-2.06c4.47-0.82,4.49,1.11,6.52,0.88
                                c0.95-0.97,0.46-1.33,1.45-3.01c1.56-2.66,0.35-1.2,1.18-2.76l2.86,0.63c0.53-2.4-0.2-0.43-0.11-3.07
                                c0.08-2.34,0.62-1.46-0.72-3.29c-1.63-2.23-0.34-1.13-1.35-3.05c-0.37-0.71-1.49-1.92-2.1-2.36c-7.93,3.73-6.53,0.86-7.58-1.02
                                c-6.3-0.8-1.72-1.05-4.68-1.3C591.57,395.87,591.99,397.33,589.06,397.14z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st4" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="barwani-8" title="बरवानी : User Count : 7" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M147.98,505.63l-1.18-0.49c-1.89-1.46-0.04,0.08-0.45-2.08l-3.01-1.74c-3.44-2.25-10.8,0.81-11.16,0.85
                                c-5.76,0.6-11.61,1.25-17.44,1.29c-2.58,0.02-6.99,1.65-8.13,1.38c-3.45-0.81,0.01-2.16-6.64,0.28c-1.03,0.38-2.74,1.26-3.37,1.47
                                c-1.62,0.52-2.16,0.03-4.18,0.6c-4.55,1.27-3.77,0.84-6.58-1.6l-5.59,0.87l-0.26,3.96c1.52,1.73,2.14,0.07,4.34,3.11
                                c2.66,3.67-0.23,5.43-0.29,10.75c-0.02,1.88,0.46,1.15,0.65,2.66c0.14,1.09-0.26,1.4-0.08,2.95c4.74,0.52,0.67-0.57,4.4,3.13
                                c0.06,0.06,0.15,0.16,0.22,0.22c1.36,1.32-0.59,0.34,1.47,1.08c1.15,0.41,2.88,0.44,4.2,0.99c1.31,0.55,2,1.39,3.38,1.92
                                c2.13,0.81,6.43,1.77,8.39,0.8c4.81-2.36,3.75-0.71,7.01,0.84c1.26,0.6,2.77,0.74,4.02,1.24c1.61,0.64,1.58,1.19,3.35,1.84
                                c2.84,1.04,3.35,3.48,4.34,6.23c1.31,3.63,2.66,3.1,5.85,4.63c2.95,1.41,4.74,1.71,7.96,1.13c1.41,1.69,0.39,2.01,3.33,1.51
                                c3.15-0.53,0.83,0,2.96,0.62c0.12,0.04,7.91,0.01,9,0.01c-1.52-3.07-1.23,0.58-3.75-1.68c0.02-0.36,2.11-5.65,2.5-6.94
                                c0.82-2.7,0.72-4.35-0.46-6.97c-2.72-6.02-10.79-2.04-13.48-2.34l-1.32-2.18c-0.05-0.08-0.12-0.19-0.17-0.27
                                c-0.05-0.08-0.1-0.2-0.15-0.28c-2.58-4.84-2.19,0.81-4.15-4.98c2.08-1.3,1.12,0.88,3.28-1.14c2.1-1.96,0.44-3.16,1.78-5.22
                                c0.5-0.78,1.12-1.39,1.54-2.39c-1-2-0.65-0.78-1.99-2.17l1.12-4.06c2.83,0.36-0.28,0.64,2.61,1.05c0.89-1.53,0.35-1.53,1.05-3.02
                                c0.72-1.56,0.54-0.29,0.77-2.72c4.23-0.75,1.72,0.42,5.07-2.03C148.07,507.44,147.96,507.38,147.98,505.63z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st1" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="narsinghpur-8" title="नरसिंहपुर : User Count : 5" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M427.05,428.95c-0.96,0.52,0.28,0.61-1.62,0.2c-0.35-1.7-0.41-0.55,0.25-1.55l0.05-1.9l0.15-0.23l-1.32,0.17
                                c-1.34-2.49-1.14-2.43-1.84-5.1c-1.5-0.66-0.2,0.22-2.77-0.05l-0.49-1.68c-0.98,1.59-0.14,2.03-4.44,0.39
                                c-0.78,2.35,0.18,2.12-1.87,3.75c-1.79,1.41-1.83,1.06-4.27,1.29l-1.05-2.23c-1.26,0.23-0.24-0.07-1.34,0.06
                                c-4.92,0.59-2.57,0.06-5.04-0.46c-2.69-0.57-0.22,0.96-3.15-0.27c-3.41-1.43-0.03-0.72-2.43-1.7c-6.04,2.58-5.15-0.43-6.88-1.78
                                c-1.66,1.79-0.52,0.59-0.79,2.58c-0.16,1.2-0.45,1.63-0.65,3.17c-0.12,0.95-0.55,2.65-0.58,3.25c-0.12,2.16,0.5,0.03,0.43,2.19
                                c-0.53,0.88-3.07,2.01-4.68,3.69c-1.72,1.8-7.12,1.81-8.83,2.57c-3.4,1.53-5.19-0.47-10.42,1.37c-0.15,1.9,1.14-1.18,0.32,2.57
                                c3.02-1,1.19,0.07,3.22,0.2c1.06,0.06,2.38-0.05,3.91,0.09c0.71,1.74,0.92,1.17,1.09,3.23c0.22,2.62-0.81-0.03,0.42,3.1
                                c0.74,1.89-1.16-1.08,0.3,1.5c0.6,1.06,1.01,0.83,0.56,2.64c1.01,0.2,0.77-0.48,1.57,0.89l2.04,2.71
                                c1.65-0.26,0.45-0.83,2.71-0.09c0.56,2.21,0.11,2.02-1.04,3.84c1.12,1.92,1.03,0.2,0.71,1.77c-0.29,1.43-0.73,0.49-0.3,2.99
                                c1.48,0.95,1.14-0.09,2.58,1.24c1.07,0.99,0.52,1.37,2.53,1.67c3.06-1.75-1.66-0.9,3.17-2.41c2.31-0.73,1.02-0.65,2.52-2.26
                                l5.2,0.97c1.77,2.84,0.41,3.94,5.63,3.73c1.3-1.9,0.43-3.14,0.89-5.53c0.5-2.55-0.19-0.14,0.17-3.1c2.31-1.74,2.4-2.11,5.2-0.67
                                c1.1-1.12,1.25-0.81,2.1-1.57c0.68-0.61,0.56-0.84,1.3-1.65c2.55-0.24,2.09,0.26,3.98-0.93c1.21-0.76,1.82-1.1,3.39-0.71
                                c0.72,2.08,0.48,3.31,1.26,4.95c0.75,1.59,0.67-0.14,0.25,1.9c0,0-1.07,0.64,0.37,1.71c1.34,1-0.23-0.17,1.3,0.53
                                c2.1,0.97,0.81,1.07,0.77,2.27c-0.03,0.94,0.05,0.4,0.48,1.22c1.14,2.17-0.01,0.76,0.52,2.06c1.87-0.03,1.31-0.26,2.48-1.36
                                c4.95-4.65,1.65-0.7,4.87-6.62c2.25-0.47,3.33-1.15,4.55-0.82l2.34,0.83c0.2-1.71-0.54-1.73,0.13-3.72
                                c0.33-0.98,1.24-1.89,1.94-2.94c1.15-1.71,4.02-3.38,5.36-4.19c0.36-4.85-1.58-1.15-2.48-5.6c2.62-1.26,1.76-0.46,3.56-2.55
                                c-5.36-3.7-1.61-6.24-2.29-8.66c-0.22-0.79-2.6-3.69-5.56-3.25c-1.55,0.23-2.89,1.96-3.99,3.17c-1.75-0.06-0.9-0.24-1.9-0.34
                                c-1.24-0.12-0.79,0.03-1.73,0.02C427.99,429.51,429.05,429.06,427.05,428.95z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>
                                        <path class="st3" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="katni-8" title="कटनी : User Count : 1" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M519.77,354.03c1.34-2.17,2.1-0.01,3.05-2.55c-3.34-1.9-3.75,3.27-3.77,3.38c-1.63,0.21-0.79-0.14-2.24-0.41 c0.26,1.95,1.51,1.32,0.13,3c-1.9-0.58-0.04-0.88-2.01-2.16l-5.37,3.16c-0.79-1.65,0.58-1.35-0.72-2.1
                                c-2.46,1.31,2.44,2.51-4.31,5.33c-2.34,0.98-5.13,1.94-7.59,1.79c0.14,2.25,0.56,1.06-0.65,2.6c-0.34,0.43-1.53,1.87-1.9,2.17
                                c-0.73-0.14-6.06-2.7-6.66-3.13c-2.7-1.92-0.26-3.8-3.77-4.18c-0.93,1.89-0.1,2.87-1.99,4.53c-2.8-0.18-2.18-1.12-3.53-2.86
                                c-2.78,0-3.44-1.59-5.23,0.2c-0.85,0.85-2.13,3.94-2.62,5.16c-4.1,10.1-5.58,5.51-7.89,6.67c-1.04,0.52-3.59,6.15-3.74,6.4
                                c1.11,2.2,1.49-0.12,0.69,2.77c2.63-0.35,1.19-0.46,3.59,0.53c1.78,0.73,2.9,0.34,4,0.91c2.71,1.4-0.14,5.28-0.28,5.94
                                c1.41-0.42,1.21-1.02,2.57-0.89c0.5,1.5,0.24,1.76-0.4,3.01c3.27-1.21,4.22,1.75,8.13-0.31c2.34-1.23-0.06-0.54,3.28-0.09
                                c1.35,0.18,1.99,0.27,3.28,1.1c1.02-1.09,0.54-0.91,1.83-1.34c1.46,1.48,2.79,0.36,2.37,2.86c-0.27,1.6-1.51,1.42-2.41,1.85
                                l-0.18,2.01c1.68,1,3.79-0.08,4.45,2.12c0.55,1.84-1.35,2.39,2.27,2.01c1.12,2.99,2.17,2.08-0.13,4.77
                                c0.49,2.27,1.24,5.59,4.12,5.03c1.18-0.79,0.06-3.11,4.66-2.98c3.01,0.09,1.49,0.36,4.45-3.52l2.77,0.84
                                c1.42-1.95-0.54-0.16,0.24-2.85c0.6-2.06,0.86-0.93,2.07-2.13c0.57-1.35-4.15-7.42,1.98-9.98c2.86-1.19,1.46-0.75,2.42-2.46
                                l1.43-2.64c0.85-1.74,1.06,0.09,1.72-2.85c0.61-2.73,1.72-3.92,3.18-6.13c1.56,1.14,0.71,1.6,2.28,2.95
                                c1.15,0.98,1.93,0.89,3.35,1.93c3.06,2.24,3.03,2.62,7.44,1.28c0.46-4.75-2.29-4.78,0.66-7.32c-0.4-1.47-0.79-2.88-1.21-4.3
                                c-0.9-3.08,0.07-1-2.41-3.06l0.69-1.71c-1.96-0.24-2.31-0.65-2.39-3.07c-0.09-2.58,1.39-1.67,2.41-2.37
                                c-0.06-0.4,0.03-1.67,0.01-2.46c-0.02-1.14,0.19-1.44,1.02-2.26c1.9,0.38,1.36,0.18,2.78,1.06c-0.19-1.23,0.14-2.28-0.63-3.02
                                c-0.26-0.25-2.44-1.37-2.96-1.51c-2.84,4.14-0.12,2.17-4.85,4.8c0.48,1.53,1,2.14,0.17,3.89c-2.85-0.08-3.5-2.77-3.7-5.21
                                c1.96-1.25,2.01,0.27,2.56-1.92C523.84,354.55,520.65,357.62,519.77,354.03z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st6" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="morena-8" title="मोरेना : User Count : 4" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M351.5,144.49c-2.32,0.27-1.51-1.67-6.4-0.37c0.03,1.43,0.97,0.57,0.7,2.46c-3.51,1.47-3.25-1.57-5.57,0.11
                                c-0.13,1.57,0.49,1.16,1.05,2.74c-0.87,1.39-1.25,0.8-1.6,2.33c-0.41,1.76,0.53,1.42-0.55,3.52c-2.38,0.77-3.36-1.2-6.1-1.32
                                c-2.07,1.17-1.46,2.66-4.39,2.67c-4.97,0.03-1.42,1.49-3.71,3.14c-2.71,1.96-2.77-1.75-3.84,3.6c-0.57,2.87-2.74,1.52-5.39,2.09
                                l-1.89,3.33c-2.49,0.63-3.02-0.69-5.29,0.82c-1.9,1.27-1.5,2.26-3.86,3.19c-2.77,1.09-2.89,1.93-4.36,2.6
                                c-1.73,0.79-4.15,0.07-6.23,0.71l0.32,2.8c-2.74,0.85-5.15-0.19-7.12,0.94c-1.86,1.07-1.77,3.16-3.66,5.1
                                c-1.32,1.36-3.54,2.44-5.27,3.54c-2.5,1.59-3.94-0.88-6.32,0.98c0.31,1.14,0.49,0.39,1.02,1.52c0.81,1.71,0.07,0.69,0.23,2.52
                                l2.22-0.77c0.53,1.5,1.89,5.21,3.1,6.3l1.07,0.88c2.42-2.77,1.43-3.4,5.73-4.49c2.82-0.71,5.31-1.54,7.33,0.83
                                c2.34,2.74,7.75,7.96,10.92,9.07c1.74-2.16,1.71-1.49,0.74-3.87c1.45-1.03,3.15-2.44,4.83-2.44c1.02,3.25,0.27,2.12-1.28,3.28
                                c-0.67,0.51-1.48,1.73-1.96,2.65l2.32,1.14c-0.31,2.01,0.12,2.47-0.53,3.94c-2.75,0.45-2.4-0.3-4.37,1.31
                                c-2.61,2.13-2.31-0.85-2.28,2.43c1.26-0.19,2.62-0.84,3.94-0.96c1.92-0.16,2.24,0.49,4.15,0.28c0.34-4.96-1.91-4.21,3.21-7.29
                                l-1.75-1.05c4.53-2.93,1.79-1.02,5.55-1.7c-0.17-2.43-1.13-1.76-0.27-4.22c-2.86-2.43-2.31-3.18-0.32-5.92
                                c0.82-1.13,0.73-2.05,1.62-3.22c0.73-0.96,1.33-1.48,2.14-2.65l2.34,0.32c0.19,1.68-0.77,0.86,0.49,2.58
                                c1.04-0.03,0.25,0.11,2.04-1c1.99-1.23,0.13-0.19,1.84-1.75c1.27-0.02,4.47-0.19,5.29-0.5c1.13-2.76,0.56-1.7,1.05-4.67
                                c2.16-0.2,1.4,1.44,4.28-0.01c1.62-0.81,0.01-0.4,2.13-0.51c2.13-0.11,0.42,0.02,1.95-0.6c3.6-1.46,4.68,3.55,8.88,1.88
                                c0.02-0.03,2.75-8.04,2.75-8.14c-1.5-1.74-1.92-0.76-3.29-3.32c-0.54-1.02-1.76-3.36-2.02-4.35c1.26-2.6,1.93-1.55,3.81-1.89
                                c0.51-1.81,0.45-2.75,2.57-3.6l1.12,2.93c2.05-0.42,2.43-1.19,3.45-2.6c1.68-2.32,1.25-0.97,3.47-1c4.8-9.51,4.45-4.25,6.22-6.4
                                c0.76-1.72,0.06-1.78,0.5-3.04c0.51-1.48,1.09-0.7,1.44-2.69c-1.64-2.42-3.37-0.76-5.3-2.2c-1.25-0.93-0.46-1.25-1.63-1.92
                                c-1.44-0.83-1.79,0.23-3.12-0.75c-1.89-1.4,0.44-3.37-4.07-2.91C351.08,141.35,353.18,141.55,351.5,144.49z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st8" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="jabalpur-8" title="जबलपुर : User Count : 524" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M468.26,394.09c-0.36-1.96,0.58-0.48,0.53-2.54c-2.76,0.07-3.93,1.12-5.41,3.33
                                c-1.99,2.98-0.87,3.99-4.68,3.62c-1,2.05-0.65,4.05-2.75,5.14c-4.8,2.5-1.22-0.04-4.25,3.62c-1.77,2.14-1.03,2.99-3.45,4.43
                                c-1.58,0.94-8.63,5.47-9.83,5.54c-4.69,0.26-3.49,3.07-9.05,6.19c-1.82,1.02-3.08,2.54-3.12,4.67c0.55,0.27,5.76,0.76,7.04,0.98
                                c2.32-1.86,1.99-3.51,5.41-3.12c1.66,0.19,2.04,0.31,3.06,1.34c1.83,1.83,0.6,0.49,2.64,1.66c-0.04,6.68-3.58,2.46,1.96,9.75
                                l-1.23,1.79c2.33,2.59,4.87,1.84,8.56,2.44c1.16,3.23-0.04,0.87,2.08,3.11l-0.86,2.22c1.54,0.17,1.07-0.94,3.15-1.61
                                c1.07,0.79,0.71,1.27,1.78,2.79c1.53-0.65,1.85-2.11,3.9-2.12c1.18-0.01,3.01,0.93,4.72-0.46c1.04-3.49-0.18-3.36-0.58-5.57
                                c1.28-2.05,1.48-1.44,2.94-2.88l-0.15-3.84c2.2-1.04,1.87,0.06,3.97-1.74c4.67-4.01,4.26-1.21,4.85-0.83
                                c0.57,0.37-0.15,0.06,0.88,0.37c0.03,0.01,0.91,0.17,1.09,0.22c2.38,0.68,1.27,0.56,2.59,2.22c0.32-2.91-1.77-1.85,1.19-3.76
                                c-1.12-0.95-1.99-2.33-1.43-3.91c1.41-0.64,1.66-0.24,3.33-1.02c2-0.94,0.67-0.83,3.31-0.74c0.98,1.46,0.42,3.08,3.01,3.62
                                c1.5-0.71,1.77-1.84,3.03-2.71c3.95-2.73,0.56-1.39,3.07-2.81c1.83,0.62,0.99,0.34,1.73,2.37c2.59-0.11,2.04,0.03,3.05,0.96
                                c3.18,2.91,3.12,0.36,3.22,3.72c0.97-2.21-0.8-0.64,1.45-2.2c0.76-0.53,1.72-1,2.62-1.61c-1.22-1.13-1.01-0.77-2.04-2.07
                                l-1.82,0.44l-3.14-3.17l1.91-1.77c2.7-4.12-1.55-0.69,5.14-5.22c0.12-2.48-0.18-0.88-0.46-1.99c-0.3-1.18-0.23-1.01-0.25-2.56
                                l-2.32-0.44l0.97-1.93c-1.68,0.14-2.17,1.07-3.93-0.37c-0.9,1.05-1.48,2.09-2.2,3.3c-1.58,0.29-4.44-0.17-5.39,0.72
                                c-2.07,1.94,1.13,2.08-3.84,2.71c-5.85-7.2-1.41-6.59-1.75-8.46c-1.23-2.48-1.35-0.65-3.03-1.94c-1.35-1.03-0.1-1.21-0.38-2.61
                                c-2.86-1.88-5.91,0.43-3.98-4.94c1.61-0.4,1.69,0.26,2.04-1.78c-2.65-2.14-1.52,0.34-3.94-0.09c-0.81-0.15-3.9-1.07-4.76-1.13
                                c-1.25-0.08-2.08,1.42-5.42,0.83C470.11,393.73,469.93,394.27,468.26,394.09z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st4" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="ratlam-8" title="रतलाम : User Count : 6" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M137.02,425.74v-0.2l-0.83-7.99c2.32-1.39,0.74-1.54,3.77-0.55c-0.23-2.31-1.93-0.13-1.02-3.86l4.14-0.87
                                c-1.73-1.49-1.11,0.36-5-1.51l-3.7-1.49c-0.74-2.29,0.9-0.77-1.08-3.72c-1.71-2.56-0.92-1.08-3.28-2.41
                                c0.58-2.11,0.21-0.14,1.46-2.04c1.82-2.76,1.12-6.9,2.9-7.79c2.44-0.55,1.08,0.76,2.93,0.34c0.63-0.14,1.19-1.06,2.74-1.39
                                c0.42-3.59-0.59-2.05,1.65-4.15c1.66-1.56,0.44-1.74,3.24-2.1c0.39,1.22-0.09,0.2-0.16,2.35c6.39-1.06,2.99-0.3,6.42,2.35
                                c1.8,1.38,3.54,3.99,5.81,2.37l-1.61-1.27c1.68-5.43,0.13-5.6,2.26-8.67c2.42-0.19,1.66,0.25,3.19,0.6
                                c0.99,0.22,2.21,0.05,3.53-0.06c0.88-3.52,1.12-3.03,4.42-3.92c1.05-7.15-4.4-5.09-6.89-6.28l-0.57-0.35
                                c-0.13-0.08-1.03-0.56-1.1-0.59c-0.29-2.52,2.42-2.02-2.18-4.84c-2.25-1.38-2.82-3-5.41-2.37c-0.48,0.12-4.93,2.95-5.3,3.48
                                c-1.62,2.36-0.06,4.96-3.68,4.31l0.11-2.93c-4.09-1.15-1.63,0.83-4.29,1.79l-2-2.97c-3.25,1.89,0.49,2.65-6.13,2.06
                                c-2.71-0.24-0.95-0.2-3,0.61c-1.88,0.75-0.86,0.09-3.07-0.12c-0.33,0.9,0.63,2.23-1.2,2.83c-1.69,0.55-0.99-0.55-2.16-1.3
                                c-2.65,1.12-1.45-0.29-2.81,1.6c-1.37,1.9-0.02,0.39-2.1,1.74c0.45,1.82-0.71,4.07-1.75,5.59c0.9,1.02,1.89,2.53,1.92,3.86
                                c-1.35,1.25-1.83,0.55-3.37,1.86c-1.31,1.11-0.9,1.58-2.27,3c-3.93,4.08-5.39,1.72-5.92,1.58c-5.74,6.78-3.14,0.93-7.14,4.59
                                c-2.97,2.72-1.88,0.74-4.03,2.04c-0.22,0.13-2.05,2.14-3.19,2.97c-0.63,5.73-4.14,3.99-2.1,9.05c2.64-1.19,0.5-0.77,3.03,0.22
                                c3.25,1.27,0.79-0.22,3.23,2.12c1.78-0.51,2.79-1.92,4.6-0.27c1.72,1.58,0.54,2.81,0.65,3.39c2.71-0.8,1.6-1.48,5.57-1.28
                                c0.02,0.86-0.26,1.46-0.41,2.61c-0.22,1.61,0.5,0.74-1.18,2.16l2.24,0.62c-0.79,2.36-0.43,0.04-1.07,1.54
                                c2.13,1.6,1.54,0.58,3.71,0.56c2.14-0.03,1.65,1.05,3.82-0.36c2.62-1.7,0.5-1.15,6.88,0.51l-0.01,2.04
                                c1.82,0.1,2.57,0.22,4.26,0.44c2.13,0.27,2.34-0.29,4.11-0.14c3.6,0.3,4.65,1.33,8.2,1.88L137.02,425.74z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st3" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="ashoknagar-8" title="अशोकनगर : User Count : 5" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M303.11,289.59c-0.63-0.36-0.42,0.07-0.71-0.51l-0.9,1.66c0.76,1.71-0.18,0.15,1.71,1.31
                                c-2.2,2.16-5.87,3.94-4.14,7.13c0.32,0.59,4.23,3.66-0.28,8.53c-0.69,0.74-4.42,3.2-2.93,7.89c0.81,2.55,0.29,3.11,0.51,5.66
                                c0.28,3.29-0.52,1.99-0.84,3.92l2.01,0.9l-0.29,2.57c2.89,0.44,3.74,1.56,5.96,1.88l2.64-3.47c3.47,1.24,0.26,1.53,3.1,2.01
                                c3.19-0.31-0.23-1.22,4.42-1.92l-1.15,3.63c-3.14,0.49-0.85-1.21-3.62,1.15c-1.27,1.08-2.18,0.92-3.55,2.1
                                c0.46,0.44,3.25,1.82,4.03,2.06c2.33,0.73,5.25,0.29,7.1-0.09l8-0.17c0.85,1.75,0.14,1.21-0.16,3l2.66,0.64l0.92,2.27
                                c1.51-0.13,0.1-0.47,1.89-0.59c1.37-0.09,0.8,0.36,2.5,0.28c0.81-1.6,0.21-2.13,1.48-3.45c3.29,0.17,0.68,2.71,4.18,2.09
                                c-0.12-2.57-1.86-3.28,1.3-5.31c2.92-1.87,2.72-1.31,3.65-4.61c1.06-0.48,1.75-0.48,2.66-0.91c1.04-0.49,0.95-0.74,2.13-1.35
                                c2.79-1.43,1.71-0.52,2.91-3.42c-1.78-1.45-0.7,0.35-2.03-1.78c-4.01-6.41,2.48-1.12,2.1-8.33c-0.1-2.01-0.82-1.29-0.52-3.33
                                c0.28-1.96,0.92-0.24-0.15-2.87c-1.18-2.92-2.57-2.86-2.44-5.82c0.1-2.3-1.03-4.04-2.53-5.85c-1.66-0.09-3.46,0.24-4.82,0.17
                                c-1.29-0.06-2.68-1.1-3.86-1.03c-1.74,0.11-1.29,1.55-3.57,0.82c-1.14-0.36-0.27-0.33-1.71-0.7c-1.49-0.39,0.3,0.51-1.27-0.2
                                c-0.51-4.48,2.76-7.71,2.91-8.36l-3.56-0.4l-0.57-1.49l-2.77,0.12l-1.23-1.64c-2.77,0.59-1.59,0.76-4.14,0.14
                                c-0.98,3.09-2.71,5.53-4.69,8.03c-1.14,1.43-0.47,1.13-1.41,2.5c-1.1,0.79-3.78,1.17-6.17-1.35
                                C306.7,291.91,304.64,289.76,303.11,289.59z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st7" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="gwalior-8" title="ग्वालियर : User Count : 21" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M333.22,183.03c-0.96,2.43,1.28,5.16-3.42,4.97c-5.82-0.24-3.4,2.74-8.05,2.61l-1.22-2.65
                                c-2.02,0.67-5.17,6.07-5.7,7.88c0.64,2.04,1.04,1.28,1.57,2.43c0.38,0.81,0.13,1.8,0.28,2.95c0.53,4.13-0.56,2.02-3.41,2.85
                                c-1.5,5.24-0.81,1.19-3.26,4.18c-0.55,2.43,0.32,6.89,2.83,7.44c4.41,0.96,6,4.71,6.01,4.71c1.52,0.58,3.29,0.34,4.37,1.36
                                c1.38,1.3,0.62,2.57,1.06,4.23c2.13,0.48,7.32-1.12,7.7-1.1c1.16,1.65-0.17,3.08,3.27,3.72c2.78,0.52,11.09-1.18,13.11-2.97
                                c3.23-2.86,2.45-1.3,5.48-2.69l0.47-2.99c2.26-0.62,3.25,0.33,4.54-0.85c0.94-0.85,0.91-1.46,2.59-2.72
                                c5.21-3.91,1.95-2.12,4.31-6.21c2.56-1.35,3.65-0.48,6.37-3.23c1.23-1.24,0.97-1.92,1.89-2.93c1.13-1.25,1.65-0.57,2.48-1.87
                                c-0.73-1.51-2.04-1.8-2.27-2.91c-0.34-1.67,0.92-1.7,1.77-2.85c-1.33-7.25-3.26-4.28-5.33-3.6l-4.06-5.29
                                c-1.96-0.06-1.48,1.98-3.78-0.55c-2.28-2.51-1.23-2.69-2.4-5.06c-1.58-0.42-6.49-1.19-7.94-0.75c-2.86,0.89-1.61,3.98-5.74,2.65
                                c-2.9-0.94-2.45-3.08-6.3-1.97C337.48,182.7,336.41,183.39,333.22,183.03z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st9" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="umaria-8" title="उमरिया : User Count : 3" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M553.04,367.25c-1.84-0.84-1.72,0.33-2.75-1.27c-0.85-1.32,0.07-1.13-0.72-2.41l-3.62,0.15
                                c-1.32-2.7,0.08-1.77-2.35-4.6c-1.1-1.28-1.73-2.84-2.87-4.2c-2.44,1.82-0.96,0.7-3.85,1.16c-0.74,2.14-0.07,2.33-0.53,3.74
                                c-1.56,0.71-0.26,0.39-2.12-0.04c-0.73,1.56-1.16,2.58-1.69,4.1c-1.9,0.7-0.83-0.25-2.33,0.66c0.53,4.12,0.27,2.02,2.78,3.66
                                l-0.94,1.68l1.94,1.01c0.38,2.24,0.16,1.79,0.9,3.97c1.28,3.77-0.49,2.34-0.57,5c-0.03,1.15,0.95,2.6,0.49,5.65l-5.98,0.79
                                c-2.12-1.66-6.3-3.98-7.5-6.24c-1.04,2.77-1.31-0.39-2.4,3.43c-1.61,5.63-1.71,3.68-3.67,7.77c-0.98,2.04-1.39,1.39-3.24,2.38
                                c-3.92,2.1-0.65,7.59-0.93,9.02c-0.49,2.47-3.14,0.94-1.86,3.51c0.63,1.26,2.45,2.11,0.56,3.32c4.6,0.74,3.87,0.08,8.39-0.61
                                c2.05-0.32,3.59-0.54,6.68,2.16c-0.98,3.18-0.15,0.9-1.52,2.63l-1.27,1.97c0.91,1.87,0.61,0.36,1.36,1.77
                                c0.72,1.36-0.04,1,0.78,1.93c1.99,2.25,2.1-0.95,2.87-1.91c2.48,0.06,2.28,0.96,4.04,2.31c1.22-0.92,1.83-1.29,3.07-2.14
                                c1.48-1.02,2.18-5.16,4.68-1.72c1.5,2.06,3.89,4.29,6.41,5.06c7.66,2.34,4.38-4.79,5.25-8.08c2.06-1.05,4.82-1.78,2.95,1.53
                                c2.63,1.26,2,0.34,4.1,2.93c1.66,2.05,0.54,3.11,4.07,2.76c1.2-1.55,0.18-0.61,0.66-1.54c0.9-1.72,0.92-0.35,1.57-2.71
                                c1.92-7.03,2.29-1.82,0.76-8.27c-0.66-2.76-0.4-0.71-1.61-2.72c-2.08-3.45-1.28-8.45-1.42-10.5c-3.03-1.19-2.84-0.04-3.65-3.67
                                c-0.74-3.31,0.38-2.87-1.03-5.47c1.26-2.08,1.28-0.68,1.31-3.53c-0.05-0.04-5.4-3.36-4.21-7.26c2.64-1.37,4.65,0.47,5.5-2.01
                                c-3.23-1.64-0.79,2.01-4.03-2.44C550.27,370.84,552.92,368.26,553.04,367.25z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st4" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="sidhi-8" title="सीधी : User Count : 5" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M625.65,314.46c-4.28,0.18-3.9,1.15-8.9,0.34c-2.15,3.32-1.5,1.07-4.98,2.85c-4.06,2.08-2.82,0.3-5.09-0.21
                                c-2.59,1-2.33,0.44-2.63,2.87c-3.43,0.48-3.42,1.79-11.76,1.93c-3.09,0.05-6.63,2.95-9.91,4.06c-5.3,1.78-5.02,2.19-9.42,4.58
                                c-2.91,1.58-6.58,3-9.46,4.4c0.22,2.71,0.94,1.75,1.92,2.85c1.51,1.71-0.48,0.89,0.87,2.61c2.57-0.09,1.69-0.81,5.47-0.29
                                c2.28-1.86-0.81-0.82,1.8-1.61c1.65,2.48,2.27,5.33,0.89,8.31l2.13,0.93c-1.71,3.74-0.5-1.5,0.67,5.88
                                c1.96,0.14,1.75-1.35,3.32,0.66c-1.1,2.21,0.72-0.67-2.24,2.19c-1.24,1.19-0.97,0.99-2.81,0.95l1.92,0.91l-0.59,2.69
                                c2.66,0.86,1.56-0.4,3.48,2.16c-0.4,2.07-1.01,0.03-0.96,2.86l3.85,2.14c1.45-0.77,0.36-0.53,2.41-1.33
                                c1.14-0.45,1.22-0.4,2.26-1.11c1.52,1.2,2.31,2.83,3.56,4.21c1.15,1.27,2.02,2.95,4.05,3.82c4.46,1.92,8.96-3.01,10.42-4.1
                                c1.58,0.3,1.49,0.73,2.33,0.94c1.6,0.39,1.24-0.23,2.84-0.18c2.33,0.07,2.97,1.49,3.98,3.16l7.8-0.19c1.6-1.53,3.39-3.07,3.7-5.14
                                c0.5-3.29-2.97-1.52-1.21-6.11c-2.97-1.42-1.5-0.5-3.81,0.18c-3.92-2.41-1.27-0.21-4.87-1.8l-1.27-0.43
                                c-2.94-0.73-1.98-1.09-3.68-1.19c-1.01-0.06-2.46,0.12-3.66-0.22c-0.84-1.6-0.05-2.56-2.07-3.7c-3.52-2-0.68-0.9-2.47-3.23
                                c-0.4-0.31-3.06-1.4-3.94-1.86c0.11-5.4,3.96-6.84,5.76-10.69c2.08,1.03,0.29,1.09,2.77,1.58c0.49-0.46,1.29-1.56,1.78-2.15
                                c1.84-2.25,0.12-0.64,1.19-2.88l4.8-0.68c0.73-1.44-0.21-1.53,0.85-2.7c0.99-1.1,1.55-0.59,3-0.6c-0.02-1.71-0.52-0.6,0.04-2.12
                                c5.03,1.12,2.63,0.03,2.87-2.33c2.41-0.96,2.22-0.62,3.65-2.43c1.22-1.53,1.4-0.85,3.24-2.45c2.52-2.19,1.94-0.42,3.92-1.8
                                c1.2-0.84,1.02-1.42,2.96-2.6l-1.08-0.7c-0.78-0.49-0.25,0.03-1.06-0.71c-0.64-0.59-0.63-0.95-1.29-1.72
                                c-2.06-0.15-1.59,0.19-3.54-0.46l-2.86-0.93C626.07,314.15,626.27,313.78,625.65,314.46z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st0" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="bhind-8" title="भिंड : User Count : 5" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M369.33,155.18c-2.35,1.37-2.79-0.55-4.16,1.42c-0.77,1.11-1,1.09-1.67,1.89c-1.21,1.45-0.6,1.54-1.5,3.11
                                c-1.67,0.59-1.72-0.47-3.22,0.86c-1.36,1.21-1.52,2.49-3.37,3.03c-1.87-0.69-1.34-1.34-2.74-2.16c-0.92,0.93-0.41,1.29-1.32,2.35
                                c-0.96,1.12-0.93,0.08-1.9,0.51c-2.06,0.92-0.45,3.68,0.73,4.81c6.68,6.4,0.17,6.01,1.31,9.08c0.74,0.45,3.01,0.03,4.41,0.29
                                c1.88,0.36,3.9,0.63,5.82,1.11c0.19,4.57-0.23,1.55,1.87,5.48c3.09,0.46,2.35-2.2,4.49,1.25l2.62,3.91
                                c1.63-0.81-0.17-1.06,3.01-1.44c0.08-0.01,0.21-0.02,0.29-0.03c1.29-0.17,1.82-2,1.98,3.77l1.42-1.55
                                c1.39,1.15,1.18,1.1,3.07,1.18c-0.15-2.26-1-3.28,1.56-4.34c4.14-1.72-0.11-0.7,3.47-3.47c1.05-0.81,3.49-2.79,4.46-0.27
                                c0.58,1.5-1.56,2.28-1.98,4.03l2.52,1.9c-0.89,1.93-2.12,1.07-1.36,3.12c0.54,1.45,1.52,2.78,1.91,4.29l-2.17,1.44
                                c3.09,4.63-2.89,1.31-1.83,7.78c0.25,1.53,0.81,2.5,2.35,2.57c2.93,0.13,0.91,1.31,3.19,2.92c3.45,1.02,6.11-9.71,6.11-9.72
                                c0.81-1.36,2.1-1.68,2.98-2.98c-0.81-1.97-3.62-2.6-3.14-4.97l3.24-0.99l-1.36-2.76l3.08-1.14c-1.09-1.24-1.55-0.6-2.21-2.05
                                c1.38-2.05,2.37-0.63,4.35,0.04l-0.88-2.52c1.07-1.07,3.52-2.47,4.83-3.64c2.55-2.29-0.68-2.11-2.05-3.37
                                c-0.08-6.53,2.96-3.12,2.61-6.08c-1.96-1.55-2.03,1.25-4.52-0.79c-0.63-2.44,1.61-1.49-0.4-4.39c-1.07-1.54-2.27-2.54-3.42-4.03
                                c-2.18-2.82-0.54-2.19,0.18-4.12c0.03-0.08-0.38-4.52-0.51-4.83l-3.22,1.57l-0.23-3.26c-2.43-1.02-3.39,0.32-5.27-0.42
                                c-1.77-0.7-2.06-2.56-3.04-3.59c-0.31-0.32-7.28-2.76-8.57-3.19c-2.29,1.35-0.74,1.32-3.87,1.94c-2.8,0.56-1.94,1.45-4.71,0.84
                                C367.84,148.55,369.62,153.39,369.33,155.18z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st8" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="neemach-8" title="नीमच : User Count : 3" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M131.46,284.11c-0.06,2.21,0.36,4.29-0.25,6.42c-2.29,0.69-2.23,0.13-2.85,0.22
                                c-0.69,0.11-1.69,1.37-2.62,1.96c-1.51-0.38-1.93-0.96-2.92-1.23c-1.24-0.33-2.21-0.06-3.69-0.29c-1.28-2.63-1.9,0.19-2.79-2.39
                                c-0.96-2.76,1.06-2.57-2.95-2.48l-0.66-2.67c-4,2.13,0.53,7.36,0.52,11.31c1.64,0.78,2.29,1.9,3.99,1.99
                                c1.72,0.09,5.17-0.35,6.57,0.06c2.01,3.77,0.31,3.29-1.43,4.14l0.5,2.62c-1.23,1.07-0.91,0.13-1.96,0.97
                                c-0.96,0.76-0.34,0.61-1.24,1.82c-1.18,1.59-3.56,1.54-5.28,1.14c-1.85-1.75-4.51-7.25-5.15-9.87c-0.09,2.86-0.5,2.47-0.71,2.81
                                c-1.51,2.5,0.42,0.13-1.12,4.08c1.83,0.98,1.38-0.97,2.71,1.08c-0.71,2.92-2.15,0.18-2.04,5.41l-2.8,1.03
                                c1.37,5.58-1.05,3.68-2.51,5.85c1.55,0.39,1.22,1.1,2.62,1.62c1.94,0.71,1.78-0.37,4.23,0.14c1.56,1.61,0.78,1.11,2.87,1.92
                                c0.31,2.4-1.76,3.87-3.05,5.26c-2.48,2.66-1.89,3.01-2.2,6.59c-1.45,1.39-2.07,0.72-2.12,2.93c2.29,0.51,1.42,0.04,3.21-0.17
                                c5.51-0.64,6.31,1.39,7.14,1.83l3.54-3.89c-0.07-1.75-1.11-3.02,0.72-4.52c1.35-1.11,0.96-0.42,2.05-1.06
                                c1.17-0.69,2.03-3.04,4.77,1.38c1.07-0.4,2.3-1.57,3.5-1.45c2.03,0.21,1.18,1.29,1.31,1.77c4.58,0.75,0.67,2.04,8.33,1.46
                                c2.88-0.22,2.03,0.32,4.48-0.88c2.63-1.29,2.17-0.06,3.82,0.93l3.31-0.86c0.91-2.78,1.97-3.03,3.98-5.1
                                c1.29-1.33,1.92-3.57,4.17-5.46c2.78-2.34,4.22-1.11,3.84-5.78c-0.16-1.94-0.46-2.69-0.8-4.2c-0.49-2.23,0-1.68,1.54-2.63
                                c-2.87-1.87-2.05-2.57-3.74-3.78c-2.33-0.9-1.71,3.34-11.72,0.43l-8.5-1.92c-2.41-0.07-0.9-0.02-2.41,0.49
                                c-0.92-1.15-1.94-2.66-2.32-3.76c1.92-5.45,2.38-2.92,4.63-4.81c-1.79-2.4-3.51-0.45-2.87-6.17c2.81,0.23,0.41,1.03,2.69,0.65
                                c1.68-0.28,1.03-0.61,2.57-1.37c-0.38-2.16-2.2-2.64-0.08-4.42c2.13,0.87-0.03,0.75,2.73,4.02c1.53-3.31,0.97-1.59,0.22-4.3
                                c-0.92-3.35,1.14-1.92,1.98-4.08c-3.33-0.3-9.09,0.34-10.19,0.21c-2.03-0.23-0.21-0.92-2.45-0.42
                                C134.46,281.94,137.3,281.56,131.46,284.11z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st7" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="indore-8" data-html="true" title="इंदौर : User Count : 638" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M199.96,464.37l0.42-0.77c0.45-1.78,0.45-0.66,2.79-1.58c0.89,1.73-0.11,0.62,0.13,1.82
                                c1.76-1.65,1.24,0.1,2.91-0.39c0.93-2.94-1.96-2.4-3.09-2.54c0.26-1.11,0.39-0.91,0.29-2.14c-10.16-1.18-5-0.97-9.71-8.69
                                c-2.56-4.2-0.86-2.41-4.79-5.64c-0.74-3.58,0.26-3.91-2.95-6.73c-3.29-2.9-1.01,0.07-4.33-5.31c-1.56-0.11-1.27,0.15-2.21,0.16
                                c-11.44,0.19-4.63,0.59-8.33,1.43l-3.44-0.72c-3.05,0.77,0.17,1.11-2.52,1.12c-2.1-3-0.57-3.67-1.08-5.9
                                c-3.48-1.12-2.89-0.2-3.86,0.84l-3.58,3.85c-1.04,1.46-0.32,1.38-2.37,0.97c0.7,3.38,0.92,1.12-1.31,3.49
                                c0.66,2.53,0.81-0.95,1.09,2.26c-4.34,1.8-1.63,2.89-3.2,6.79c-0.63,1.57-0.42,1.56,0.21,3.27c0.67,1.82-0.06,1.32,2.54,1.46
                                l0.29,2.6l2.04,0.65l1.21,7.01c3.75-0.29,0.78-0.35,3.01-1.77c3.46,0.86,0.66,2.51,4.75,2.13c4.86-0.46,0.45-1.68,4.54-2.18
                                c2.72,4.53-3.29,9-7.46,7.92l-0.03,3.24l-2.82,0.91c0.16,1.43,1.1,2.6,0.77,4.43c-0.5,2.81-1.65,1.69-1.17,4.39
                                c1.21,1.33,2.86,0.52,4.25,3.06c1.63-0.32,0.2-0.59,1.56-0.37c1.65,0.27-0.36,0.15,0.97,0.68c1.94-0.56,1.88-1.03,3.34-1.59
                                c2.62-1,1.55,0.01,3.54-0.06c2.46-0.09,3.85-2.38,5.91-3.09l1.64,2.1l3.37-0.72c0.47-1.9-0.06-2.19,2.34-2.38
                                c1.36-0.11,2.58,0.28,3.9,0.46c2.25-3.64,0.94-0.96,3.75-3.43c-0.49-2.01-1.05-1.33-1.48-3.25c-0.28-1.24-0.2-2.46-0.41-3.77
                                c2.19-1.14,0.62,0.83,2.2-0.9c0.76-0.84,0.99-1.29,1.65-1.81C196.86,464.4,197.74,465.51,199.96,464.37z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st3" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="tikamgarh-8" title="टीकमगढ़  : User Count : 7" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M400.47,265.34c1.29,1.87,2.2,0.52,1.61,4.42c-3.08-0.16-2.13-3.53-5.28-0.94c-1.02,0.84-5.91,7.85-7.45,8.79
                                c-3.36,2.05-2.15-1.51-5.16,1.15l-1.68-1.71c-1.28,1-3.71,2.22-5.16,2.1c0.07,2.45-0.22,5.45-1.24,7.7
                                c4.69,5.09,0.77,3.72,4.94,5.67c2.96,1.38,4.76,1.41,5.53,5.03c0.76,3.57-0.6,0.71-0.77,4.1c-0.06,1.1,0.53,3.66,0.41,4.84
                                c-0.4,4-2.71,1.51-1.46,8.07c2.69,1.09,4.11-0.5,6.27-2.02c1.61-1.13,0.77-1.02,2.32-1.29c2,1.96,1.55,4.17,4.89,7.02
                                c-0.43,5.23,0.48,2.63,1.52,4.73c-2.04,2.66-3.28,0.64-4,0.35c-0.58,1.62,0.1,1.67,1.07,2.32c1.47,0.98,1.04,0.98,3.04,0.9
                                c1.09-1.65,1.88-5.96,2.7-7.37c0.43-0.73,1.67-1.41,2.55-2.72c1.63-2.44-0.02-1.12,0.64-3.68c4.8-1.45,6.47,1.33,9.4,0.54
                                c0.6-1.42-0.05-3.33,2.19-3.6c5.45-0.67,3.84,0.97,5.79-4.97c1.04-3.16-0.28-2.27-0.71-4.16c-0.59-2.59,1.95-5.56,2.72-7.87
                                c0.57-1.72-0.56-7.71-0.75-9.89c-0.36-4.29,1.33-3.68-0.17-9.09c-1.44,1.03-2.18,1.84-4.22,1.73c-1.46-2.44,1.51-3.29-2.3-2.61
                                c1.2,0.81,1.49,0.54,1.35,2.55l-2.52,0.69c-1.56-1.62-0.69-2.43-2.44-2.2c3.49,2.46-2.91,2.44-3.97,2.19
                                c-0.44-1.69-0.69-2.29-0.55-4.09l-1.99-1.12c-1.48,1.66-1.2,3.86-4.16,3.12c-0.2-1.87,0.07-0.73,0.18-1.87l0.06-1.96
                                c0.34-2.18,1.05-0.63,1.82-2.6c-1.41-1-0.76,0.03-2.09-1.35c-1.98-2.08,0.26-0.57-1.28-2.59
                                C400.73,264.2,401.14,263.93,400.47,265.34z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st5" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="anuppur-8" title="अनुपपुर : User Count : 4" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M619.44,409.72c-0.95-3.25-0.26-3.59-3.45-2.1c-2.49,1.17-3.55,0-2.9-2.46l-2.59,0.59
                                c0.28,1.78,0.54,1.18-0.04,2.9c-1.69,0.53-1.17,0.24-2.95-0.16l-2.65,5.46c-3.04,0.55-3.92-2.05-6.13-0.64
                                c2.17,1.04,1.11,0.7,2.61,1.74c1.19,0.83,2.23,0.8,1.68,2.66c-1.66,0.35-3.72-0.63-5.54-0.39c-2.48,0.33-1.19,1.94-2.97,3.37
                                c-2.15,1.73-2.65,0.53-4.77,0.79c-1.69,0.21-1.01,0.69-2.63,0.83c-0.89,0.07-1.45-0.25-2.59-0.29c-1.51,1.8-0.66,3.09-3.03,4.48
                                c-0.53,0.31-0.47-0.06-1.48,0.75c1.72,3.12,2.43,0.53,4.47,6.48c-1.27,1.03-1.89,0.33-3.96,1.87c-0.04-0.04-1.3-1.87-1.31-1.88
                                c-0.64-1.55-0.4-0.41,0.56-2.04c-2.68-0.59-2.73,0.76-5.36,0.82c-1.59,0.03-3.78-0.18-5.69-0.1c-1.74-2.45-1.31-1.78-4.37-2.63
                                c-0.48-2.87,0.76-3.22-1.53-5.45c-1.03-1-1.48-0.96-2-1.52c-1.19-1.29,0.03-0.69-1.17-1.87c-1.03-1.01-0.66,0.33-1.88-1.62
                                c-0.39-0.62-0.4-1.04-1.13-1.91c-1.44-1.72-2.11-1.52-4.13-2.64l0.77-2.04l-2.27,0.89c-0.21,2.6,0.8,3.5,0.2,6.16
                                c-0.66,2.91,1.42,3,3.06,3.97c1.15,0.68,1.05,1.37,2.63,3.38c0.05,0.07,0.12,0.19,0.18,0.26c1.76,1.99,2.29,0.56,3.18,4.58
                                c-0.96,1.12-6.24,4.82-4.57,10.95c2.04,0.91,7.15,2.68,8.83,3.78c3.04,1.97,6.46-0.42,8.24,4.04c0.62,1.55,0.75,3.41,2.66,3.81
                                c9.97,2.06,7.99-2.49,14.78-1.49c1.17,1.88,1.02,3.45,0.92,5.61c4.36,1.72,1.51,1.2,3.72,4.23c1.65-2.49-0.3-2.63-0.42-5.46
                                c1.45-2.65,2.81-1.51,1.8-5.22c-0.76-2.8-1.36-3.2,0.03-6.27c1.55-0.56,2.48-0.43,3.98-0.75c2.59-0.55,1.02-0.34,2.43-1.94
                                c0.84-0.96,4.1-3.04,5.19-4.01c0.11-2.82-4.88-9.83,4.05-9.25c4.88,0.32,1.99-2.64,5.68-2.33c1.78,0.15,1.94,1.19,3.31-0.3
                                c0.09-0.1,1.51-2.13,1.62-2.31c-3.41-5.34,2.84-8.36,2.49-12.65C619.23,408.04,622.31,410.26,619.44,409.72z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st4" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="shahjapur-8" title="शाजापुर : User Count : 5" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M234.42,393.63c-1.95-0.92-0.6-0.05-2.17,0.05c-1.5,0.09-3.28-1.75-5.09-1.16c-0.42,1.5,0.72,1.81-0.85,4.17
                                c-1.88-0.15-3.52-1.9-5.06-3.13c0.25-5.59,0.03-4.14,1.38-4.86c-1.87-1.98-0.82-1.78-2.52-3.52c-1.76-1.78-1-1.38-1-3.83
                                c-3.24,0.99-1.84-0.76-4.52,0.06c-4.87,1.48-4.58-0.4-8.87,0.22c0.72,1.96,2.14,8.64,1.41,10.3c-1.66,0.48-2.65-0.03-4.04-0.62
                                c0.96,3.96-0.34,2.31-0.99,4.92l2.29,0.2c1.17-1.18,2.36-3.56,3.93-0.74c1.17,2.1-1.38,1.8-3.09,3.41
                                c-0.16,1.29,0.86-0.05,0.43,2.6c-0.35,2.16,0.05,1.49,0.11,3.69c1.67-0.07,3.93-0.49,2.79,2.78c-0.73,2.07-2.39,1.22-3.55,1.25
                                c-0.6,1.52-0.89,4-1.33,4.82c-1.26,2.37-1.83,0.03-3.59-0.15l-0.75,2.71c7.59,3.3,11.19,0.61,17.24,0.9
                                c2.81,0.13,2.38,0.7,3.58,2.43c10.29,1.3,5.03,3.4,10.9,6.35c3.82-1.39,3.3-2.65,3.58-6.22c2.13-0.47,1.27-0.08,2.63,0.12
                                c2.36,0.34,0.76-1,2.41,1.68c0.54,0.88,0.15,0.45,0.79,0.91c0.02,0.02,1.15,0.55,1.21,0.59l1.37,0.63l-0.43-2.52
                                c1.8-0.34,1.97,0.07,2.72,1.31c1.14,1.88,5.06,5.49,7.33,3.06c0.96-2.48-0.36-6.04,1.44-7.7c1.4-1.3,1.25,0.15,3.24-1.6
                                c3.75-3.3,2.39-3.97,3.29-10.17c0.44-2.99,1.86-3.74,2.54-6.73c-1.61-1.52-2.38-1.94-4.59-1.98l-1.78,2.15
                                c-2.83-1.08-2.15-3.48-2.15-3.48c-3.04,0.34,0.66,0.66-4.15,1.99c-4,1.1-0.03,0.71-3.72,2.6c-1.2-0.66-1.91-1.68-2.63-2.89
                                c-1.33-0.01-2.86,0.47-3.93,0.38c-1.72-0.15-0.71-0.67-3.4-0.94l0.09-2.67C236.19,394.62,234.97,393.89,234.42,393.63z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st1" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="jhabua-8" title="झाबुआ : User Count : 6" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M106.95,419.81c0.72-1.28,1.74-1.17,0.99-3.08c0,0,0.61-1.18-1.02-0.67c-0.96,0.3-0.08-0.08-0.86,1.09
                                c-1.78,2.65-3.06,1.77-5.78,1.62c-1.8,2.96-4.59,4.23-7.87,4.68c-1.04,2.15-0.82,2.65-3.55,3.3c-6.1,1.45-6.13-4.1-9.47-0.83
                                c-0.89,0.87-0.36,0.81-1.36,1.72c-0.97,0.88-0.79,0.23-1.78,1.24c1.12,2.02,0.49-0.75,3.22,5.85l-1.87,1.25
                                c0.58,1.3,1.97,3.42,3.14,4.14c1.51-0.63,1.87-2.14,4.26-1.14c0.72,0.52,3.23,5.92,0.26,8.57c-1.66,1.48-0.31-0.98-1.61,2.3
                                c-0.86,2.18-1.98,2.67-2.62,5.22c-0.45,1.82-1.12,4.46-1.63,6.08c0.98,1.11,2.76,1.8,3.28,3.33c1.3,3.81-0.83,0.83,2.32,4.2
                                c0.97-1.26,1.14-2.52,2.56-3.23c2.74-0.9,2.11,0.03,3.64,0.95c1.6,0.95,1.07-0.26,3.46,1.79c1.51-1.65,1.16-0.64,2.87-1.86
                                c1.69-1.2,0.78-1.08,1.89-2.46c1.64,0.1,3.81,1.1,5.17,1.86c0.01,0,0.3,1.41,1.91,0.04c2.96-2.54-0.19-11.97,0-13.69
                                c3.06-0.89,5.24,1.14,8.28,0.13c2.18-0.72,0.36,0.1,1.72-1.43c1.69-1.9,2.16-0.79,3.03-3.53c0.8-2.53,3.27-3.71,3.77-8.83
                                c0.15-1.52,0.2-3.43,0.31-5.13c0.85-12.7-0.5-3.97-1.09-9.94l-4.64-1.36c-2.34,2.14-3.79,1.39-6.75,1.57
                                C108.87,423.7,108.41,423.13,106.95,419.81z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st1" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="harda-8" title="हरदा : User Count : 1" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M278.05,470.28c-1.39-0.42-1.68-0.07-2.83-0.68c-1.56-0.83-2.64-3.86-6.4,0.13
                                c-7.36,7.81-8.72,2.72-15.35,5.21c-1.81,0.68-2.54,1.74-4.19,2.38c-1.54,0.6-3.23,0.72-3.55,2.55c-0.3,1.72-0.65,3.54-0.37,5.28
                                c2.09,1.4,2.63-0.32,7.53,3.24c-0.84,3-3.82,2.27-3.55,8.88c0.13,3.25-0.5,0.68-0.9,3.41c1.43,0.59,3-0.25,2.39,1.76
                                c-0.21,0.67-1.23,2.17-1.38,3.49c-0.19,1.73,1.75,4.75,2.75,6.3l1.28-1.61c4.32,0.81,2.73-1.17,6.15,2.25
                                c4.18-1.03,0.52-0.82,5.14-0.41c1.82,0.16,3.91-0.77,5.41-0.25c1.51,0.53,4.26,5.4,6.31,5.94c2.05-1.9,0.11-4.67,10.14-6.18
                                l1.03-2.43c2.61-0.08,4.31,0.61,6.99-0.68l-0.1-2.42l-2.93-1.06c-0.01-1.89,0.99-3.74,0.48-6.22c-2.99-0.48-2.23,0.8-3.98-1.79
                                c-1.53-2.27-1.75-0.94-3.17-2.51c-0.61-3.15,0.52-3.93-0.87-7.03c-1.33-2.97-1.96-0.17-2.46-5.07c-0.26-2.54-2.01-4.09-2.15-5.05
                                c-0.67-4.71,0.9-2.23-2.35-5.75L278.05,470.28z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st8" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="alirajpur-8" title="अलीराजपुर : User Count : 2" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M100.39,475.93c-0.52-1.9-2.32-0.82-1.53-4.25c0.4-1.7,1.54-4.18,1.81-5.21l-3.39-1.7
                                c-1.49,0.73-3.52,3.27-5.82,4.16l-5.99-2.99c-3,1.21-1.15,1.75-3.26,3.54c-3.97-0.46-2.24-4.2-4.16-6.05
                                c-3.14-3.02-3.12-2.42-6.9-2.81c-4.15-0.44-3.71,1.02-5.88,4.1c-0.19,0.26-5.42,4.73-5.71,4.9c-2.06-0.43-6.79-5.52-7.07-0.23
                                l2.98,0.43c0.09,0.5,0.2,1.41,0.35,1.85c0.62,1.81,0.17,0.04,0.73,1.4c0.8,1.94-0.82,1.17,0.75,2.81
                                c1.35-0.28,0.16-1.34,2.35-2.25c1.71,0.82,0.21,2.54,1.59,1.11c1.32-1.37-0.77-1.18,1.41-2.65c1.62,0.99,1.19,0.88,1.19,2.96
                                c2.83-1.06,5.7,3.05,6.11,4c-3.32,0.86-1.85-0.54-4.79,2.15c-2.02,1.84-0.94,0.22-2.44,3.18c-3.95,0.12-4.45-0.63-6.2-3.56
                                l-2.21,0.48c0.12,2.91-1.43,4.19-0.39,6.18c1.79,3.42,1.29,0.25,0.89,3.63l2.68,0.91c1.15,5.88,0.34,7.05,0.58,8.17l3.08,0.77
                                c0.52,3.75-4.88,4.8-5.14,7.11l3.07,1.16c0.37,2.1-0.58,1.79,1.04,3.1c1.23,0.99,2.21,1.44,3.83,1.37
                                c7.74-0.34,2.9-2.42,7.17-3.31c5.03-1.05,1.93-2.82,6.66-3.94c3.04-0.71,5.53-0.63,6.06-4.25c-1.21-0.72-1.48-0.12-2.2-1.52
                                c1.77-1.55,2.1-0.4,4.29-0.79c0.27-1.52-1.29-1.76-2.47-3.33l2.11-5.51c1.65-0.41,2.97,0.11,4.61-1.19c1.48-1.18,0-1.03,2.28-1.59
                                c1.54-0.38,1.57,0.44,2.88-1.01c-0.41-1.95-2.98-1.29-2.51-4.5c0.43-2.96,2.56-1.6,4.52-1.79
                                C98.64,476.64,94.86,479.12,100.39,475.93z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st8" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="burhanpur-8" title="बुरहानपुर : User Count : 2" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M244.37,550.1c-0.68-1.12-1.66-1.2-1.69-2.29c-0.04-1.5,0.62-0.26,1.44-2l-3.4-1.91
                                c-2.28,1.26-3.31,0.77-6.13,0.5c-2.94-0.29-3.57-0.23-6.55,0.05c-4.19,0.39-6.35-1.52-10.33-2.43c-3.57-0.82-0.5,2.32-4.98,2.07
                                c-2.48-0.14-3.51-1.68-5.86-1.19c-2.41,0.51-3.44,2.4-4.83,2.73c-2.81,0.68-2.4-1.79-3.44-3.3c-2.85,0.44-7.79,2.67-7.8,2.67
                                c-4.21,0.79-5.2-2.12-4.95,4.34c2.26,0.22,6.37-1.9,2.84,8.06c4.18,2.92,5.24,1.1,6.92,0.51c1.86,1.86,1.45,3.31,2.44,5.48
                                c0.9,1.98,3.31,2.68,1.23,5.15c1.47,1.24,2.1,3.17,1.36,5.44l-3.59-0.22c1.59,2,0.96,1.6,1.88,3.17c2.83,4.83,4.83,0.72,9.46,3.19
                                c1.3,0.69,5.41,0.63,6.96,0.07c1.1-0.4,1.45-1.06,2.4-1.52c1.96-0.95,1.15,0.37,2.49-1.42c1.67-2.23,1.48-3.76,2.5-5.33
                                c1.66-0.59,1.4,0.57,4.74-0.52c2.42-0.79,2.47,0.67,5.06,0.19c0.49-1.19,0.23-1.6,0.81-2.63c0.51-0.91,0.91-0.81,1.63-1.86
                                c-0.12-3.31-1.49-2.5-2.34-5.22c1.3-2.51,4.53-3.6,6.7-5.29c2.34-1.82,0.42-2,2.51-3.62C243.31,551.83,243.79,552.39,244.37,550.1
                                z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st5" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="datia-8" title="दतिया : User Count : 3" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M389.04,192.84l-0.29-0.92c-0.79-1.34-0.99-0.86-2.32-1.81c0.49-1.77,2.36-1.5,2.93-3.95
                                c-1.64-1.31-1.49-0.73-2.74,0.31c-3.34,2.78-1.14,0.43-1.73,2.35c-0.75,2.44-1.32,0.69-3.01,1.72c-1.69,1.03-0.33,2.13-0.96,4.2
                                c-1.25,0.2-3.04-0.44-3.75-0.28c-0.85,1.65-0.33,2.1,0.63,3.39c-1.52,0.51-1.01,0.58-2.57-0.07c-0.46,4.01,2.58,0.87,2.06,5.19
                                c-1.71,1.3-1.63,0.26-2.78,1.59c-0.75,0.87-2.3,5.33-8.09,5.96c-1.01,2.75-0.46,3.53-2.92,5.35c-0.76,0.56-1.94,1.24-2.59,1.78
                                c-1.75,1.46-0.68,1.14-1.72,2.62l-4.03,0.22c-1.46,3.21,1.8,1.98-3.13,3.9c-0.52,2.01,0.15,0.57-0.12,2.16
                                c-1.72,0.68-4.77,1.92-3.71,3.9c2.62-1.31-1.1-0.52,1.86-1.95c1.95,1.27,1.33,1.21,3.71,1.23c0.51,1.94,0.47,1.25,1.21,2.78
                                l-2.27,1.4c0.1,4.2,2.33,2.8-1.16,7.82c0.73,1.09,1.35,2.38,1.98,3.25l4.71,0.2c0.06,2.56-1.49,2.37-0.38,4.56
                                c1.55-0.47,1.48-1.49,3.49-2.72c-1.72-2.24,0.13-8.22,2.57-5.37c1.65-2.99,2.72-2.1,5.4-1.29c4.1,1.24,3.66-0.73,6.15-1.36
                                c1.09,1.45-0.14,2.91,2.23,1.7c0.93-0.47,1.18-1.6,3.01-2.4c2.24-0.97,1.91-0.06,3.82-0.62c1.25-0.37,2.79-0.64,3.68-1.49
                                c2.19-5.76-3.54-5.27-4.01-8.93c0.78-1.38,2.74-1.28,3.76-5.01c0.23-0.84,0.53-1.79,1.79-1.69c2.15,0.18,0.94,1.18,2.25,2.54
                                c1.72-3.64-0.58-1.38-0.87-4.16c1.27-3.18,1.69-0.58,2.6-2.53c-0.28-2.62,0.02-0.37-1.89-2.01c-0.51-0.43-1.49-2.02-1.73-2.65
                                c0,0-1.61,1.85-3.47-1.43c-0.83-1.46-0.32-1.44-0.28-2.89c0.08-2.4-0.11,0.72-0.68-1.85c2.78-2.81-0.14-2.77,3.63-3.31
                                c-0.73-0.43-1.23-0.57-1.63-1.61c1.06-1.39,1.66-0.94,2.85-1.62c-1.35-1.36-2.1-3.05-2.72-4.91L389.04,192.84z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st6" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="agarmalwa-8" title="आगरमालवा  : User Count : 4" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M208.19,348.45c-0.84-1.88-1.37,0.14-1.43-2.86c-0.05-2.34-0.03-1.56-0.6-3.7c-1.61-6.02,0.55-5.34-1.1-7.22
                                c-1.96,1.96,0.61,1.29-2.73,2.8c0.61,4.84,1.39,2.58-1.59,6.61c0.15,3.32,1.16,4.02,0.47,8.13c-2.86,0.29-0.63-0.15-3.21,0.73
                                c-6.4,2.18-2.31,1.6-5.46,3.35c-1.56,0.87-1.92,0.42-3.22,1.07c-0.33,2.49,5.17,6.28-3.93,9.7c-3.66,1.38-2.34-0.37-5.56,0.98
                                c-0.91,0.38-2.18,0.88-2.74,1.22c-0.88,0.53-0.91,1.47-2.08,0.73c-1.35-0.84,0.14-3.83-4.2-3.22c0.28,2.23,0.42,1.29,1.92,2.25
                                c-0.27,4.66-2.06,4.05-2.53,4.3c0.96,2.97-0.44,1.04-0.38,3.88c0.91-0.32,1.42-0.67,2.55-0.59c3.36,4.28,0.97,0.82,5.77,4.19
                                c1.44-1.95-0.32-2.17,2.13-2c2.22,2.7-0.72,4.03-1.99,5.5c3.25,4.82,0.47,7.63,5.73,7.06c2.51-0.27,0.97-0.27,2.91,1.02
                                c1.63-2.07,1.5-0.76,3.98-2.1c1.87,1.95,0.26,1.12,3.32,1.16c2.69,0.03,1.34-0.27,3.73-0.69l0.95,2.04
                                c1.61-0.88,1.09-1.81,3.54-2.11c2.6-0.32,1.25,1.48,4.37,0.45c-0.11-1.42-0.5-3.95-0.7-5.48c-0.26-2.04-1.29-2.49-1.05-4.59
                                c2.85-0.87,5.31,0.65,8,0.04c2.17-0.49,0.88-1.22,2.83-0.77c1.56,0.36,0.61,1.24,3.12,0.17c0.09-0.61,0.14-0.73-0.04-1.54
                                c-0.52-2.24-0.34-0.9-0.76-1.51c-1.4-2.06-0.99-0.75-0.6-3.76c-2.02-0.52-1.16-0.26-1.63-1.75c-0.68-2.18,0.18-0.56-1.13-2.04
                                c-0.54-0.61-0.28-0.24-0.76-0.99c-1.54-2.42-0.75-0.7-2.12-2.13c0.24-2.66,1.76-1.09,0.59-3.71c-0.77-1.73-1.39-1.47-3.44-2.29
                                c0.47-6.96,0.62-5.01-3.41-5.34l-0.66-3.99c1.88-1.06,1.12-0.09,2.07-1.21C207.25,350.1,207.88,348.89,208.19,348.45z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st10" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="bhopal-8" title="भोपाल : User Count : 859" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M304.24,411.1l-0.17-1.36l-1.43-0.1c-1.05-0.21-1.89-1.23-2.63-2.05c-1.18-1.3-0.76-2.14-0.31-3.58
                                c-3.88-0.39-1.42,1.86-4.34-0.14c-0.4-2.13,0.55-4.26,1.15-6.19c0.49-1.58-0.42-2.87-0.02-5.7c1.01-0.87,2.56-0.96,3.35-1.89
                                c0.76-0.88,1-2.68,1.39-3.83c1.73-0.66,4.84-0.38,4.24-3.18c-0.44-2.03-0.17,0-1.7-2.01c-1.55-2.03,0.06-0.44-0.56-1.98
                                c-3.58-1.53-1.6,0.19-4.87-0.84c-4.58-1.44-0.79-0.18-4.76,0.05l-4.37-4.98c-1.69-2.64-0.17-4.75-6.07-4.86
                                c-1.83-0.03-3.8-0.36-5.64-0.2c-0.91,2.66-0.15,4.76-1.3,7.85c-0.88,2.36-1.91,5.01-2.73,7.32c3.17,3.57,3.15-1.68,4.09,4.55
                                c3.46,0.81,2.43,1.52,4.65,3.37c-0.6,2.81-0.74,0.67-0.26,4.22l-0.3,5.82c-0.02,1.87,1.69,3.23-2.79,3.86
                                c1.14,2.23,0.65,0.95-0.75,2.9c-1.36,1.89-0.2,2.32-1.97,3.15c-1.5-1.05-0.41-0.79-1.66-2.54l-0.52,3.08l2.77,1.34
                                c-0.34,4.04-1,2.69-2.27,5.03l2.25,0.42c0.41,3.42,3.65,5.62,4.5,8.78c3.75,0.22,2.08,0.72,4.91,1.08
                                c1.25,0.16,4.71-0.03,6.06-0.16c4.38-0.4,4.84-2.09,8.15-4.01c-0.4-3.75,2.2-3.35,1.89-7.08
                                C302.01,414.35,300.23,412.8,304.24,411.1z" />
                                    </g>
                                </a>
                                <a xlink:href="#">
                                    <g>

                                        <path class="st6" ng-class="allStateStatus.x8.stateMap" ng-click="getStatistics($event)" data-target="#carouselExampleIndicators" data-slide-to="1" id="niwari-8" title="निवारी  : User Count : 1" onmouseover="showTitle(evt)" fill="#DB96C2" stroke="#010101" stroke-width="0.25" d="M367.95,261.55l-0.21,0.21c0.54,0.45-0.19-0.11,0.7,0.41l3.54,1.83c0.66,2.03-0.75,2.37,0.96,5.98
                                c1.4,2.94,1.45,3.22,1.34,6.59c3.38,1.49,2.05,1.87,3.94,1.64c2-0.24,3.12-1.34,4.64-1.89l1.38,1.28c2.07-1-0.06-1.09,2.23-0.65
                                c1.08,0.21,1.03,1.03,2.63-0.03c1.04-0.68,2.15-2.86,3.75-4.11c-0.4-5.22-0.03-2.41,0.18-4.14c0.26-2.13-1.43-0.89-0.06-3.67
                                c2.36-1.34,0.04,2.11,2.49-1.81c1.82,0.07,0.62-0.18,2.2,0.8c0.82-1.44-0.44-0.75,1.66-1.98c-1.24-1.89-0.9-1.43-0.89-3.68
                                c-1.51,1.58-0.33,0.92-2.66,0.39c-0.08-0.02-0.2-0.04-0.28-0.06c-0.39-0.08-1.25-0.21-1.64-0.28c-2.03,3.63,0.5,1.47-1.02,5.08
                                c-0.46,1.1-1.01,2.76-1.66,3.71c-1.5-0.67-3.25-3.03-2.73-4.88c-0.98-0.5-1.33,0.8-1.75-1.38c1.7-2.28,1.12,0.57,3.23-1.62
                                c1.2-1.24-0.14-1.17,1.34-2.98c1.71-2.09,5.65-3.32,7.6-2.64c-0.31,2.67-2.51,1.78-3.81,2.43l2.22,1.02
                                c2.03-2.15,0.62-0.7,2.87-1.84c-1.5-1.99-0.07-2.06-1.11-3.99c-1.95-0.47-0.85,2.22-3.77-0.54c0.03-1.83,1.17-1.52,1.72-2.8
                                c0.77-1.81-0.27-1.56-1.05-3.1c1.22-2.7,1.32,0.72,1.82-2.28c-1.77-0.8,0.18-0.03-1.52,0.62c-1.08-1.32-0.61-1.47-2.48-1.12
                                c-0.65,1.77,0.47,0.08-0.14,2.52c-1.55,0.43-1.9,0.31-3.16,1.07c1.69,1.51,3.2,3.74,0.62,5.57c-0.89,0.63-4.55,1.21-6.29,1.61
                                c1.12,0.63,1.28,3.12,1,4.45c-2.38,0.86-1.74,0.78-4.26,0.2l-0.37-1.79l-3.23-0.69c-0.25-1.53-0.49-1.6-0.03-3.01
                                c1.31,0.25,0.97,1.83,2.85-0.63c-0.88-0.55-2.09-0.54-3.4-0.29l-0.51,2.35c-2.64,0.2-0.93-0.38-2.4-0.48
                                c-0.3,0.57-0.82,1.28-1.02,1.63c-1.12,2.01,0.4,5-3.6,2.49C369.69,259.35,371.55,260.56,367.95,261.55z" />
                                    </g>
                                </a>
                                <text transform="matrix(1 0 0 1 314.8569 526.0342)">
                                    <tspan x="0" y="0" class="st13 st14">B</tspan>
                                    <tspan x="5.97" y="0" class="st13 st14">etul</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 100.6484 525.041)">
                                    <tspan x="0" y="0" class="st13 st14">B</tspan>
                                    <tspan x="5.97" y="0" class="st13 st14">arwani</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 155.2798 520.1514)">
                                    <tspan x="0" y="0" class="st13 st14">K</tspan>
                                    <tspan x="6.59" y="0" class="st13 st14">hargone</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 183.3901 555.6514)">
                                    <tspan x="0" y="0" class="st13 st14">B</tspan>
                                    <tspan x="5.97" y="0" class="st13 st14">urhanpur</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 209.1401 530.4014)">
                                    <tspan x="0" y="0" class="st13 st14">K</tspan>
                                    <tspan x="6.59" y="0" class="st13 st14">handwa</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 220.1401 466.9014)">
                                    <tspan x="0" y="0" class="st13 st14">D</tspan>
                                    <tspan x="7.51" y="0" class="st13 st14">ewas</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 165.6401 453.6514)">
                                    <tspan x="0" y="0" class="st13 st14">I</tspan>
                                    <tspan x="3.4" y="0" class="st13 st14">ndore</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 124.6401 462.1504)">
                                    <tspan x="0" y="0" class="st13 st14">D</tspan>
                                    <tspan x="7.51" y="0" class="st13 st14">har</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 102.6401 409.6504)">
                                    <tspan x="0" y="0" class="st13 st14">R</tspan>
                                    <tspan x="6.31" y="0" class="st13 st14">atlam</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 128.8901 351.4004)">
                                    <tspan x="0" y="0" class="st13 st14">M</tspan>
                                    <tspan x="9.05" y="0" class="st13 st14">andsaur</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 117.6406 318.9004)">
                                    <tspan x="0" y="0" class="st13 st14">N</tspan>
                                    <tspan x="7.49" y="0" class="st13 st14">eemach</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 85.6401 437.1514)">
                                    <tspan x="0" y="0" class="st13 st14">J</tspan>
                                    <tspan x="3.12" y="0" class="st13 st14">habua</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 74.8232 475.2412)">
                                    <tspan x="0" y="0" class="st13 st14">A</tspan>
                                    <tspan x="6.74" y="0" class="st13 st14">lirajpur</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 150.0732 407.54)">
                                    <tspan x="0" y="0" class="st13 st14">U</tspan>
                                    <tspan x="7.44" y="0" class="st13 st14">jjain</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 218.0332 410.541)">
                                    <tspan x="0" y="0" class="st13 st14">S</tspan>
                                    <tspan x="5.1" y="0" class="st13 st14">hahjapur</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 232.3833 384.5781)">
                                    <tspan x="0" y="0" class="st13 st14">R</tspan>
                                    <tspan x="6.31" y="0" class="st13 st14">ajgarh</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 261.8838 334.0781)">
                                    <tspan x="0" y="0" class="st13 st14">G</tspan>
                                    <tspan x="7.01" y="0" class="st13 st14">una</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 281.9585 314.4443)">
                                    <tspan x="0" y="0" class="st13 st14">A</tspan>
                                    <tspan x="6.74" y="0" class="st13 st14">shoknagar</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 305.0596 256.3677)">
                                    <tspan x="0" y="0" class="st13 st14">S</tspan>
                                    <tspan x="5.1" y="0" class="st13 st14">hivpuri</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 330.8096 205.6177)">
                                    <tspan x="0" y="0" class="st13 st14">G</tspan>
                                    <tspan x="7.01" y="0" class="st13 st14">walior</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 245.8794 228.2422)">
                                    <tspan x="0" y="0" class="st13 st14">S</tspan>
                                    <tspan x="5.1" y="0" class="st13 st14">heopur</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 364.9609 175.686)">
                                    <tspan x="0" y="0" class="st13 st14">B</tspan>
                                    <tspan x="5.97" y="0" class="st13 st14">hind</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 314.7104 180.686)">
                                    <tspan x="0" y="0" class="st13 st14">M</tspan>
                                    <tspan x="9.05" y="0" class="st13 st14">orena</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 362.3652 230.8677)">
                                    <tspan x="0" y="0" class="st13 st14">D</tspan>
                                    <tspan x="7.51" y="0" class="st13 st14">atia</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 200.8452 367.4971)">
                                    <tspan x="0" y="0" class="st13 st14">A</tspan>
                                    <tspan x="6.74" y="0" class="st13 st14">gar Malwa</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 310.6401 370.6494)">
                                    <tspan x="0" y="0" class="st13 st14">V</tspan>
                                    <tspan x="6.71" y="0" class="st13 st14">idisha</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 330.1401 425.6504)">
                                    <tspan x="0" y="0" class="st13 st14">R</tspan>
                                    <tspan x="6.31" y="0" class="st13 st14">aisen</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 377.7344 371.5693)">
                                    <tspan x="0" y="0" class="st13 st14">S</tspan>
                                    <tspan x="5.1" y="0" class="st13 st14">agar</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 475.5547 346.1626)">
                                    <tspan x="0" y="0" class="st13 st14">P</tspan>
                                    <tspan x="5.82" y="0" class="st13 st14">anna</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 482.9346 384.3125)">
                                    <tspan x="0" y="0" class="st13 st14">K</tspan>
                                    <tspan x="6.59" y="0" class="st13 st14">atni</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 429.0068 379.7871)">
                                    <tspan x="0" y="0" class="st13 st14">D</tspan>
                                    <tspan x="7.51" y="0" class="st13 st14">amoh</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 527.6846 401.8125)">
                                    <tspan x="0" y="0" class="st13 st14">U</tspan>
                                    <tspan x="7.44" y="0" class="st13 st14">maria</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 517.0049 320.4121)">
                                    <tspan x="0" y="0" class="st13 st14">S</tspan>
                                    <tspan x="5.1" y="0" class="st13 st14">atna</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 568.0049 304.9121)">
                                    <tspan x="0" y="0" class="st13 st14">R</tspan>
                                    <tspan x="6.31" y="0" class="st13 st14">ewa</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 582.2549 338.6621)">
                                    <tspan x="0" y="0" class="st13 st14">S</tspan>
                                    <tspan x="5.1" y="0" class="st13 st14">idhi</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 574.7549 407.7861)">
                                    <tspan x="0" y="0" class="st13 st14">S</tspan>
                                    <tspan x="5.1" y="0" class="st13 st14">hahdol</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 566.2549 443.0361)">
                                    <tspan x="0" y="0" class="st13 st14">A</tspan>
                                    <tspan x="6.74" y="0" class="st13 st14">nuppur</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 549.3438 464.1943)">
                                    <tspan x="0" y="0" class="st13 st14">D</tspan>
                                    <tspan x="7.51" y="0" class="st13 st14">indori</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 496.5312 475.6934)">
                                    <tspan x="0" y="0" class="st13 st14">M</tspan>
                                    <tspan x="9.05" y="0" class="st13 st14">andla</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 438.0303 486.4434)">
                                    <tspan x="0" y="0" class="st13 st14">S</tspan>
                                    <tspan x="5.1" y="0" class="st13 st14">eoni</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 384.9639 444.7119)">
                                    <tspan x="0" y="0" class="st13 st14">N</tspan>
                                    <tspan x="7.49" y="0" class="st13 st14">arsinghpur</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 451.9639 422.7119)">
                                    <tspan x="0" y="0" class="st13 st14">J</tspan>
                                    <tspan x="3.12" y="0" class="st13 st14">abalpur</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 481.5303 524.6934)">
                                    <tspan x="0" y="0" class="st13 st14">B</tspan>
                                    <tspan x="5.97" y="0" class="st13 st14">alaghat</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 617.5449 351.0122)">
                                    <tspan x="0" y="0" class="st13 st14">S</tspan>
                                    <tspan x="5.1" y="0" class="st13 st14">ingrauli</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 394.9307 295.5371)">
                                    <tspan x="0" y="0" class="st13 st14">T</tspan>
                                    <tspan x="6.13" y="0" class="st13 st14">ikamgarh</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 422.4307 324.0371)">
                                    <tspan x="0" y="0" class="st13 st14">C</tspan>
                                    <tspan x="6.51" y="0" class="st13 st14">hhatarpur</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 382.7842 274.8022)">
                                    <tspan x="0" y="0" class="st13 st15">N</tspan>
                                    <tspan x="5.95" y="0" class="st13 st15">iwari</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 251.9399 438.1504)">
                                    <tspan x="0" y="0" class="st13 st14">S</tspan>
                                    <tspan x="5.1" y="0" class="st13 st14">ehore</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 285.6719 418.0732)">
                                    <tspan x="0" y="0" class="st13 st14">B</tspan>
                                    <tspan x="5.97" y="0" class="st13 st14">hopal</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 261.1401 505.1504)">
                                    <tspan x="0" y="0" class="st13 st14">H</tspan>
                                    <tspan x="7.91" y="0" class="st13 st14">arda</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 297.5654 473.9297)">
                                    <tspan x="0" y="0" class="st13 st14">N</tspan>
                                    <tspan x="7.49" y="0" class="st13 st14">armadapuram</tspan>
                                </text>
                                <text transform="matrix(1 0 0 1 366.2197 500.6777)">
                                    <tspan x="0" y="0" class="st13 st14">C</tspan>
                                    <tspan x="6.51" y="0" class="st13 st14">hhindwara</tspan>
                                </text>

                            </svg>


                        </div>
                        <%--<div class="col-12 ">
                            <div class="table-responsive mt-3 ">
                                <table class="table table-borderless table-sm table-centered align-middle table-nowrap mb-1">
                                    <thead class=" border-dashed border border-start-0 border-end-0 bg-light-subtle">
                                        <tr>
                                            <th>S.No.</th>
                                            <th style="width: 60%;">Districts</th>
                                            <th style="width: 30%;">User Count</th>
                                        </tr>
                                    </thead>
                                    <tbody class="border-0">
                                        <tr>
                                            <td>1</td>
                                            <td>Bhopal</td>
                                            <td>859</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Narmadapuram</td>
                                            <td>695</td>
                                        </tr>
                                      <tr>
                                            <td>3</td>
                                            <td>Indore</td>
                                            <td>638</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>Jabalpur</td>
                                            <td>524</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>Betul</td>
                                            <td>325</td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>--%>
                    </div>
                </div>
                <!-- end card body -->
                <div class="card-footer-border"></div>

            </div>
            <!-- end card -->
        </div>

    </div>
    <!-- end row -->

    <div class="row">
        <!-- end col -->
        <div class="col-xl-6 col-md-12">
            <div class="card card-height-100">
                <div class="card-header  border-bottom border-primary align-items-center d-flex">
                    <h4 class="card-title mb-0 flex-grow-1">Schemes</h4>
                </div>
                <!-- end card header -->
                <div class="card-body pb-0">
                    <div id="Chart_Scheme"></div>
                </div>
                <div class="card-footer-border"></div>

            </div>
            <!-- end card -->
        </div>
        <%--Schemes--%>
        <div class="col-xl-6 col-md-12 h-auto">
            <div class="card card-height-100 ">
                <div class="card-header border-bottom border-primary align-items-center d-flex ">
                    <h4 class="card-title mb-0 flex-grow-1">Students Applied for Scheme</h4>
                </div>
                <!-- end card header -->
                <div class="card-body pb-0">
                    <div>
                        <div id="SchemeApplicants_Charts"></div>
                    </div>
                </div>
                <!-- end card body -->
                <div class="card-footer-border"></div>

            </div>
        </div>
        <%--Students Applied for Scheme--%>
    </div>
    <!-- end row -->

    <div class="row">
        <div class="col-xl-12  col-md-12">
            <div class="card card-height-100 ">
                <div class="card-header border-bottom border-primary align-items-center d-flex ">
                    <h4 class="card-title mb-0 flex-grow-1">Employee Retirements</h4>
                </div>
                <!-- end card header -->
                <div class="card-body pt-0">
                    <div class="p-0 border-0 bg-light-subtle ">
                        <div class="row g-0 text-center">
                            <div class="col-6 col-sm-4">
                                <div class="p-3 border border-dashed border-start-0">
                                    <h5 class="mb-1 fw-bold">
                                        <span class="counter-value" data-target="854">0</span>

                                    </h5>
                                    <p class=" mb-0  fw-bold">Total Retirements (No's)</p>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!-- end card header -->

                    <div>
                        <div id="audiences_metrics_charts" data-colors='["--vz-success", "--vz-light"]' data-colors-minimal='["--vz-primary", "--vz-light"]' data-colors-modern='["--vz-primary", "--vz-light"]' data-colors-interactive='["--vz-primary", "--vz-light"]' data-colors-creative='["--vz-secondary", "--vz-light"]' data-colors-corporate='["--vz-primary", "--vz-light"]' data-colors-galaxy='["--vz-primary", "--vz-light"]' data-colors-classic='["--vz-primary", "--vz-secondary"]' data-colors-vintage='["--vz-primary", "--vz-success-rgb, 0.5"]' class="apex-charts" dir="ltr"></div>
                    </div>
                </div>
                <!-- end card body -->
                <div class="card-footer-border"></div>

            </div>
            <!-- end card -->
        </div>
        <%--Upcoming Retirements--%>
        <!-- end col -->





    </div>
    <!-- end row -->

    <div class="row" style="max-height: fit-content">

        <div class="col-xxl-6 col-md-12">
            <div class="card card-height-100 ">
                <div class="card-header  border-bottom border-primary align-items-center d-flex">
                    <h4 class="card-title mb-0 flex-grow-1">Circular Orders</h4>
                    <div class="flex-shrink-0">
                        <div class="dropdown card-header-dropdown">
                            <a class="text-reset dropdown-btn" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class=" fs-16"><i class="mdi mdi-dots-vertical align-middle"></i></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                                <a class="dropdown-item" href="#">Today</a>
                                <a class="dropdown-item" href="#">Last Week</a>
                                <a class="dropdown-item" href="#">Last Month</a>
                                <a class="dropdown-item" href="#">Current Year</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end card header -->
                <div class="card-body p-0 ">
                    <div class="row  overflow-auto ticker1" id="DvcircularOrdersList" style="max-height: 527px; height: 100%; margin-right: 1px;">
                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>उच्च माध्यमिक शिक्षक संवर्ग की दिनांक 01/04/2023 की स्थिति दर्शाने वाली अंतरिम वरिष्ठता सूची का प्रकाशन</a></p>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>8 अप्रैल 2024 को आयोजित वीडियो कांफ्रेंसिंग स्थगित किये जाने विषयक</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>पालक द्वारा यूनिफार्म, पुस्तकें एवं अन्य सामग्री क्रय करने के संबंध में</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>SC/ST प्री एवं पोस्ट मैट्रिक छात्रवृत्ति योजनाओं हेतु शालेय विद्यार्थियों के समग्र, आधार, डिजिटल जाती प्रमाण पत्र एवं आय प्रमाण पत्र की उपलब्धता/अपडेशन सुनिश्चित किए जाने विषयक।</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>शैक्षणिक सत्र 2022-23 से अनुसूचित जनजातीय वर्ग के विद्यार्थियों को कक्षा 12वीं की बोर्ड परीक्षा शुल्क के भुगतान विषयक</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>उच्च माध्यमिक शिक्षक संवर्ग की दिनांक 01/04/2023 की स्थिति दर्शाने वाली अंतरिम वरिष्ठता सूची का प्रकाशन</a></p>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>8 अप्रैल 2024 को आयोजित वीडियो कांफ्रेंसिंग स्थगित किये जाने विषयक</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>पालक द्वारा यूनिफार्म, पुस्तकें एवं अन्य सामग्री क्रय करने के संबंध में</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>SC/ST प्री एवं पोस्ट मैट्रिक छात्रवृत्ति योजनाओं हेतु शालेय विद्यार्थियों के समग्र, आधार, डिजिटल जाती प्रमाण पत्र एवं आय प्रमाण पत्र की उपलब्धता/अपडेशन सुनिश्चित किए जाने विषयक।</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>शैक्षणिक सत्र 2022-23 से अनुसूचित जनजातीय वर्ग के विद्यार्थियों को कक्षा 12वीं की बोर्ड परीक्षा शुल्क के भुगतान विषयक</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>उच्च माध्यमिक शिक्षक संवर्ग की दिनांक 01/04/2023 की स्थिति दर्शाने वाली अंतरिम वरिष्ठता सूची का प्रकाशन</a></p>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>8 अप्रैल 2024 को आयोजित वीडियो कांफ्रेंसिंग स्थगित किये जाने विषयक</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>पालक द्वारा यूनिफार्म, पुस्तकें एवं अन्य सामग्री क्रय करने के संबंध में</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>SC/ST प्री एवं पोस्ट मैट्रिक छात्रवृत्ति योजनाओं हेतु शालेय विद्यार्थियों के समग्र, आधार, डिजिटल जाती प्रमाण पत्र एवं आय प्रमाण पत्र की उपलब्धता/अपडेशन सुनिश्चित किए जाने विषयक।</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>शैक्षणिक सत्र 2022-23 से अनुसूचित जनजातीय वर्ग के विद्यार्थियों को कक्षा 12वीं की बोर्ड परीक्षा शुल्क के भुगतान विषयक</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>उच्च माध्यमिक शिक्षक संवर्ग की दिनांक 01/04/2023 की स्थिति दर्शाने वाली अंतरिम वरिष्ठता सूची का प्रकाशन</a></p>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>8 अप्रैल 2024 को आयोजित वीडियो कांफ्रेंसिंग स्थगित किये जाने विषयक</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>पालक द्वारा यूनिफार्म, पुस्तकें एवं अन्य सामग्री क्रय करने के संबंध में</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>SC/ST प्री एवं पोस्ट मैट्रिक छात्रवृत्ति योजनाओं हेतु शालेय विद्यार्थियों के समग्र, आधार, डिजिटल जाती प्रमाण पत्र एवं आय प्रमाण पत्र की उपलब्धता/अपडेशन सुनिश्चित किए जाने विषयक।</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card card-border-primary my-2 mx-3">
                                <div class="card-body">
                                    <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i>शैक्षणिक सत्र 2022-23 से अनुसूचित जनजातीय वर्ग के विद्यार्थियों को कक्षा 12वीं की बोर्ड परीक्षा शुल्क के भुगतान विषयक</a></p>
                                </div>
                            </div>
                        </div>
                    </div>




                    <!-- end -->
                </div>
                <!-- end cardbody -->
                <div class="card-footer-border"></div>
            </div>

        </div>
        <div class="col-xxl-6 col-md-12">
            <div class="card card-height-100 ">
                <div class="card-header border-bottom border-primary align-items-center d-flex">
                    <h4 class="card-title mb-0 flex-grow-1">Monthly Event Calendar</h4>
                    <div class="flex-grow-1 text-end">
                        <button class="btn btn-secondary w-auto me-2" id="btn-new-event" title="Create Event" type="button"><i class="mdi mdi-plus"></i> Add Event</button>
                    </div>

                    <button class="btn btn-secondary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasEventList"><i class="ri-menu-line"></i> Upcoming Events</button>

                </div>
                <!-- end card header -->
                <div class="card-body pt-0">


                    <div class="offcanvas offcanvas-custom " style="min-width: 350px" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasEventList" aria-labelledby="offcanvasScrollingLabel">
                        <div class="offcanvas-header">


                            <h5 class="offcanvas-title" id="offcanvasEventListLabel">Upcoming Events</h5>

                            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                        </div>
                        <div class="offcanvas-body" style="margin-right:1PX">

                            <div id="external-events">
                                <%-- <br>
                                  <p class="text-muted">Drag and Create your event or click in the calendar</p>
                                  <div class="external-event fc-event bg-success-subtle text-success" data-class="bg-success-subtle">
                                      <i class="mdi mdi-checkbox-blank-circle me-2"></i>New Event Planning
                                  </div>
                                  <div class="external-event fc-event bg-info-subtle text-info" data-class="bg-info-subtle">
                                      <i class="mdi mdi-checkbox-blank-circle me-2"></i>Meeting
                                  </div>
                                  <div class="external-event fc-event bg-warning-subtle text-warning" data-class="bg-warning-subtle">
                                      <i class="mdi mdi-checkbox-blank-circle me-2"></i>Generating Reports
                                  </div>
                                  <div class="external-event fc-event bg-danger-subtle text-danger" data-class="bg-danger-subtle">
                                      <i class="mdi mdi-checkbox-blank-circle me-2"></i>Create New theme
                                  </div>--%>
                            </div>


                            <div>
                                <div class="row">
                                    <%-- <div class="col-xl-6 col-md-7 m-0">
                                        <h5 class="mb-1">Upcoming Events</h5>
                                    </div>--%>

                                    <%--  <div class="col-xl-6 col-md-6 text-end">

                                     <button class="btn btn-outline-secondary w-auto mb-2 me-3 " id="btn-new-event" type="button"><i class="mdi mdi-plus"></i>Create Event</button>
                                    </div>--%>
                                    <div class="col-xl-12 col-md-12 ">
                                        <p class="text-muted ms-3">Don't miss scheduled events</p>
                                    </div>
                                </div>


                                <div id="upcoming-event-list">
                                </div>

                            </div>
                        </div>
                    </div>


                    <div>
                        <div id="calendar" style="width: 100%; max-height: 500px"></div>

                    </div>


                </div>
                <!-- end cardbody -->

                <div class="card-footer-border"></div>

            </div>
            <!-- end card -->

        </div>
    </div>
    <div class="modal  fade" id="event-modal" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content border-0">
                <div class="modal-header p-3 bg-info-subtle">
                    <h5 class="modal-title" id="modal-title">Event</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body p-4">
                    <div id="form-event">
                        <div class="text-end">
                            <a href="#" class="btn btn-sm btn-soft-primary" id="edit-event-btn" data-id="edit-event" onclick="editEvent(this)" role="button">Edit</a>
                        </div>
                        <div class="event-details" id="event-details">
                            <div class="d-flex mb-2">
                                <div class="flex-grow-1 d-flex align-items-center">
                                    <div class="flex-shrink-0 me-3">
                                        <i class="ri-calendar-event-line text-muted fs-16"></i>
                                    </div>
                                    <div class="flex-grow-1">
                                        <h6 class="d-block fw-semibold mb-0" id="event-start-date-tag"></h6>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex align-items-center mb-2">
                                <div class="flex-shrink-0 me-3">
                                    <i class="ri-time-line text-muted fs-16"></i>
                                </div>
                                <div class="flex-grow-1">
                                    <h6 class="d-block fw-semibold mb-0"><span id="event-timepicker1-tag"></span>- <span id="event-timepicker2-tag"></span></h6>
                                </div>
                            </div>
                            <div class="d-flex align-items-center mb-2">
                                <div class="flex-shrink-0 me-3">
                                    <i class="ri-map-pin-line text-muted fs-16"></i>
                                </div>
                                <div class="flex-grow-1">
                                    <h6 class="d-block fw-semibold mb-0"><span id="event-location-tag"></span></h6>
                                </div>
                            </div>
                            <div class="d-flex mb-3">
                                <div class="flex-shrink-0 me-3">
                                    <i class="ri-discuss-line text-muted fs-16"></i>
                                </div>
                                <div class="flex-grow-1">
                                    <p class="d-block text-muted mb-0" id="event-description-tag"></p>
                                </div>
                            </div>
                        </div>
                        <div class="row event-form" id="event-form">
                            <div class="col-12">
                                <div class="mb-3">
                                    <label class="form-label">Type</label>
                                    <select class="form-select d-none" name="category" id="event-category" required>
                                        <option value="bg-danger-subtle">Danger</option>
                                        <option value="bg-success-subtle">Success</option>
                                        <option value="bg-primary-subtle">Primary</option>
                                        <option value="bg-info-subtle">Info</option>
                                        <option value="bg-dark-subtle">Dark</option>
                                        <option value="bg-warning-subtle">Warning</option>
                                    </select>
                                    <div class="invalid-feedback">Please select a valid event category</div>
                                </div>
                            </div>
                            <!--end col-->
                            <div class="col-12">
                                <div class="mb-3">
                                    <label class="form-label">Event Name</label>
                                    <input class="form-control d-none" placeholder="Enter event name" type="text" name="title" id="event-title" required value="" />
                                    <div class="invalid-feedback">Please provide a valid event name</div>
                                </div>
                            </div>
                            <!--end col-->
                            <div class="col-12">
                                <div class="mb-3">
                                    <label>Event Date</label>
                                    <div class="input-group d-none">
                                        <input type="text" id="event-start-date" class="form-control flatpickr flatpickr-input" placeholder="Select date" required>
                                        <span class="input-group-text"><i class="ri-calendar-event-line"></i></span>
                                    </div>
                                </div>
                            </div>
                            <!--end col-->
                            <div class="col-12" id="event-time">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="mb-3">
                                            <label class="form-label">Start Time</label>
                                            <div class="input-group d-none">
                                                <input id="timepicker1" type="text" class="form-control flatpickr flatpickr-input" placeholder="Select start time">
                                                <span class="input-group-text"><i class="ri-time-line"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="mb-3">
                                            <label class="form-label">End Time</label>
                                            <div class="input-group d-none">
                                                <input id="timepicker2" type="text" class="form-control flatpickr flatpickr-input" placeholder="Select end time">
                                                <span class="input-group-text"><i class="ri-time-line"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end col-->
                            <div class="col-12">
                                <div class="mb-3">
                                    <label for="event-location">Location</label>
                                    <div>
                                        <input type="text" class="form-control d-none" name="event-location" id="event-location" placeholder="Event location">
                                    </div>
                                </div>
                            </div>
                            <!--end col-->
                            <input type="hidden" id="eventid" name="eventid" value="" />
                            <div class="col-12">
                                <div class="mb-3">
                                    <label class="form-label">Description</label>
                                    <textarea class="form-control d-none" id="event-description" placeholder="Enter a description" rows="3" spellcheck="false"></textarea>
                                </div>
                            </div>
                            <!--end col-->
                        </div>
                        <!--end row-->
                        <div class="hstack gap-2 justify-content-end">
                            <button type="button" class="btn btn-soft-danger" id="btn-delete-event"><i class="ri-close-line align-bottom"></i>Delete</button>
                            <button type="submit" class="btn btn-success" id="btn-save-event">Add Event</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end modal-content-->
        </div>
        <!-- end modal dialog-->
    </div>
    <!-- end modal-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="../assets/libs/bootstrap/js/flatpickr.min.js"></script>
    <script src="../assets/libs/fullcalendar/index.global.min.js"></script>
    <script src="../assets/js/pages/calendar.init.js"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/data.js"></script>
    <script src="https://code.highcharts.com/modules/drilldown.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
    <script type="text/javascript">
        // script For  Auto Scroll in  Circular Orders list 
        function ticker1() {
            $('#DvcircularOrdersList div:first').slideUp(function () {
                $(this).appendTo($('#DvcircularOrdersList')).slideDown();
            });
        }
        setInterval(function () { ticker1(); }, 2000);
    </script>
    <script>

        Highcharts.chart('Chart_Scheme', {
            chart: { type: 'column', },
            title: { text: '' },
            accessibility: { announceNewData: { enabled: true } },
            xAxis: {
                type: 'category',

            },
            yAxis: { title: { text: '' } },
            legend: {
                enabled: false, height: 100,

            },
            credits: { enabled: false },
            plotOptions:
            {
                series:
                {
                    borderWidth: 0,
                    dataLabels:
                    {
                        enabled: true,
                        formatter: function () {
                            return "<span class='fs-14 '>" + this.point.name + ' : ' + this.y + "</span>";
                        }
                    }, pointWidth: 50,
                }
            },
            series: [
                {
                    name: 'Total Schemes',
                    colorByPoint: true,
                    data: [
                        { name: 'Registered Scheme', y: 6, drilldown: 'Registered Scheme', },
                        { name: 'On going Scheme', y: 5, drilldown: 'On going Scheme' },
                    ],
                    tooltip:
                    {
                        headerFormat: '{point.name}',
                        pointFormat: '<span class=" fs-13"><br/><b>{point.name}</b><br/>Total {point.name}s: {point.y}<br/></span>'
                    },
                }],
            drilldown: {
                breadcrumbs:
                    { position: { align: 'right' } },
                series: [
                    {
                        name: 'On going Scheme',
                        id: 'On going Scheme',
                        data: [
                            ['Sudama Pre Matric Scheme', 4000],
                            ['Scholarship scheme for disabled students', 5600],
                            ['General Poor Category Scholarship Scheme', 7000],
                            ['Postmatric Scholarship (Non-Hostel)', 2700],
                            ['Girls Literacy Incentive Amount Class 11th', 10000,],
                        ],

                        dataLabels: {
                            formatter: function () {
                                return '<span class="fw-bold fs-13">Applicants: ' + this.y + '</span>';
                            }
                        },
                        tooltip: {
                            headerFormat: '<span class="fw-bold fs-14">{point.name}</span><br>',
                            pointFormat: '<span class=" fs-13"><br/> ' + '<b>{point.name}</b><br/>Total Total Applicants: {point.y}<br/></span>'
                        },
                    },
                    {
                        name: 'Registered Scheme',
                        id: 'Registered Scheme',
                        data: [['State Scholarship (Primary Level)', 6000],
                        ['Dead/ Disabled/ Senior Scholarship to children of government employees', 4500],
                        ['Postmatric Scholarship (Non-Hostel)', 2700],
                        ['Postmatric Scholarship (Hostel)', 8000],
                        ['Girls Literacy Incentive Amount Class 11th', 10000],
                        ['State Government Scheduled Tribe Scholarship', 12000],
                        ],

                        format: '<b>{point.name}</b>',
                        dataLabels: {
                            formatter: function () {
                                return '<span class="fw-bold fs-13">Applicants: ' + this.y + '</span>';
                            }
                        },
                        tooltip:
                        {
                            headerFormat: '<span class="fw-bold fs-14">{point.name}</span><br>',
                            pointFormat: '<span class=" fs-13"><br/><b>{point.name}</b> <br/>Total Total Applicants: {point.y} <br/></span> '
                        },
                    },
                ]
            }
        });
    </script>

    <script>
        Highcharts.chart('SchemeApplicants_Charts', {
            chart: {
                type: 'column',
                events: {
                    load: function () {
                        var totalStudents = this.series[0].data.reduce((acc, point) => acc + point.y, 0);
                        this.setTitle({ text: 'Total Students :' + totalStudents, align: 'left' });
                    }
                },
            },

            title: {
                align: 'left',
                text: 'Students',

            },
            xAxis: {
                type: 'category',
                labels: {
                    formatter: function () {
                        return '<b>' + this.value + '</b>';

                    }
                }

            },
            yAxis: {
                title: {
                    text: ''
                }
            },



            legend: {
                enabled: false,
                height: 100
            },
            credits: {
                enabled: false
            },

            series: [{
                name: 'Students',
                data: [
                    { name: 'Sudama Pre Matric Scheme', y: 70, z: 50 },
                    { name: 'Postmatric Scholarship (Hostel)', y: 85, z: 63 },
                    { name: 'Postmatric Scholarship (Non-Hostel)', y: 55, z: 40 },
                    { name: 'State Scholarship (Primary Level)', y: 45, z: 35 },
                    { name: 'General Poor Category Scholarship Scheme', y: 50, z: 33 }
                ].map(function (point) {
                    point.y += point.z; // Update 'y' value to be the sum of 'y' and 'z'
                    return point;
                }),


                dataLabels: {
                    enabled: true,
                    format: ' <b>Students: {point.y} </b>',
                },
                tooltip: {
                    headerFormat: '',
                    pointFormatter: function () {
                        return '<b>' + this.name + '</b><br/>Total Students: <b>' + this.y + '</b><br>' +
                            'Boys: <b>' + (this.y - this.z) + '</b><br>' +
                            'Girls: <b>' + this.z + '</b><br>';
                    }
                },
                borderRadius: 3,
                colorByPoint: true
            }],

        });


    </script>

    <!-- apexcharts -->
    <script>
        function getChartColorsArray(elementId) {
            if (document.getElementById(elementId) !== null) {
                var dataAttr = "data-colors" + ("-" + document.documentElement.getAttribute("data-theme") ?? "");
                var colors = document.getElementById(elementId).getAttribute(dataAttr) ?? document.getElementById(elementId).getAttribute("data-colors");
                if (colors) {
                    return JSON.parse(colors).map(function (color) {
                        var colorValue = color.replace(" ", "");
                        if (colorValue.indexOf(",") === -1) {
                            return getComputedStyle(document.documentElement).getPropertyValue(colorValue) || colorValue;
                        } else {
                            var rgba = color.split(",");
                            if (rgba.length == 2) {
                                return "rgba(" + getComputedStyle(document.documentElement).getPropertyValue(rgba[0]) + "," + rgba[1] + ")";
                            } else {
                                return colorValue;
                            }
                        }
                    });
                }
                console.warn("data-colors attributes not found on", elementId);
            }
        }
        // Initialize Payroll chart

        var PayrollChart = getChartColorsArray("Chart_Payroll");
        if (PayrollChart) {
            var options = {
                series: [102569, 8630, 789],
                labels: ["Salary Generated", "On Hold Salary", "On Suplymentory Salary"],
                chart: { height: 450, type: "donut" },
                plotOptions: {
                    pie: {
                        startAngle: -90,
                        endAngle: 270,
                        donut: {
                            size: '40%'
                        }
                    }
                },
                dataLabels: { enabled: true },
                pointWidth: 50,
                legend: { position: "bottom", height: 100 },
                colors: ["#405189", "#0ab39c", "#f7b84b", "#b04732"],
                title: { style: { fontWeight: 500 } },

            };

            updatedDonutChart = new ApexCharts(document.querySelector("#Chart_Payroll"), options);
            updatedDonutChart.render();
        }

        // Initialize Transfer charts
        var TransferChart = getChartColorsArray("Chart_Transfer");
        if (TransferChart) {
            var options = {
                series: [854, 505],
                labels: ["Total Joined Employee", "Employee Pending For Joining"],
                chart: { height: 450, type: "donut" },

                plotOptions: {
                    pie: {
                        startAngle: -90,
                        endAngle: 270,
                        donut: {
                            size: '40%'
                        }
                    }
                },
                dataLabels: { enabled: true },
                legend: { position: "bottom", height: 100 },
                title: { style: { fontWeight: 500 } },
                colors: ["#FF0080", "#FC4100", "#f7b84b", "#b04732"],
            };
            var chart = new ApexCharts(document.querySelector("#Chart_Transfer"), options);
            chart.render();
        }



    </script>
    <script>
        function showTitle(evt) {
            var title = evt.target.getAttribute("title");
            if (title) {
                var tooltip = document.getElementById("tooltip");
                tooltip.textContent = title;
                tooltip.style.left = evt.clientX + 10 + "px";
                tooltip.style.top = evt.clientY + 10 + "px";
                tooltip.style.display = "block";

                evt.target.addEventListener("mouseout", function () {
                    tooltip.style.display = "none";
                });
            }
        }

        document.querySelectorAll('path[title]').forEach(function (element) {
            element.addEventListener('mouseover', showTitle);
        });
    </script>
</asp:Content>
