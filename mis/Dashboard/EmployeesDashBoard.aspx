<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeesDashBoard.aspx.cs" Inherits="mis_Dashboard_EmployeesDashBoard" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link href="~\css\dashboard.css" rel="stylesheet" />
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
            font-family: 'Eczar-SemiBold';
            font-size: 16px;
            color: #fff;
            padding: 0 11px;
            border-radius: 120px;
        }

        .top-heading {
            position: relative;
            display: flex;
            background-color: var(--vz-primary);
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

            .card-header > * {
                color: var(--vz-gray-200);
            }

        ::-webkit-scrollbar {
            width: 10px;
        }

        ::-webkit-scrollbar-track {
            /*background-color: ;*/
            -webkit-border-radius: 10px;
            border-radius: 10px;
        }

        ::-webkit-scrollbar-thumb {
            -webkit-border-radius: 10px;
            border-radius: 10px;
            background: #6d6d6d;
        }

        .crm-widget {
            display: block;
            top: 0px;
            position: relative;
        }

            .crm-widget .text-muted {
                font-weight: bold;
                opacity: 1 !important;
                color: var(--vz-primary) !important;
            }

            .crm-widget .card-body {
                height: 100%;
            }

        .card {
            box-shadow: 8px 0px 12px 7px rgba(100, 100, 111, 0.2);
            border-radius: 27px;
            overflow: hidden
        }

        #Chart_Payroll .apexcharts-legend, #Chart_Transfer .apexcharts-legend {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
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

        .card {
            --vz-card-cap-padding-y: 0.5rem;
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

        #Chart_Scheme g text {
            text-decoration: none !important;
            fill: #000 !important;
            flex-wrap: wrap;
        }

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
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0">Employees Dashboard</h4>

                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item"><a href="#sidebarDashboards" data-bs-toggle="collapse" role="button">Dashboards</a></li>
                        <li class="breadcrumb-item active">Employees DashBoard</li>
                    </ol>
                </div>

            </div>
        </div>
    </div>
    <br />
    <div class="container-fluid p-0 ">
        <div class="row">
            <!-- end col -->
            <div class="col-xxl-6 col-md-12">
                <div class="card card-height-100">
                    <div class="card-header  border-bottom border-primary align-items-center d-flex">
                        <h4 class="card-title mb-0 flex-grow-1">Schemes</h4>
                    </div>
                    <!-- end card header -->
                    <div class="card-body pb-0 danger">
                        <div id="Chart_Scheme"></div>
                    </div>
                </div>
                <!-- end card -->
            </div>
            <%--Schemes--%>
            <div class="col-xxl-6 col-md-12 h-auto">
                <div class="card border card-height-100 ">
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
                </div>
            </div>
            <%--Students Applied for Scheme--%>
        </div>
        <!-- end row -->
        <div class="row">
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
                    <div class="card-body">
                        <div class="row  overflow-auto" style="max-height: 100%">

                            <div class="col-md-12">
                                <div class="card card-border-primary mb-3">
                                    <div class="card-body">
                                        <div class="d-flex">
                                            <div class="flex-grow-1"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i><span class="fw-medium">1</span></div>
                                        </div>
                                        <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);">उच्च माध्यमिक शिक्षक संवर्ग की दिनांक 01/04/2023 की स्थिति दर्शाने वाली अंतरिम वरिष्ठता सूची का प्रकाशन</a></p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="card card-border-primary mb-3">
                                    <div class="card-body">
                                        <div class="d-flex">
                                            <div class="flex-grow-1"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i><span class="fw-medium">2</span></div>
                                        </div>
                                        <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);">8 अप्रैल 2024 को आयोजित वीडियो कांफ्रेंसिंग स्थगित किये जाने विषयक</a></p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="card card-border-primary mb-3">
                                    <div class="card-body">
                                        <div class="d-flex">
                                            <div class="flex-grow-1"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i><span class="fw-medium">3</span></div>
                                        </div>
                                        <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);">पालक द्वारा यूनिफार्म, पुस्तकें एवं अन्य सामग्री क्रय करने के संबंध में</a></p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="card card-border-primary mb-3">
                                    <div class="card-body">
                                        <div class="d-flex">
                                            <div class="flex-grow-1"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i><span class="fw-medium">4</span></div>
                                        </div>
                                        <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);">SC/ST प्री एवं पोस्ट मैट्रिक छात्रवृत्ति योजनाओं हेतु शालेय विद्यार्थियों के समग्र, आधार, डिजिटल जाती प्रमाण पत्र एवं आय प्रमाण पत्र की उपलब्धता/अपडेशन सुनिश्चित किए जाने विषयक।</a></p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="card card-border-primary mb-3">
                                    <div class="card-body">
                                        <div class="d-flex">
                                            <div class="flex-grow-1"><i class="mdi mdi-checkbox-blank-circle me-2 text-info"></i><span class="fw-medium">5</span></div>
                                        </div>
                                        <p class="text-muted text-truncate-two-lines mb-0"><a href="javascript:void(0);">शैक्षणिक सत्र 2022-23 से अनुसूचित जनजातीय वर्ग के विद्यार्थियों को कक्षा 12वीं की बोर्ड परीक्षा शुल्क के भुगतान विषयक</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <!-- end -->
                    </div>
                    <!-- end cardbody -->
                </div>
                <!-- end card -->
            </div>

            <div class="col-xxl-6 col-md-12">
                <div class="card card-height-100 ">
                    <div class="card-header border-bottom border-primary align-items-center d-flex">
                        <h4 class="card-title mb-0 flex-grow-1">Monthly Event Calendar</h4>
                        <div class="flex-shrink-0">
                        </div>
                        <button class="btn btn-secondary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasEventList"><i class="ri-menu-line"></i>Upcoming Events</button>

                    </div>
                    <!-- end card header -->
                    <div class="card-body pt-0">


                        <div class="offcanvas offcanvas-custom " style="min-width: 350px" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasEventList" aria-labelledby="offcanvasScrollingLabel">
                            <div class="offcanvas-header">
                                <h5 class="offcanvas-title" id="offcanvasEventListLabel"></h5>
                                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                            </div>
                            <div class="offcanvas-body py-3">
                                <div id="external-events">
                                </div>
                                <div>
                                    <div class="row">
                                        <div class="col-xl-6 col-md-7 m-0">
                                            <h5 class="mb-1">Upcoming Events</h5>
                                        </div>
                                        <div class="col-xl-6 col-md-5 text-end m-0">

                                            <%--<button class="btn btn-outline-secondary w-auto mb-2" id="btn-new-event" type="button"><i class="mdi mdi-plus"></i>Create Event</button>--%>
                                        </div>
                                    </div>

                                    <p class="text-muted">Don't miss scheduled events</p>
                                    <div class="pe-2 me-n1 mb-3 simplebar-scrollable-y" data-simplebar="init">
                                        <div class="simplebar-wrapper" style="margin: 0px -8px 0px 0px;">
                                            <div class="simplebar-height-auto-observer-wrapper">
                                                <div class="simplebar-height-auto-observer"></div>
                                            </div>
                                            <div class="simplebar-mask">
                                                <div class="simplebar-offset" style="right: 0px; bottom: 0px;">
                                                    <div class="simplebar-content-wrapper" tabindex="0" role="region" aria-label="scrollable content" style="height: 100%; overflow: hidden scroll;">
                                                        <div class="simplebar-content" style="padding: 0px 8px 0px 0px;">
                                                            <div id="upcoming-event-list">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="simplebar-placeholder" style="width: 249px; height: 2521px;"></div>
                                        </div>
                                        <div class="simplebar-track simplebar-horizontal" style="visibility: hidden;">
                                            <div class="simplebar-scrollbar" style="width: 0px; display: none;"></div>
                                        </div>
                                        <div class="simplebar-track simplebar-vertical" style="visibility: visible;">
                                            <div class="simplebar-scrollbar" style="height: 63px; display: block; transform: translate3d(0px, 0px, 0px);"></div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>

                        <style>
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
                                border-right: var(--primary) solid 1px;
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
                        <div>
                            <div id="calendar" style="width: 100%; max-height: 550px"></div>

                        </div>


                    </div>
                    <!-- end cardbody -->


                </div>

            </div>
        </div>
        <!-- end row -->
        <div class="modal  fade" id="event-modal" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content border-0">
                    <div class="modal-header p-3 bg-info-subtle">
                        <h5 class="modal-title" id="modal-title">Event</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                    </div>
                    <div class="modal-body p-4">
                        <div id="form-event">
                            <%--<div class="text-end">
                                <a href="#" class="btn btn-sm btn-soft-primary" id="edit-event-btn" data-id="edit-event" onclick="editEvent(this)" role="button">Edit</a>
                            </div>--%>
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
                          <%--  <div class="hstack gap-2 justify-content-end">
                                <button type="button" class="btn btn-soft-danger" id="btn-delete-event"><i class="ri-close-line align-bottom"></i>Delete</button>
                                <button type="submit" class="btn btn-success" id="btn-save-event">Add Event</button>
                            </div>--%>
                        </div>
                    </div>
                </div>
                <!-- end modal-content-->
            </div>
            <!-- end modal dialog-->
        </div>
    </div>
    <!-- end modal-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="../assets/libs/bootstrap/js/flatpickr.min.js"></script>
    <script src="../assets/libs/fullcalendar/index.global.min.js"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/data.js"></script>
    <script src="https://code.highcharts.com/modules/drilldown.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>

    <script>
        Highcharts.chart('Chart_Scheme', {
            chart: {
                type: 'column',
            },
            title: {
                align: 'left',
                text: 'Schemes'
            },
            subtitle: {
                align: 'left',
                text: ' <a href="http://statcounter.com" target="_blank"></a>'
            },
            accessibility: {
                announceNewData: {
                    enabled: true
                }
            },
            xAxis: {
                type: 'category',
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
            plotOptions: {
                series: {
                    borderWidth: 0,
                    dataLabels: {
                        enabled: true,
                        formatter: function () {
                            return this.point.name + ' : ' + this.y;

                        }
                    },
                    pointWidth: 50,
                }
            },
            series: [
                {
                    name: 'Total Schemes',
                    colorByPoint: true,

                    data: [
                        {
                            name: 'Registered Scheme',
                            y: 6,
                            drilldown: 'Registered Scheme',

                        },

                        {
                            name: 'On going Scheme',
                            y: 5,
                            drilldown: 'On going Scheme'
                        },

                    ],
                    tooltip: {
                        headerFormat: '<span style="font-size:11px">{point.name}</span><br>',
                        pointFormat: '<span style="color:{point.color}"><br/></span> ' +
                            '<b>{point.name}</b><br/>Total {point.name}s: {point.y}<br/>'
                    },
                }
            ],
            drilldown: {

                breadcrumbs: {
                    position: {
                        align: 'right'
                    }
                },
                series: [
                    {
                        name: 'On going Scheme',
                        id: 'On going Scheme',

                        data: [
                            [
                                'Sudama Pre Matric Scheme',
                                4000
                            ],
                            [
                                'Scholarship scheme for disabled students',
                                5600
                            ],
                            [
                                'General Poor Category Scholarship Scheme',
                                7000
                            ],
                            [
                                'Postmatric Scholarship (Non-Hostel)',
                                2700
                            ],
                            [
                                'Girls Literacy Incentive Amount Class 11th',
                                10000,
                            ],
                        ],
                        dataLabels: {
                            formatter: function () {
                                return 'Applicants: ' + this.y;
                            }
                        },
                        tooltip: {
                            headerFormat: '<span style="font-size:11px">{point.name}</span><br>',
                            pointFormat: '<span style="color:{point.color}"><br/></span> ' +
                                '<b>{point.name}</b><br/>Total Applicants: {point.y}<br/>'
                        },
                    },

                    {
                        name: 'Registered Scheme',
                        id: 'Registered Scheme',
                        data: [
                            [
                                'State Scholarship (Primary Level)',
                                6000
                            ],
                            [
                                'Dead/Disabled/Senior Scholarship to children of government employees',
                                4500
                            ],
                            [
                                'Postmatric Scholarship (Non-Hostel)',
                                2700
                            ],
                            [
                                'Postmatric Scholarship (Hostel)',
                                8000
                            ],
                            [
                                'Girls Literacy Incentive Amount Class 11th',
                                10000
                            ],
                            [
                                'State Government Scheduled Tribe Scholarship',
                                12000
                            ]
                        ],
                        dataLabels: {
                            formatter: function () {
                                return 'Applicants: ' + this.y;
                            }
                        },
                        tooltip: {
                            headerFormat: '<span style="font-size:11px">{point.name}</span><br>',
                            pointFormat: '<span style="color:{point.color}"><br/></span> ' +
                                '<b>{point.name}</b><br/>Total Applicants: {point.y}<br/>'
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
                    pointFormatter: function () {
                        return 'Total Students: <b>' + this.y + '</b><br>' +
                            'Boys: <b>' + (this.y - this.z) + '</b><br>' +
                            'Girls: <b>' + this.z + '</b><br>';
                    }
                },
                borderRadius: 3,
                colorByPoint: true
            }],

        });


    </script>


    <%--add event script--%>
    <script>
        var start_date = document.getElementById("event-start-date")
            , timepicker1 = document.getElementById("timepicker1")
            , timepicker2 = document.getElementById("timepicker2")
            , date_range = null
            , T_check = null;
        function flatPickrInit() {
            var e = {
                enableTime: !0,
                noCalendar: !0
            };
            flatpickr(start_date, {
                enableTime: !1,
                mode: "range",
                minDate: "today",
                onChange: function (e, t, n) {
                    1 < t.split("to").length ? document.getElementById("event-time").setAttribute("hidden", !0) : (document.getElementById("timepicker1").parentNode.classList.remove("d-none"),
                        document.getElementById("timepicker1").classList.replace("d-none", "d-block"),
                        document.getElementById("timepicker2").parentNode.classList.remove("d-none"),
                        document.getElementById("timepicker2").classList.replace("d-none", "d-block"),
                        document.getElementById("event-time").removeAttribute("hidden"))
                }
            });
            flatpickr(timepicker1, e),
                flatpickr(timepicker2, e)
        }
        function flatpicekrValueClear() {
            start_date.flatpickr().clear(),
                timepicker1.flatpickr().clear(),
                timepicker2.flatpickr().clear()
        }
        function eventClicked() {
            document.getElementById("form1").classList.add("view-event"),
                document.getElementById("event-title").classList.replace("d-none", "d-block"),
                document.getElementById("event-category").classList.replace("d-block", "d-none"),
                document.getElementById("event-start-date").parentNode.classList.add("d-none"),
                document.getElementById("event-start-date").classList.replace("d-block", "d-none"),
                document.getElementById("event-time").setAttribute("hidden", !0),
                document.getElementById("timepicker1").parentNode.classList.add("d-none"),
                document.getElementById("timepicker1").classList.replace("d-block", "d-none"),
                document.getElementById("timepicker2").parentNode.classList.add("d-none"),
                document.getElementById("timepicker2").classList.replace("d-block", "d-none"),
                document.getElementById("event-location").classList.replace("d-block", "d-none"),
                document.getElementById("event-description").classList.replace("d-block", "d-none"),
                document.getElementById("event-start-date-tag").classList.replace("d-none", "d-block"),
                document.getElementById("event-timepicker1-tag").classList.replace("d-none", "d-block"),
                document.getElementById("event-timepicker2-tag").classList.replace("d-none", "d-block"),
                document.getElementById("event-location-tag").classList.replace("d-none", "d-block"),
                document.getElementById("event-description-tag").classList.replace("d-none", "d-block"),
                document.getElementById("btn-save-event").setAttribute("hidden", !0)
        }
        function editEvent(e) {
            document.getElementById("event-details").style.display = 'none';
            document.getElementById("event-form").style.display = 'block';
        }
        function eventTyped() {
            document.getElementById("form1").classList.remove("view-event"),
                document.getElementById("event-title").classList.replace("d-none", "d-block"),
                document.getElementById("event-category").classList.replace("d-none", "d-block"),
                document.getElementById("event-start-date").parentNode.classList.remove("d-none"),
                document.getElementById("event-start-date").classList.replace("d-none", "d-block"),
                document.getElementById("timepicker1").parentNode.classList.remove("d-none"),
                document.getElementById("timepicker1").classList.replace("d-none", "d-block"),
                document.getElementById("timepicker2").parentNode.classList.remove("d-none"),
                document.getElementById("timepicker2").classList.replace("d-none", "d-block"),
                document.getElementById("event-location").classList.replace("d-none", "d-block"),
                document.getElementById("event-description").classList.replace("d-none", "d-block"),
                document.getElementById("event-start-date-tag").classList.replace("d-block", "d-none"),
                document.getElementById("event-timepicker1-tag").classList.replace("d-block", "d-none"),
                document.getElementById("event-timepicker2-tag").classList.replace("d-block", "d-none"),
                document.getElementById("event-location-tag").classList.replace("d-block", "d-none"),
                document.getElementById("event-description-tag").classList.replace("d-block", "d-none"),
                document.getElementById("btn-save-event").removeAttribute("hidden")
        }
        function upcomingEvent(e) {
            let today = new Date();  // Current date
            e = e.filter(event => new Date(event.start) >= today);
            e.sort(function (e, t) {
                return new Date(e.start) - new Date(t.start)
            }),
                document.getElementById("upcoming-event-list").innerHTML = null,
                Array.from(e).forEach(function (e) {
                    var t = e.title
                        , n = (l = e.end ? (endUpdatedDay = new Date(e.end)).setDate(endUpdatedDay.getDate() - 1) : l) || void 0;
                    n = "Invalid Date" == n || null == n ? null : (a = new Date(n).toLocaleDateString("en", {
                        year: "numeric",
                        month: "numeric",
                        day: "numeric"
                    }),
                        new Date(a).toLocaleDateString("en-GB", {
                            day: "numeric",
                            month: "short",
                            year: "numeric"
                        }).split(" ").join(" "));
                    (e.start ? str_dt(e.start) : null) === (l ? str_dt(l) : null) && (n = null);
                    var a = e.start
                        , d = (a = "Invalid Date" === a || void 0 === a ? null : (d = new Date(a).toLocaleDateString("en", {
                            year: "numeric",
                            month: "numeric",
                            day: "numeric"
                        }),
                            new Date(d).toLocaleDateString("en-GB", {
                                day: "numeric",
                                month: "short",
                                year: "numeric"
                            }).split(" ").join(" ")),
                            n ? " to " + n : "")
                        , n = e.className.split("-")
                        , i = e.description || ""
                        , e = tConvert(getTime(e.start))
                        , l = (e == (l = tConvert(getTime(l))) && (e = "Full day event",
                            l = null),
                            l ? " to " + l : "");
                    u_event = "<div class='card card-border-primary mb-3'>                        <div class='card-body'>                            <div class='d-flex mb-3'>                                <div class='flex-grow-1'><i class='mdi mdi-checkbox-blank-circle me-2 text-" + n[1] + "'></i><span class='fw-medium'>" + a + d + " </span></div>                                <div class='flex-shrink-0'><small class='badge bg-primary-subtle text-primary ms-auto'>" + e + l + "</small></div>                            </div>                            <h6 class='card-title fs-16'> " + t + "</h6>                            <p class='text-muted text-truncate-two-lines mb-0'> " + i + "</p>                        </div>                    </div>",
                        document.getElementById("upcoming-event-list").innerHTML += u_event
                })
        }
        // Helper functions (unchanged)
        function tConvert(time) {
            let [hours, minutes] = time.split(':');
            let ampm = hours >= 12 ? 'PM' : 'AM';
            hours = hours % 12 || 12;
            return `${hours}:${minutes} ${ampm}`;
        }

        function getTime(dateString) {
            let date = new Date(dateString);
            return date.toTimeString().slice(0, 5);
        }


        // Helper functions
        function tConvert(time) {
            // Convert 24-hour time format to 12-hour format with AM/PM
            let [hours, minutes] = time.split(':');
            let ampm = hours >= 12 ? 'PM' : 'AM';
            hours = hours % 12 || 12; // Convert hour '0' to '12'
            return `${hours}:${minutes} ${ampm}`;
        }

        function getTime(dateString) {
            // Extract time from a date string
            let date = new Date(dateString);
            return date.toTimeString().slice(0, 5);
        }

        function getTime(e) {
            if (null != (e = new Date(e)).getHours())
                return e.getHours() + ":" + (e.getMinutes() ? e.getMinutes() : 0)
        }
        function tConvert(e) {
            var e = e.split(":")
                , t = e[0]
                , e = e[1]
                , n = 12 <= t ? "PM" : "AM";
            return (t = (t %= 12) || 12) + ":" + (e < 10 ? "0" + e : e) + " " + n
        }
        document.addEventListener("DOMContentLoaded", function () {
            flatPickrInit();
            var g = new bootstrap.Modal(document.getElementById("event-modal"), {
                keyboard: !1
            })
                , i = (document.getElementById("event-modal"),
                    document.getElementById("modal-title"))
                , l = document.getElementById("form1")
                , v = null
                , p = document.getElementsByClassName("needs-validation")
                , e = new Date
                , t = e.getDate()
                , n = e.getMonth()
                , e = e.getFullYear()
                , a = FullCalendar.Draggable
                , d = document.getElementById("external-events")
                , y = [
                    {
                        id: 1,
                        title: "New Year's Day",
                        start: "2024-01-01",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 2,
                        title: "Pongal",
                        start: "2024-01-15",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 3,
                        title: "Republic Day",
                        start: "2024-01-26",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 4,
                        title: "Maha Shivaratri",
                        start: "2024-03-08",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 5,
                        title: "Holi",
                        start: "2024-03-25",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 6,
                        title: "Good Friday",
                        start: "2024-03-29",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 7,
                        title: "Eid al-Fitr",
                        start: "2024-04-10",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 8,
                        title: "Buddha Purnima",
                        start: "2024-05-23",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 9,
                        title: "Independence Day",
                        start: "2024-08-15",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 10,
                        title: "Raksha Bandhan",
                        start: "2024-08-19",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 11,
                        title: "Krishna Janmashtami",
                        start: "2024-08-26",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 12,
                        title: "Ganesh Chaturthi",
                        start: "2024-09-07",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 13,
                        title: "Gandhi Jayanti",
                        start: "2024-10-02",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 14,
                        title: "Dussehra",
                        start: "2024-10-12",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 15,
                        title: "Diwali",
                        start: "2024-11-01",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 16,
                        title: "Guru Nanak Jayanti",
                        start: "2024-11-15",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 17,
                        title: "Christmas",
                        start: "2024-12-25",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 18,
                        title: "Makar Sankranti",
                        start: "2024-01-14",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 19,
                        title: "Baisakhi",
                        start: "2024-04-13",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 20,
                        title: "Mahavir Jayanti",
                        start: "2024-04-21",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 21,
                        title: "Eid al-Adha",
                        start: "2024-06-17",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 22,
                        title: "Onam",
                        start: "2024-09-15",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 23,
                        title: "Karva Chauth",
                        start: "2024-10-17",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 24,
                        title: "Bhai Dooj",
                        start: "2024-11-03",
                        className: "bg-info-subtle",
                        allDay: true
                    },
                    {
                        id: 25,
                        title: "Christmas Eve",
                        start: "2024-12-24",
                        className: "bg-info-subtle",
                        allDay: true
                    }
                ]

                , e = (new a(d, {
                    itemSelector: ".external-event",
                    eventData: function (e) {
                        return {
                            id: Math.floor(11e3 * Math.random()),
                            title: e.innerText,
                            allDay: !0,
                            start: new Date,
                            className: e.getAttribute("data-class")
                        }
                    }
                }),
                    document.getElementById("calendar"));
            function o(e) {
                document.getElementById("event-details").style.display = 'none';
                document.getElementById("event-form").style.display = 'block';
                document.getElementById("form1").reset(),
                    document.getElementById("btn-delete-event").setAttribute("hidden", !0),
                    g.show(),
                    l.classList.remove("was-validated"),
                    l.reset(),
                    v = null,
                    i.innerText = "Add Event",
                    newEventData = e,
                    document.getElementById("edit-event-btn").setAttribute("data-id", "new-event"),
                    document.getElementById("edit-event-btn").click(),
                    document.getElementById("edit-event-btn").setAttribute("hidden", !0)
            }
            function r() {
                return 768 <= window.innerWidth && window.innerWidth < 1200 ? "timeGridWeek" : window.innerWidth <= 768 ? "listMonth" : "dayGridMonth"
            }
            var c = new Choices("#event-category", {
                searchEnabled: !1
            })
                , b = new FullCalendar.Calendar(e, {
                    timeZone: "local",
                    editable: !0,
                    droppable: !0,
                    selectable: !0,
                    navLinks: !0,
                    initialView: r(),
                    themeSystem: "bootstrap",
                    headerToolbar: {
                        left: "prev,next today",
                        center: "title",
                        right: "dayGridMonth,timeGridWeek,timeGridDay,listMonth"
                    },
                    windowResize: function (e) {
                        var t = r();
                        b.changeView(t)
                    },
                    eventResize: function (t) {
                        var e = y.findIndex(function (e) {
                            return e.id == t.event.id
                        });
                        y[e] && (y[e].title = t.event.title,
                            y[e].start = t.event.start,
                            y[e].end = t.event.end || null,
                            y[e].allDay = t.event.allDay,
                            y[e].className = t.event.classNames[0],
                            y[e].description = t.event._def.extendedProps.description || "",
                            y[e].location = t.event._def.extendedProps.location || ""),
                            upcomingEvent(y)
                    },
                    eventClick: function (e) {
                        document.getElementById("event-form").style.display = 'none',
                            document.getElementById("event-details").style.display = 'block',
                            document.getElementById("edit-event-btn").removeAttribute("hidden"),
                            document.getElementById("btn-save-event").setAttribute("hidden", !0),
                            document.getElementById("edit-event-btn").setAttribute("data-id", "edit-event"),
                            document.getElementById("edit-event-btn").innerHTML = "Edit",
                            eventClicked(),
                            flatPickrInit(),
                            flatpicekrValueClear(),
                            g.show(),
                            l.reset(),
                            v = e.event,
                            document.getElementById("modal-title").innerHTML = v.title,
                            document.getElementById("event-location-tag").innerHTML = void 0 === v.extendedProps.location ? "No Location" : v.extendedProps.location,
                            document.getElementById("event-description-tag").innerHTML = void 0 === v.extendedProps.description ? "No Description" : v.extendedProps.description,
                            document.getElementById("event-title").value = v.title,
                            document.getElementById("event-location").value = void 0 === v.extendedProps.location ? "No Location" : v.extendedProps.location,
                            document.getElementById("event-description").value = void 0 === v.extendedProps.description ? "No Description" : v.extendedProps.description,
                            document.getElementById("eventid").value = v.id,
                            v.classNames[0] && (c.destroy(),
                                (c = new Choices("#event-category", {
                                    searchEnabled: !1
                                })).setChoiceByValue(v.classNames[0]));
                        function t(e) {
                            var t = "" + ((e = new Date(e)).getMonth() + 1)
                                , n = "" + e.getDate();
                            return [e.getFullYear(), t = t.length < 2 ? "0" + t : t, n = n.length < 2 ? "0" + n : n].join("-")
                        }
                        var e = v.start
                            , n = v.end
                            , a = null
                            , d = (null != n && (a = (d = new Date(n)).setDate(d.getDate() - 1)),
                                null == n ? str_dt(e) : str_dt(e) + " to " + str_dt(a))
                            , n = null == n ? t(e) : t(e) + " to " + t(a)
                            , e = (flatpickr(start_date, {
                                defaultDate: n,
                                altInput: !0,
                                altFormat: "j F Y",
                                dateFormat: "Y-m-d",
                                mode: "range",
                                onChange: function (e, t, n) {
                                    1 < t.split("to").length ? document.getElementById("event-time").setAttribute("hidden", !0) : (document.getElementById("timepicker1").parentNode.classList.remove("d-none"),
                                        document.getElementById("timepicker1").classList.replace("d-none", "d-block"),
                                        document.getElementById("timepicker2").parentNode.classList.remove("d-none"),
                                        document.getElementById("timepicker2").classList.replace("d-none", "d-block"),
                                        document.getElementById("event-time").removeAttribute("hidden"))
                                }
                            }),
                                document.getElementById("event-start-date-tag").innerHTML = d,
                                getTime(v.start))
                            , a = getTime(v.end);
                        e == a ? (document.getElementById("event-time").setAttribute("hidden", !0),
                            flatpickr(document.getElementById("timepicker1"), {
                                enableTime: !0,
                                noCalendar: !0,
                                dateFormat: "H:i"
                            }),
                            flatpickr(document.getElementById("timepicker2"), {
                                enableTime: !0,
                                noCalendar: !0,
                                dateFormat: "H:i"
                            })) : (document.getElementById("event-time").removeAttribute("hidden"),
                                flatpickr(document.getElementById("timepicker1"), {
                                    enableTime: !0,
                                    noCalendar: !0,
                                    dateFormat: "H:i",
                                    defaultDate: e
                                }),
                                flatpickr(document.getElementById("timepicker2"), {
                                    enableTime: !0,
                                    noCalendar: !0,
                                    dateFormat: "H:i",
                                    defaultDate: a
                                }),
                                document.getElementById("event-timepicker1-tag").innerHTML = tConvert(e),
                                document.getElementById("event-timepicker2-tag").innerHTML = tConvert(a)),
                            newEventData = null,
                            i.innerText = v.title,
                            document.getElementById("btn-delete-event").removeAttribute("hidden")
                    },
                    events: y,
                    eventReceive: function (e) {
                        e = {
                            id: parseInt(e.event.id),
                            title: e.event.title,
                            start: e.event.start,
                            allDay: e.event.allDay,
                            className: e.event.classNames[0]
                        };
                        y.push(e),
                            upcomingEvent(y)
                    },
                    eventDrop: function (t) {
                        var e = y.findIndex(function (e) {
                            return e.id == t.event.id
                        });
                        y[e] && (y[e].title = t.event.title,
                            y[e].start = t.event.start,
                            y[e].end = t.event.end || null,
                            y[e].allDay = t.event.allDay,
                            y[e].className = t.event.classNames[0],
                            y[e].description = t.event._def.extendedProps.description || "",
                            y[e].location = t.event._def.extendedProps.location || ""),
                            upcomingEvent(y)
                    }
                });
            b.render(),
                upcomingEvent(y),
                l.addEventListener("submit", function (e) {
                    e.preventDefault();
                    var t, n, e = document.getElementById("event-title").value, a = document.getElementById("event-category").value, d = document.getElementById("event-start-date").value.split("to"), i = new Date(d[0].trim()), l = new Date(d[1]), l = (l.setDate(l.getDate() + 1),
                        d[1] ? l : ""), o = null, r = document.getElementById("event-location").value, c = document.getElementById("event-description").value, s = document.getElementById("eventid").value, m = !1, u = (1 < d.length ? ((o = new Date(d[1])).setDate(o.getDate() + 1),
                            d = new Date(d[0]),
                            m = !0) : (t = d,
                                u = document.getElementById("timepicker1").value.trim(),
                                n = document.getElementById("timepicker2").value.trim(),
                                d = new Date(d + "T" + u),
                                o = new Date(t + "T" + n)),
                            y.length + 1);
                    !1 === p[0].checkValidity() ? p[0].classList.add("was-validated") : (v ? (v.setProp("id", s),
                        v.setProp("title", e),
                        v.setProp("classNames", [a]),
                        v.setStart(i),
                        v.setEnd(l),
                        v.setAllDay(m),
                        v.setExtendedProp("description", c),
                        v.setExtendedProp("location", r),
                        t = y.findIndex(function (e) {
                            return e.id == v.id
                        }),
                        y[t] && (y[t].title = e,
                            y[t].start = i,
                            y[t].end = l,
                            y[t].allDay = m,
                            y[t].className = a,
                            y[t].description = c,
                            y[t].location = r),
                        b.render()) : (b.addEvent(n = {
                            id: u,
                            title: e,
                            start: d,
                            end: o,
                            allDay: m,
                            className: a,
                            description: c,
                            location: r
                        }),
                            y.push(n)),
                        g.hide(),
                        upcomingEvent(y))
                })
        });
        var str_dt = function (e) {
            var e = new Date(e)
                , t = "" + ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"][e.getMonth()]
                , n = "" + e.getDate()
                , e = e.getFullYear();
            return t.length < 2 && (t = "0" + t),
                [(n = n.length < 2 ? "0" + n : n) + " " + t, e].join(",")
        };

    </script>
    <%--add event script--%>
</asp:Content>
