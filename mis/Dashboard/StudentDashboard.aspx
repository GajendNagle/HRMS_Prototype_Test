<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentDashboard.aspx.cs" Inherits="mis_Dashboard_StudentDashboard" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <link href="../dist/dashboard/dashboardstyle.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        .box-min-height {
            min-height: 14rem;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server"> 

    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">Student/Scheme Dashboard</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Dashboard" title="click to go on">Dashboard</a></li>
                    <li class="breadcrumb-item active">Student/Scheme Dashboard</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <div class="row justify-content-center">
                <div class="col-lg-2 col-md-6 col-sm-12" data-aos="flip-left" data-aos-duration="1500">
                    <div class="box pull-up box-shadow-inset bg-warning box-min-height">
                        <div class="box-body">
                            <div class="text-center">
                                <h1 class="fs-50 text-light"><i class="fa fa-building-circle-check"></i></h1>
                                <div class="bh-line"><span class="badge badge-pill badge-xl badge-secondary px-15">No. of Registered Offices</span></div>
                                <h2>911</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-12" data-aos="flip-right" data-aos-duration="1500">
                    <div class="box pull-up box-shadow-inset bg-cyan box-min-height">
                        <div class="box-body">
                            <div class="text-center">
                                <h1 class="fs-50 text-light"><i class="fa fa-building"></i></h1>
                                <div class="bh-line"><span class="badge badge-pill badge-xl badge-secondary px-15">No. of Registered Institutes</span></div>
                                <h2>1,090</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-12" data-aos="flip-left" data-aos-duration="1500">
                    <div class="box pull-up box-shadow-inset bg-primary box-min-height">
                        <div class="box-body">
                            <div class="text-center">
                                <h1 class="fs-50 text-light "><i class="fa fa-school"></i></h1>
                                <div class="bh-line"><span class="badge badge-pill badge-xl badge-secondary px-15">No. of Registered Schools</span></div>
                                <h2>1,22,938</h2>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-2 col-md-6 col-sm-12" data-aos="flip-right" data-aos-duration="1500">
                    <div class="box pull-up box-shadow-inset bg-info box-min-height">
                        <div class="box-body">
                            <div class="text-center ">
                                <h1 class="fs-50 text-light"><i class="fa fa-school-flag"></i></h1>
                                <div class="bh-line"><span class="badge badge-pill badge-xl badge-secondary px-15">No. of Registered Sankuls</span></div>
                                <h2>18,088</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-12" data-aos="flip-left" data-aos-duration="1500">
                    <div class="box pull-up box-shadow-inset bg-success box-min-height">
                        <div class="box-body">
                            <div class="text-center">
                                <h1 class="fs-50 text-light"><i class="fa fa-user-tie"></i></h1>
                                <%--Registered--%>
                                <div class="bh-line"><span class="badge badge-pill badge-xl badge-secondary px-15">No. of Registered Staff</span></div>
                                <h2>40,000</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-12" data-aos="flip-right" data-aos-duration="1500">
                    <div class="box pull-up box-shadow-inset bg-danger box-min-height">
                        <div class="box-body">
                            <div class="text-center">
                                <h1 class="fs-50 text-light"><i class="fa fa-person-chalkboard"></i></h1>
                                <div class="bh-line"><span class="badge badge-pill badge-xl badge-secondary px-15">No. of Registered Teachers</span></div>
                                <h2>4,10,000</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <%--    </div>
            <div class="row justify-content-center">--%>

                <div class="col-lg-2 col-md-6 col-sm-12" data-aos="flip-left" data-aos-duration="1500">
                    <div class="box pull-up box-shadow-inset bg-purple box-min-height">
                        <div class="box-body">
                            <div class="text-center">
                                <h1 class="fs-50 text-light"><i class="fa fa-users-line"></i></h1>
                                <div class="bh-line"><span class="badge badge-pill badge-xl badge-secondary px-15">No. of Registered Students</span></div>
                                <h2>72,77,777</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-12" data-aos="flip-right" data-aos-duration="1500">
                    <div class="box pull-up box-shadow-inset bg-warning box-min-height">
                        <div class="box-body">
                            <div class="text-center">
                                <h1 class="fs-50 text-light"><i class="fa fa-school-circle-check"></i></h1>
                                <div class="bh-line"><span class="badge badge-pill badge-xl badge-secondary px-15">No. of School (Functional)</span></div>
                                <h2>90,886</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-12" data-aos="flip-left" data-aos-duration="1500">
                    <div class="box pull-up box-shadow-inset bg-info box-min-height">
                        <div class="box-body">
                            <div class="text-center ">
                                <h1 class="fs-50 text-light"><i class="fa fa-school-circle-xmark"></i></h1>
                                <div class="bh-line"><span class="badge badge-pill badge-xl badge-secondary px-15">No. of School (Non-Functional)</span></div>
                                <h2>32,052</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <%--<div class="col-lg-2 col-md-6 col-sm-12" data-aos="flip-right" data-aos-duration="1500">
                    <div class="box pull-up box-shadow-inset bg-info box-min-height">
                        <div class="box-body">
                            <div class="text-center ">
                                <h1 class="fs-50 text-light"><i class="mdi  mdi-human-male-female"></i></h1>
                                <div class="bh-line"><span class="badge badge-pill badge-xl badge-secondary px-15">Merge School</span></div>
                                <h2>3,724</h2>
                            </div>
                        </div>
                    </div>
                </div>--%>
                <%--<div class="col-lg-2 col-md-6 col-sm-12" data-aos="flip-left" data-aos-duration="1500">
                    <div class="box pull-up box-shadow-inset bg-cyan box-min-height">
                        <div class="box-body">
                            <div class="text-center">
                                <h1 class="fs-50 text-light"><i class="mdi mdi-source-branch"></i></h1>
                                <div class="bh-line"><span class="badge badge-pill badge-xl badge-secondary px-15">Close School</span></div>
                                <h2>777</h2>
                            </div>
                        </div>
                    </div>
                </div>--%>
            </div>


            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-12" data-aos="flip-right" data-aos-duration="1500">
                    <div class="card box-shadow-inset3">
                        <div class="card-body ">
                            <h5 style="text-transform: none">EMPLYOEES e-SERVICE BOOK</h5>
                            <p>(in No's)</p>
                            <div id="e-Service-Book-Chart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12" data-aos="flip-left" data-aos-duration="1500">
                    <div class="card box-shadow-inset3">
                        <div class="card-body ">
                            <h5 class="">School Merge/Unmerge Status</h5>
                            <p>(in No's)</p>
                            <div id="Merge-Status-Chart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12" data-aos="flip-right" data-aos-duration="1500">
                    <div class="card box-shadow-inset3">
                        <div class="card-body ">
                            <h5 class="">School Management Groups </h5>
                            <p>(in No's)</p>
                            <div id="Management-Group-Chart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12" data-aos="fade-up-left" data-aos-duration="1500">
                    <div class="card box-shadow-inset3">
                        <div class="card-body ">
                            <h5 class="">School Affiliated Boards </h5>
                            <p>(in No's)</p>
                            <div id="Management-Group-Details-Chart"></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6 col-md-12 col-sm-12" data-aos="zoom-in-right" data-aos-duration="1500">
                    <div class="box">
                        <div class="box-body analytics-info">
                            <h4 class="box-title">HRMS (Educational Year 2023-24) </h4>
                            <br />
                            <div id="nested-pie" style="height: 350px;"></div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6 col-md-12 col-sm-12" data-aos="zoom-in-left" data-aos-duration="1500">
                    <div class="box">
                        <div class="box-body analytics-info">
                            <h4 class="box-title">Transfer (Educational Year 2023-24)</h4>
                            <br />
                            <div id="nightingale-chart" style="height: 350px;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row column1">
                <div class="col-md-6 col-lg-3 col-sm-12" data-aos="flip-left" data-aos-easing="ease-out-cubic" data-aos-duration="2000">
                    <div class="full counter_section margin_bottom_30 pink_bg box-shadow-inset1">
                        <div class="couter_icon">
                            <div class="text-left">
                                <i class="fa fa-newspaper"></i>

                            </div>
                        </div>
                        <div class="counter_no">
                            <div>
                                <p class="total_no">4,900 <span class="f-10">(in No's)</span></p>
                                <p class="head_couter">Transfer Order</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 col-sm-12" data-aos="flip-left" data-aos-easing="ease-out-cubic" data-aos-duration="2000">
                    <div class="full counter_section margin_bottom_30 blue1_bg box-shadow-inset1">
                        <div class="couter_icon">
                            <div>
                                <i class="fa fa-arrow-up-right-dots"></i>
                            </div>
                        </div>
                        <div class="counter_no">
                            <div>
                                <p class="total_no">11,800  <span class="f-10">(in No's)</span></p>
                                <p class="head_couter">Promotion Order</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3" data-aos="flip-right" data-aos-easing="ease-out-cubic" data-aos-duration="2000">
                    <div class="full counter_section margin_bottom_30 green_bg box-shadow-inset1">
                        <div class="couter_icon">
                            <div>
                                <i class="fa fa-money-bill-trend-up"></i>
                            </div>
                        </div>
                        <div class="counter_no">
                            <div>
                                <p class="total_no">12,905  <span class="f-10">(in No's)</span></p>
                                <p class="head_couter">Increment Order</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3" data-aos="flip-right" data-aos-easing="ease-out-cubic" data-aos-duration="2000">
                    <div class="full counter_section margin_bottom_30 red_bg box-shadow-inset1">
                        <div class="couter_icon">
                            <div>
                                <i class="fa fa-person-cane"></i>
                            </div>
                        </div>
                        <div class="counter_no">
                            <div>
                                <p class="total_no">898  <span class="f-10">(in No's)</span></p>
                                <p class="head_couter">Retirement Order</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6 col-md-12 col-sm-12" data-aos="fade-up-left" data-aos-duration="1500">
                    <div class="card box-shadow-inset3">
                        <div class="card-body ">
                            <h4 class="">School Details (Educational Year 2023-24)</h4>
                            <div id="morris-donut-chart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12" data-aos="fade-up-right" data-aos-duration="1500">
                    <div class="card box-shadow-inset3">
                        <div class="card-body">
                            <h4 class="">School Functional/Closed (Educational Year 2023-24)</h4>
                            <div id="morris-donut-chart1"></div>
                        </div>
                    </div>
                </div>
            </div>
     


        </div>
    </div>





</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="../dist/dashboard/echart-pie-doghnut.js"></script>
    <script src="../dist/dashboard/echarts-en.min.js"></script>
    <script src="../dist/dashboard/vendors.min.js"></script>
    <script src="../dist/dashboard/core.js"></script>
    <script src="../dist/dashboard/kelly.js"></script>
    <script src="../dist/dashboard/animated.js"></script>
    <script src="../dist/dashboard/charts.js"></script>
    <script src="../dist/dashboard/template.js"></script>
    <script src="../dist/dashboard/dashboard-chart-int.js"></script>
    <script src="../dist/dashboard/stock-prices.js"></script>
    <script src="../dist/dashboard/apexcharts.js"></script>
    <script src="../dist/dashboard/raphael-min.js"></script>
    <script src="../dist/dashboard/morris.js"></script>


    <script>

   


        Highcharts.chart('container', {

            chart: {
                height: '100%'
            },

            // Let the center circle be transparent
            colors: ['transparent'].concat(Highcharts.getOptions().colors),

            title: {
                text: 'World population 2017'
            },

            subtitle: {
                text: 'Source <a href="https://en.wikipedia.org/wiki/List_of_countries_by_population_(United_Nations)">Wikipedia</a>'
            },

            series: [{
                type: 'sunburst',
                data: data,
                name: 'Root',
                allowDrillToNode: true,
                borderRadius: 3,
                cursor: 'pointer',
                dataLabels: {
                    format: '{point.name}',
                    filter: {
                        property: 'innerArcLength',
                        operator: '>',
                        value: 16
                    }
                },
                levels: [{
                    level: 1,
                    levelIsConstant: false,
                    dataLabels: {
                        filter: {
                            property: 'outerArcLength',
                            operator: '>',
                            value: 64
                        }
                    }
                }, {
                    level: 2,
                    colorByPoint: true
                },
                {
                    level: 3,
                    colorVariation: {
                        key: 'brightness',
                        to: -0.5
                    }
                }, {
                    level: 4,
                    colorVariation: {
                        key: 'brightness',
                        to: 0.5
                    }
                }]

            }],

            tooltip: {
                headerFormat: '',
                pointFormat: 'The population of <b>{point.name}</b> is <b>{point.value}</b>'
            }
        });


        // e-Service Book Chart

        Morris.Donut({
            element: 'e-Service-Book-Chart',

            data: [{
                label: "Total Employees",
                value: 450000

            }, {
                label: "Generated  e-Service Book",
                value: 450000

            }, {
                label: "Verified  e-Service Book",
                value: 430500
            }],
            resize: true,
            colors: ['#48426D', '#B4BB72', '#A2D0C1']
        });


        // Merge Status Chart

        Morris.Donut({
            element: 'Merge-Status-Chart',
            data: [{
                label: "School Merge",
                value: 1600

            }, {
                label: "School Unmerge",
                value: 1200
            }],
            resize: true,
            colors: ['#A27B5C', '#FF5B00']
        });


        // Management Group Chart

        Morris.Donut({
            element: 'Management-Group-Chart',
            data: [{
                label: "State Government",
                value: 98014
            }, {
                label: "Govt. Aided",
                value: 1275
            }, {
                label: "Private Unaided",
                value: 22836
            }, {
                label: "Central Government",
                value: 506
            }, {
                label: "Others",
                value: 307
            }],
            resize: true,
            colors: ['#4C4C6D', '#88AB8E', '#FFE194', '#2B3499', '#5b9f38']
        });

        // Management Group Details Chart

        Morris.Donut({
            element: 'Management-Group-Details-Chart',
            data: [{
                label: "CBSE",
                value: 981
            }, {
                label: "State Board",
                value: 121415
            }, {
                label: "ICSE",
                value: 30
            }, {
                label: "International Board",
                value: 205
            }, {
                label: "Others",
                value: 307
            }],
            resize: true,
            colors: ['#57375D', '#EC8F5E', '#940B92', '#22092C', '#ff8f00']
        });

        // Morris donut chart

        Morris.Donut({
            element: 'morris-donut-chart',
            data: [{
                label: "Registered School",
                value: 122938

            }, {
                label: "Verified School",
                value: 118196
            }, {
                label: "Non-Verified",
                value: 2025
            }, {
                label: "Verification Pending",
                value: 2717
            }],
            resize: true,
            colors: ['#009efb', '#55ce63', '#2f3d4a', '#01c0c8']
        });


        Morris.Donut({
            element: 'morris-donut-chart1',
            data: [{
                label: "Functional School",
                value: 90886,

            }, {
                label: "Closed School",
                value: 32052
            }],
            resize: true,
            colors: ['#fec107', '#01c191']
        });
    </script>
</asp:Content>

