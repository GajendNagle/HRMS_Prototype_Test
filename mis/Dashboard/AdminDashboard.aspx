<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AdminDashboard.aspx.cs" Inherits="mis_Dashboard_AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
<%--    <div class="container-fluid">--%>

        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                    <h4 class="mb-sm-0">Admin Dashboard <span>(Status As On Year : 2024)</span></h4>

                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="javascript: void(0);">Dashboards</a></li>
                            <li class="breadcrumb-item active">Admin Dashboard</li>
                        </ol>
                    </div>

                </div>
            </div>
        </div>
        <!-- end page title -->

        <div class="row">
            <div class="col-xxl-5">
                <div class="d-flex flex-column h-100">
                    <div class="row h-100">
                        <div class="col-md-6">
                            <div class="card card-animate">
                                <div class="card-body p-0">
                                    <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                                        <div class="carousel-inner">
                                            <div class="carousel-item active" data-bs-interval="10000">
                                                <img src="../assets/images/SchoolChaleAbhiyan.png" class="d-block w-100" height="165" alt="...">
                                            </div>
                                            <div class="carousel-item" data-bs-interval="2000">
                                                <img src="../assets/images/SchoolChaleAbhiyan.png" class="d-block w-100" height="165" alt="...">
                                            </div>

                                        </div>
                                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                            <span class="visually-hidden">Previous</span>
                                        </button>
                                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                            <span class="visually-hidden">Next</span>
                                        </button>
                                    </div>
                                </div>
                                <!-- end card-body-->
                            </div>
                        </div>
                        <div class="col-md-6">

                            <div class="col-md-12">
                                <div class="card card-animate">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between">
                                            <div>
                                                <p class="fw-medium text-muted mb-0">Registered Offices</p>
                                                <p class="fw-light text-muted mb-0">(No's) </p>

                                                <h2 class="mt-4 ff-secondary cfs-22 fw-semibold"><span class="counter-value" data-target="911">0</span></h2>
                                                <p class="mb-0 text-muted text-truncate">
                                                    Last Updated on <span class="badge bg-light text-success mb-0">03/04/2024 16:48 </span>
                                                </p>
                                            </div>
                                            <div>
                                                <div class="avatar-sm flex-shrink-0">
                                                    <span class="avatar-title bg-info-subtle rounded-circle fs-2">
                                                        <%--                  <i data-feather="buildings" class="text-info"></i>--%>
                                                        <i class="bx bxs-buildings text-info"></i>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end card body -->
                                </div>
                                <!-- end card-->
                            </div>
                            <!-- end col-->


                            <!-- end col-->
                        </div>

                        <!-- end col-->

                        <div class="col-md-6">
                            <div class="card card-animate">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <p class="fw-medium text-muted mb-0">Registered Institutes</p>
                                            <p class="fw-light text-muted mb-0">(No's) </p>

                                            <h2 class="mt-4 ff-secondary cfs-22 fw-semibold"><span class="counter-value" data-target="1090">0</span></h2>
                                            <p class="mb-0 text-muted text-truncate">
                                                Last Updated on <span class="badge bg-light text-success mb-0">03/04/2024 16:48 </span>
                                            </p>
                                        </div>
                                        <div>
                                            <div class="avatar-sm flex-shrink-0">
                                                <span class="avatar-title bg-info-subtle rounded-circle fs-2">
                                                    <i class='bx bxs-institution text-info'></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end card body -->
                            </div>
                            <!-- end card-->
                        </div>
                        <!-- end col-->

                        <div class="col-md-6">
                            <div class="card card-animate">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <p class="fw-medium text-muted mb-0">Registered Schools</p>
                                            <p class="fw-light text-muted mb-0">(No's) </p>

                                            <h2 class="mt-4 ff-secondary cfs-22 fw-semibold"><span class="counter-value" data-target="122938">0</span></h2>
                                            <p class="mb-0 text-muted text-truncate">
                                                Last Updated on <span class="badge bg-light text-success mb-0">03/04/2024 16:48 </span>
                                            </p>
                                        </div>
                                        <div>
                                            <div class="avatar-sm flex-shrink-0">
                                                <span class="avatar-title bg-info-subtle rounded-circle fs-2">
                                                    <i class='bx bxs-school text-info'></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end card body -->
                            </div>
                            <!-- end card-->
                        </div>
                        <!-- end col-->
                    </div>
                    <!-- end row-->

                    <div class="row">
                        <div class="col-md-6">
                            <div class="card card-animate">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <p class="fw-medium text-muted mb-0">Registered Sankuls </p>
                                            <p class="fw-light text-muted mb-0">(No's) </p>
                                            <h2 class="mt-4 ff-secondary cfs-22 fw-semibold"><span class="counter-value" data-target="18088">0</span>

                                                <span class="counter-value" data-target="40">0</span>
                                            </h2>
                                            <p class="mb-0 text-muted text-truncate">
                                                Last Updated on <span class="badge bg-light text-success mb-0">03/04/2024 16:48 </span>
                                            </p>
                                        </div>
                                        <div>
                                            <div class="avatar-sm flex-shrink-0">
                                                <span class="avatar-title bg-info-subtle rounded-circle fs-2">
                                                    <i class='bx bxs-school text-info'></i></span>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end card body -->
                            </div>
                            <!-- end card-->
                        </div>
                        <!-- end col-->

                        <div class="col-md-6">
                            <div class="card card-animate">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <p class="fw-medium text-muted mb-0">Registered Special Schools</p>
                                            <p class="fw-light text-muted mb-0">(No's) </p>

                                            <h2 class="mt-4 ff-secondary cfs-22 fw-semibold"><span class="counter-value" data-target="19">0</span></h2>
                                            <p class="mb-0 text-muted text-truncate">
                                                Last Updated on <span class="badge bg-light text-success mb-0">03/04/2024 16:48 </span>
                                            </p>
                                        </div>
                                        <div>
                                            <div class="avatar-sm flex-shrink-0">
                                                <span class="avatar-title bg-info-subtle rounded-circle fs-2">
                                                    <i class='bx bxs-school text-info'></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end card body -->
                            </div>
                            <!-- end card-->
                        </div>
                        <!-- end col-->
                    </div>
                    <!-- end row-->
                </div>
            </div>
            <!-- end col-->

            <div class="col-xxl-7">
                <div class="row h-100">
                    <div class="col-xl-5">
                        <div class="card card-height-100">
                            <div class="card-header align-items-center d-flex">
                                <h4 class="card-title mb-0 flex-grow-1">Live Users By District</h4>
                                <div class="flex-shrink-0">
                                    <button type="button" class="btn btn-soft-primary btn-sm material-shadow-none">
                                        Export Report
                               
                                    </button>
                                </div>
                            </div>
                            <!-- end card header -->

                            <!-- card body -->
                            <div class="card-body">

                                <%--<div id="users-by-country" data-colors='["--vz-light"]' class="text-center" style="height: 252px"></div>--%>
                                <div class="row">
                                    <div class="col-12 text-center">
                                        <img src="../assets/images/MPMap.gif" height="252" style="max-width: inherit;" />
                                    </div>
                                </div>


                                <div class="table-responsive table-card mt-3">
                                    <table class="table table-borderless table-sm table-centered align-middle table-nowrap mb-1">
                                        <thead class="text-muted border-dashed border border-start-0 border-end-0 bg-light-subtle">
                                            <tr>
                                                <th>Duration (Secs)</th>
                                                <th style="width: 30%;">Sessions</th>
                                                <th style="width: 30%;">Views</th>
                                            </tr>
                                        </thead>
                                        <tbody class="border-0">
                                            <tr>
                                                <td>0-30</td>
                                                <td>2,250</td>
                                                <td>4,250</td>
                                            </tr>
                                            <tr>
                                                <td>31-60</td>
                                                <td>1,501</td>
                                                <td>2,050</td>
                                            </tr>
                                            <tr>
                                                <td>61-120</td>
                                                <td>750</td>
                                                <td>1,600</td>
                                            </tr>
                                            <tr>
                                                <td>121-240</td>
                                                <td>540</td>
                                                <td>1,040</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- end card body -->
                        </div>
                        <!-- end card -->
                    </div>
                    <!-- end col -->

                    <div class="col-xl-7">
                        <div class="card card-height-100">
                            <div class="card-header align-items-center d-flex">
                                <h4 class="card-title mb-0 flex-grow-1">Scheme Wise Amount Disbursment  Details (Million)</h4>
                                <div>
                                    <button type="button" class="btn btn-soft-secondary btn-sm material-shadow-none">
                                        ALL
                               
                                    </button>
                                    <button type="button" class="btn btn-soft-primary btn-sm material-shadow-none">
                                        M
                               
                                    </button>
                                    <button type="button" class="btn btn-soft-secondary btn-sm material-shadow-none">
                                        F
                               
                                    </button>
                                </div>
                            </div>
                            <div class="card-body p-0">
                                <div>
                                    <div id="countries_charts" data-colors='["--vz-info", "--vz-info", "--vz-info", "--vz-info", "--vz-info", "--vz-info", "--vz-info", "--vz-info", "--vz-info", "--vz-info"]' data-colors-minimal='["--vz-primary", "--vz-primary", "--vz-primary", "--vz-primary", "--vz-primary", "--vz-primary", "--vz-primary", "--vz-primary", "--vz-primary", "--vz-primary"]' data-colors-material='["--vz-primary", "--vz-primary", "--vz-info", "--vz-info", "--vz-danger", "--vz-primary", "--vz-primary", "--vz-warning", "--vz-primary", "--vz-primary"]' data-colors-galaxy='["--vz-primary-rgb, 0.4", "--vz-primary-rgb, 0.4", "--vz-primary-rgb, 0.4", "--vz-primary-rgb, 0.4", "--vz-primary", "--vz-primary-rgb, 0.4", "--vz-primary-rgb, 0.4", "--vz-primary-rgb, 0.4", "--vz-primary-rgb, 0.4", "--vz-primary-rgb, 0.4"]' data-colors-classic='["--vz-primary", "--vz-primary", "--vz-primary", "--vz-primary", "--vz-primary", "--vz-primary", "--vz-primary", "--vz-primary", "--vz-primary", "--vz-primary"]' class="apex-charts" dir="ltr"></div>
                                </div>
                            </div>
                            <!-- end card body -->
                        </div>
                        <!-- end card -->
                    </div>
                    <!-- end col-->

                </div>
                <!-- end row-->
            </div>
            <!-- end col -->
        </div>
        <!-- end row-->

        <div class="row">
            <div class="col-xl-6">
                <div class="card">
                    <div class="card-header border-0 align-items-center d-flex">
                        <h4 class="card-title mb-0 flex-grow-1">Upcoming Retirements</h4>
                        <div>
                            <button type="button" class="btn btn-soft-secondary btn-sm material-shadow-none">
                                ALL
                       
                            </button>
                            <button type="button" class="btn btn-soft-secondary btn-sm material-shadow-none">
                                1M
                       
                            </button>
                            <button type="button" class="btn btn-soft-secondary btn-sm material-shadow-none">
                                6M
                       
                            </button>
                            <button type="button" class="btn btn-soft-primary btn-sm material-shadow-none">
                                1Y
                       
                            </button>
                        </div>
                    </div>
                    <!-- end card header -->
                    <div class="card-header p-0 border-0 bg-light-subtle">
                        <div class="row g-0 text-center">
                            <div class="col-6 col-sm-4">
                                <div class="p-3 border border-dashed border-start-0">
                                    <h5 class="mb-1"><span class="counter-value" data-target="854">0</span>
                                        <%--                                        <span class="text-success ms-1 fs-12">49%<i class="ri-arrow-right-up-line ms-1 align-middle"></i></span>--%>
                                    </h5>
                                    <p class="text-muted mb-0">Total Retirements (No's)</p>
                                </div>
                            </div>
                            <!--end col-->

                            <!--end col-->

                            <!--end col-->
                        </div>
                    </div>
                    <!-- end card header -->
                    <div class="card-body p-0 pb-2">
                        <div>
                            <div id="audiences_metrics_charts" data-colors='["--vz-success", "--vz-light"]' data-colors-minimal='["--vz-primary", "--vz-light"]' data-colors-modern='["--vz-primary", "--vz-light"]' data-colors-interactive='["--vz-primary", "--vz-light"]' data-colors-creative='["--vz-secondary", "--vz-light"]' data-colors-corporate='["--vz-primary", "--vz-light"]' data-colors-galaxy='["--vz-primary", "--vz-light"]' data-colors-classic='["--vz-primary", "--vz-secondary"]' data-colors-vintage='["--vz-primary", "--vz-success-rgb, 0.5"]' class="apex-charts" dir="ltr"></div>
                        </div>
                    </div>
                    <!-- end card body -->
                </div>
                <!-- end card -->
            </div>
            <!-- end col -->

            <div class="col-xl-6">
                <div class="card card-height-100">
                    <div class="card-header align-items-center d-flex">
                        <h4 class="card-title mb-0 flex-grow-1">Monthly Event Calendar</h4>
                        <div class="flex-shrink-0">
                        </div>
                    </div>
                    <!-- end card header -->
                    <div class="card-body p-0">
                        <div>

                            <img src="../assets/images/Calender.png" style="width:100%; max-height:380px"/>

                            <%--<div id="calendar"></div>--%>

                        </div>
                    </div>
                    <!-- end cardbody -->
                </div>
                <!-- end card -->
            </div>
            <!-- end col -->
        </div>
        <!-- end row -->

        <div class="row">
            <div class="col-xl-4">
                <div class="card card-height-100">
                    <div class="card-header align-items-center d-flex">
                        <h4 class="card-title mb-0 flex-grow-1">Employee Transfer Details</h4>
                        <div class="flex-shrink-0">
                            <div class="dropdown card-header-dropdown">
                                <a class="text-reset dropdown-btn" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="text-muted fs-16"><i class="mdi mdi-dots-vertical align-middle"></i></span>
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
                                <p class="text-muted mb-0">Total Employee Transfer (No's)</p>
                                <h5 class="mb-1"><span class="counter-value" data-target="1359">0</span>
                                </h5>
                            </div>
                        </div>
                        <div id="user_device_pie_charts" data-colors='["--vz-primary", "--vz-warning", "--vz-info"]' data-colors-minimal='["--vz-primary", "--vz-primary-rgb, 0.60", "--vz-primary-rgb, 0.75"]' data-colors-galaxy='["--vz-primary", "--vz-primary-rgb, .75", "--vz-primary-rgb, 0.60"]' class="apex-charts" dir="ltr"></div>

                        <div class="table-responsive mt-3">
                            <table class="table table-borderless table-sm table-centered align-middle table-nowrap mb-0">
                                <tbody class="border-0">
                                    <tr>
                                        <td>
                                            <h4 class="text-truncate fs-14 fs-medium mb-0"><i class="ri-stop-fill align-middle fs-18 text-primary me-2"></i>Total Joined Employee</h4>
                                        </td>
                                        <td class="text-end">
                                            <p class="text-muted mb-0"><i data-feather="users" class="me-2 icon-sm"></i>854</p>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <h4 class="text-truncate fs-14 fs-medium mb-0"><i class="ri-stop-fill align-middle fs-18 text-warning me-2"></i>Employee Pending For Joining </h4>
                                        </td>
                                        <td class="text-end">
                                            <p class="text-muted mb-0"><i data-feather="users" class="me-2 icon-sm"></i>505</p>
                                        </td>

                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- end card body -->
                </div>
                <!-- end card -->
            </div>
            <!-- end col -->

            <div class="col-xl-4 col-md-6">

                <div class="card card-height-100">
                    <div class="card-header align-items-center d-flex">
                        <h4 class="card-title mb-0 flex-grow-1">Payroll Details</h4>
                        <div class="flex-shrink-0">
                            <div class="dropdown card-header-dropdown">
                                <a class="text-reset dropdown-btn" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="text-muted fs-16"><i class="mdi mdi-dots-vertical align-middle"></i></span>
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
                                <p class="text-muted mb-0">Total Registered Staff (No's)</p>
                                <h5 class="mb-1"><span class="counter-value" data-target="115989">0</span>
                                </h5>
                            </div>
                        </div>
                        <div id="store-visits-source" data-colors='["--vz-primary", "--vz-success", "--vz-warning", "--vz-danger", "--vz-info"]' data-colors-minimal='["--vz-primary", "--vz-primary-rgb, 0.85", "--vz-primary-rgb, 0.70", "--vz-primary-rgb, 0.60", "--vz-primary-rgb, 0.45"]' data-colors-interactive='["--vz-primary", "--vz-primary-rgb, 0.85", "--vz-primary-rgb, 0.70", "--vz-primary-rgb, 0.60", "--vz-primary-rgb, 0.45"]' data-colors-galaxy='["--vz-primary", "--vz-primary-rgb, 0.85", "--vz-primary-rgb, 0.70", "--vz-primary-rgb, 0.60", "--vz-primary-rgb, 0.45"]' class="apex-charts" dir="ltr"></div>
                    </div>
                </div>
                <!-- .card-->


            </div>
            <!-- end col -->

            <div class="col-xl-4 col-md-6">
                <div class="card card-height-100">
                    <div class="card-header align-items-center d-flex">
                        <h4 class="card-title mb-0 flex-grow-1">Circular Orders</h4>
                        <div class="flex-shrink-0">
                            <div class="dropdown card-header-dropdown">
                                <a class="text-reset dropdown-btn" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="text-muted fs-16"><i class="mdi mdi-dots-vertical align-middle"></i></span>
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
                        <div class="table-responsive table-card">
                            <table class="table align-middle table-borderless table-striped table-centered  mb-0 ">
                                <thead class="text-muted table-light">
                                    <tr>
                                        <th scope="col" style="width: 5%;">S.No.</th>
                                        <th scope="col" style="width: 80%;">Order Name</th>
                                        <th scope="col">View</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>
                                            <a href="javascript:void(0);">उच्च माध्यमिक शिक्षक संवर्ग की दिनांक 01/04/2023 की स्थिति दर्शाने वाली अंतरिम वरिष्ठता सूची का प्रकाशन</a>
                                        </td>
                                        <td>99</td>
                                    </tr>
                                    <!-- end -->
                                    <tr>
                                        <td>2</td>

                                        <td>
                                            <a href="javascript:void(0);">8 अप्रैल 2024 को आयोजित वीडियो कांफ्रेंसिंग स्थगित किये जाने विषयक</a>
                                        </td>
                                        <td>86</td>
                                    </tr>
                                    <!-- end -->
                                    <tr>
                                        <td>3</td>

                                        <td>
                                            <a href="javascript:void(0);">पालक द्वारा यूनिफार्म, पुस्तकें एवं अन्य सामग्री क्रय करने के संबंध में</a>
                                        </td>
                                        <td>64</td>
                                    </tr>
                                    <!-- end -->
                                    <tr>
                                        <td>4</td>

                                        <td>
                                            <a href="javascript:void(0);">SC/ST प्री एवं पोस्ट मैट्रिक छात्रवृत्ति योजनाओं हेतु शालेय विद्यार्थियों के समग्र, आधार, डिजिटल जाती प्रमाण पत्र एवं आय प्रमाण पत्र की उपलब्धता/अपडेशन सुनिश्चित किए जाने विषयक।</a>
                                        </td>
                                        <td>53</td>
                                    </tr>
                                    <!-- end -->
                                    <tr>
                                        <td>5</td>

                                        <td>
                                            <a href="javascript:void(0);">शैक्षणिक सत्र 2022-23 से अनुसूचित जनजातीय वर्ग के विद्यार्थियों को कक्षा 12वीं की बोर्ड परीक्षा शुल्क के भुगतान विषयक</a>
                                        </td>
                                        <td>33</td>
                                    </tr>

                                </tbody>
                                <!-- end tbody -->
                            </table>
                            <!-- end table -->
                        </div>
                        <!-- end -->
                    </div>
                    <!-- end cardbody -->
                </div>
                <!-- end card -->
            </div>
            <!-- end col -->
        </div>
        <!-- end row -->

    <%--</div>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="../assets/js/pages/dashboard-ecommerce.init.js"></script>
    <script src="../assets/js/pages/calendar-month-grid.init.js"></script>
    <script src="../assets/libs/fullcalendar/index.global.min.js"></script>
    <script src="../assets/js/pages/plugins/lord-icon-2.1.0.js"></script>
    <script src="../assets/libs/node-waves/waves.min.js"></script>
</asp:Content>

