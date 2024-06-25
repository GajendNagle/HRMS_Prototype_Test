<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolDirectoryDashboard.aspx.cs" Inherits="mis_Dashboard_AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <%--<link href="../dist/dashboard/dashboardstyle.css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        .box-min-height {
            min-height: 14rem;
        }

        .highcharts-data-label text {
            text-decoration: none !important;
        }

        #InstituteChart .highcharts-data-label text,
        #OfficeChart .highcharts-data-label text, #SchoolChart .highcharts-data-label text {
            color: white !important;
            font-size: 0.65rem !important;
            font-weight: bold !important;
            text-align: center !important;
            fill: white !important;
            text-decoration: none !important;
        }
    </style>
    <link href="../dist/dashboard/hrmsdashboard.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <div class="col-md-5 align-self-center">
                    <h4 class="text-themecolor ">School Directory Dashboard</h4>
                    <h5 class="text-themecolor ">Educational Year [2023-2024]</h5>
                </div>
                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item"><a href="#sidebarDashboards" data-bs-toggle="collapse" role="button">Dashboards</a></li>
                        <li class="breadcrumb-item active">School Directory Dashboard</li>
                    </ol>
                </div>

            </div>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-lg-12 col-sm-12 col-md-12">
            <div class="section-title">
                <h2>Directory Details</h2>
            </div>
            <div class="single_element">
                <div class="quick_activity">
                    <div class="row justify-content-center">
                        <div class="col-lg-2">

                            <div class="card-wrap">
                                <div class="card-header card-header1 one">
                                    <%--<i class="fas fa-code"></i>--%>
                                    <h4 class="">Registered Offices 
                                        <smallh4>(No's)</smallh4></h4>

                                </div>
                                <div class="card-content">
                                    <button class="card-btn one counter">911</button>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-2">

                            <div class="card-wrap">
                                <div class="card-header card-header1 two">
                                    <h4 class="">Registered Institutes 
                                        <smallh4>(No's)</smallh4></h4>

                                </div>
                                <div class="card-content">

                                    <button class="card-btn two counter">1,090</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="card-wrap">
                                <div class="card-header card-header1 three">
                                    <h4 class="">Registered Schools 
                                        <smallh4>(No's)</smallh4></h4>
                                </div>
                                <div class="card-content">
                                    <%--<h1 class="card-title card-title1"></h1>--%>
                                    <button class="card-btn three counter">1,22,938</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="card-wrap">
                                <div class="card-header card-header1 four">
                                    <h4 class="">Registered Sankuls 
                                        <smallh4>(No's)</smallh4></h4>
                                </div>
                                <div class="card-content">


                                    <button class="card-btn four counter">18,088</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2">

                            <div class="card-wrap">
                                <div class="card-header card-header1 one">
                                    <%--<i class="fas fa-code"></i>--%>
                                    <h4 class="">School Functional 
                                        <smallh4>(No's)</smallh4></h4>

                                </div>
                                <div class="card-content">
                                    <button class="card-btn one counter">90,886</button>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-2">

                            <div class="card-wrap">
                                <div class="card-header card-header1 two">
                                    <h4 class="">School Non-Functional 
                                        <smallh4>(No's)</smallh4></h4>

                                </div>
                                <div class="card-content">

                                    <button class="card-btn two counter">32,052</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="card-wrap">
                                <div class="card-header card-header1 three">
                                    <h4 class="">Merged School 
                                        <smallh4>
                                            <br />
                                            (No's)</smallh4></h4>
                                </div>
                                <div class="card-content">
                                    <%--<h1 class="card-title card-title1"></h1>--%>
                                    <button class="card-btn three counter">18,903</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="card-wrap">
                                <div class="card-header card-header1 four">
                                    <h4 class="">Registered Special Schools 
                                        <smallh4>(No's)</smallh4></h4>
                                </div>
                                <div class="card-content">


                                    <button class="card-btn four counter">19</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="section-title">
        <h2>School Details</h2>
    </div>

    <div class="row">
        <div class="col-lg-4 col-md-12 col-sm-12" data-aos="flip-right" data-aos-duration="1500">

            <div class="card shadow ">
                <div class="card-header card-border-info">
                </div>
                <div class="card-body card-body-caharts ">

                    <h5 class="">School Management Groups </h5>
                    <p>(No's)</p>
                    <div id="Management-Group-Chart"></div>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-12 col-sm-12" data-aos="flip-left" data-aos-duration="1500">
            <div class="card shadow ">
                <div class="card-header card-border-info">
                </div>
                <div class="card-body card-body-caharts ">

                    <h5 class="">School Affiliated Boards </h5>
                    <p>(No's)</p>
                    <div id="Management-Group-Details-Chart"></div>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-12 col-sm-12" data-aos="flip-right" data-aos-duration="1500">
            <div class="card shadow ">
                <div class="card-header card-border-info">
                </div>
                <div class="card-body card-body-caharts ">
                    <h5>School Verification Details</h5>
                    <p>(No's)</p>
                    <div id="SchoolVerificationDetails-Chart"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="section-title">
        <h2>OIS Details</h2>
    </div>

    <div class="row">
        <div class="col-lg-4 col-md-12 col-sm-12" data-aos="zoom-in-right" data-aos-duration="1500">
            <div class="form-group">
                <div class="card shadow">
                    <div class="card-header card-border-info">
                    </div>
                    <div class="card-body">
                        <div id="OfficeChart" class="graph-maxheight"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-12 col-sm-12" data-aos="zoom-in-right" data-aos-duration="1500">
            <div class="form-group">
                <div class="card shadow">
                    <div class="card-header card-border-info">
                    </div>
                    <div class="card-body">
                        <div id="InstituteChart" class="graph-maxheight"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-12 col-sm-12" data-aos="zoom-in-right" data-aos-duration="1500">
            <div class="form-group">
                <div class="card shadow">
                    <div class="card-header card-border-info">
                    </div>
                    <div class="card-body">
                        <div id="SchoolChart" class="graph-maxheight"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <div class="card shadow">
                    <div class="card-header card-border-info">
                    </div>
                    <div class="card-body">
                        <div id="Enrollment_Chart" class="graph-maxheight"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="../dist/dashboard/raphael-min.js"></script>
    <script src="../dist/dashboard/morris.js"></script>
    <script src="../dist/js/highcharts/highcharts.js"></script>
    <script src="../js/drilldown.js"></script>
    <script src="../js/highcharts-3d.js"></script>
    <script src="../js/sunburst.js"></script>
    <script src="../js/exporting.js"></script>
    <script src="../js/export-data.js"></script>
    <script src="../js/accessibility.js"></script>


    <script src="../dist/DashboardNew/js/jquery.waypoints.min.js"></script>
    <script src="../dist/DashboardNew/js/jquery.counterup.min.js"></script>
    <script src="../dist/DashboardNew/js/custom.js"></script>
    <script src="../dist/js/CustomChart.js"></script>

    <script>


        Highcharts.setOptions({
            colors: Highcharts.map(Highcharts.getOptions().colors, function (color) {
                return {
                    radialGradient: {
                        cx: 0.5,
                        cy: 0.3,
                        r: 0.7
                    },
                    stops: [
                        [0, color],
                        [1, Highcharts.color(color).brighten(-0.3).get('rgb')] // darken
                    ]
                };
            })
        });

        (function (H) {
            H.seriesTypes.pie.prototype.animate = function (init) {
                const series = this,
                    chart = series.chart,
                    points = series.points,
                    {
                        animation
                    } = series.options,
                    {
                        startAngleRad
                    } = series;

                function fanAnimate(point, startAngleRad) {
                    const graphic = point.graphic,
                        args = point.shapeArgs;

                    if (graphic && args) {

                        graphic
                            // Set inital animation values
                            .attr({
                                start: startAngleRad,
                                end: startAngleRad,
                                opacity: 1
                            })
                            // Animate to the final position
                            .animate({
                                start: args.start,
                                end: args.end
                            }, {
                                duration: animation.duration / points.length
                            }, function () {
                                // On complete, start animating the next point
                                if (points[point.index + 1]) {
                                    fanAnimate(points[point.index + 1], args.end);
                                }
                                // On the last point, fade in the data labels, then
                                // apply the inner size
                                if (point.index === series.points.length - 1) {
                                    series.dataLabelsGroup.animate({
                                        opacity: 1
                                    },
                                        void 0,
                                        function () {
                                            points.forEach(point => {
                                                point.opacity = 1;
                                            });
                                            series.update({
                                                enableMouseTracking: true
                                            }, false);
                                            chart.update({
                                                plotOptions: {
                                                    pie: {
                                                        innerSize: '40%',
                                                        borderRadius: 8
                                                    }
                                                }
                                            });
                                        });
                                }
                            });
                    }
                }

                if (init) {
                    // Hide points on init
                    points.forEach(point => {
                        point.opacity = 0;
                    });
                } else {
                    fanAnimate(points[0], startAngleRad);
                }
            };
        }(Highcharts));

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
            colors: ['#fe7c00', '#fdc300', '#3ba6a0', '#3d97d5', '#0094b0', '#e5afcf', '#b9dd73', '#abcff1', '#ffdc5a', '#ff9d94',]
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
            colors: ['#fe7c00', '#fdc300', '#3ba6a0', '#3d97d5', '#0094b0', '#e5afcf', '#b9dd73', '#abcff1', '#ffdc5a', '#ff9d94',]
        });

        // School Verification Details Chart

        Morris.Donut({
            element: 'SchoolVerificationDetails-Chart',
            dataLabels: {
                enabled: true,
                distance: 15,
                format: '{point.label}'
            },
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
            colors: ['#FFBF00', '#FF7000', '#2E8A99', '#73BBC9',]
        });

        // Office OIS Setup Chart

        Highcharts.chart('OfficeChart', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 45,
                    beta: 0,

                }
            },
            title: {
                text: 'Office Details',
                align: 'left'
            },
            subtitle: {
                text: "(Educational Year 2023-24) (No's)",
                align: 'left',
            },
            accessibility: {
                announceNewData: {
                    enabled: true
                },

                point: {
                    valueSuffix: '%'
                }
            },
            plotOptions: {
                pie: {
                    innerSize: 80,
                    inside: true,
                    depth: 45,
                    dataLabels: {
                        enabled: true,
                        distance: -50, // Position labels inside slices
                        formatter: function () {
                            // Split the label text at spaces and add line breaks
                            return this.key.split(' ').join('<br/>') + ' : ' + this.y;
                        },
                        style: {
                            textOutline: 'none',
                            fontSize: '0.65rem', textAlign: 'center',
                            color: 'white'
                        },
                    }
                }
            },

            tooltip: {
                headerFormat: '<span style="font-size:11px; color:black;">{series.name}</span><br>',
                pointFormat: '<span style="color:{point.color}">{point.name}</span>: <span style="color:black;font-size:11px;"> <b>{point.y}</b> of total<br/></span>'
            },

            series: [
                {
                    name: 'Office',
                    colorByPoint: true,

                    data: [
                        {
                            name: 'Registered Offices',
                            y: 911,
                            drilldown: 'Registered Offices'
                        },
                        {
                            name: 'Office Sanctioned',
                            y: 799,
                            drilldown: 'Office Sanctioned'
                        },
                        {
                            name: 'Office Working',
                            y: 92,
                            drilldown: 'Office Working'
                        },
                        {
                            name: 'Office Vacant',
                            y: 10,
                            drilldown: 'Office Vacant'
                        }
                    ]
                }
            ],
            drilldown: {
                series: [
                    {
                        name: 'Office Sanctioned',
                        id: 'Office Sanctioned',
                        data: [
                            [
                                'Bhopal',
                                15
                            ],
                            [
                                'Betul',
                                4
                            ]
                        ]
                    },
                    {
                        name: 'Office Working',
                        id: 'Office Working',
                        data: [

                            [
                                'Narmadapuram',
                                18
                            ],
                            [
                                'Sahdol',
                                9
                            ]
                        ]
                    },
                    {
                        name: 'Office Vacant',
                        id: 'Office Vacant',
                        data: [
                            [
                                'Bhind',
                                4
                            ],
                            [
                                'Murena',
                                2
                            ]
                        ]
                    }

                ]
            }
        });


        Highcharts.chart('InstituteChart', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 45,
                    beta: 0
                }
            },
            title: {
                text: 'Institute Details',
                align: 'left'
            },
            subtitle: {
                text: "(Educational Year 2023-24) (No's)",
                align: 'left',
            },
            accessibility: {
                announceNewData: {
                    enabled: true
                },
                point: {
                    valueSuffix: '%'
                }
            },

            plotOptions: {
                pie: {
                    innerSize: 80,
                    inside: true,
                    depth: 45,
                    dataLabels: {
                        enabled: true,
                        distance: -50, // Position labels inside slices
                        formatter: function () {
                            // Split the label text at spaces and add line breaks
                            return this.key.split(' ').join('<br/>') + ' : ' + this.y;
                        },
                        style: {
                            textOutline: 'none',
                            fontSize: '0.65rem', textAlign: 'center',
                            color: 'white'
                        },
                    }
                }
            },

            tooltip: {
                headerFormat: '<span style="font-size:11px; color:black;">{series.name}</span><br>',
                pointFormat: '<span style="color:{point.color}">{point.name}</span>: <span style="color:black;font-size:11px;"> <b>{point.y}</b> of total<br/></span>'
            },

            series: [
                {
                    name: 'Institute',
                    colorByPoint: true,
                    data: [
                        {
                            name: 'Registered Institute',
                            y: 1090,
                            drilldown: 'Registered Institute'
                        },
                        {
                            name: 'Institute Sanctioned',
                            y: 799,
                            drilldown: 'Institute Sanctioned'
                        },
                        {
                            name: 'Institute Working',
                            y: 92,
                            drilldown: 'Institute Working'
                        },
                        {
                            name: 'Institute Vacant',
                            y: 10,
                            drilldown: 'Institute Vacant'
                        }
                    ]
                }
            ],
            drilldown: {
                series: [
                    {
                        name: 'Institute Sanctioned',
                        id: 'Institute Sanctioned',
                        data: [
                            [
                                'Bhopal',
                                15
                            ],
                            [
                                'Betul',
                                4
                            ]
                        ]
                    },
                    {
                        name: 'Institute Working',
                        id: 'Institute Working',
                        data: [

                            [
                                'Narmadapuram',
                                18
                            ],
                            [
                                'Sahdol',
                                9
                            ]
                        ]
                    },
                    {
                        name: 'Institute Vacant',
                        id: 'Institute Vacant',
                        data: [
                            [
                                'Bhind',
                                4
                            ],
                            [
                                'Murena',
                                2
                            ]
                        ]
                    }

                ]
            }
        });

        // School OIS Setup Chart

        Highcharts.chart('SchoolChart', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 45,
                    beta: 0
                }
            },
            title: {
                text: 'School Details',
                align: 'left'
            },
            subtitle: {
                text: "(Educational Year 2023-24) (No's)",
                align: 'left',
            },
            accessibility: {
                announceNewData: {
                    enabled: true
                },
                point: {
                    valueSuffix: '%'
                }
            },

            plotOptions: {
                pie: {
                    innerSize: 80,
                    inside: true,
                    depth: 45,
                    dataLabels: {
                        enabled: true,
                        distance: -50, // Position labels inside slices
                        formatter: function () {
                            // Split the label text at spaces and add line breaks
                            return this.key.split(' ').join('<br/>') + ' : ' + this.y;
                        },
                        style: {
                            textOutline: 'none',
                            fontSize: '0.65rem', textAlign: 'center',
                            color: 'white'
                        },
                    }
                }
            },

            tooltip: {
                headerFormat: '<span style="font-size:11px; color:black;">{series.name}</span><br>',
                pointFormat: '<span style="color:{point.color}">{point.name}</span>: <span style="color:black;font-size:11px;"> <b>{point.y}</b> of total<br/></span>'
            },

            series: [
                {
                    name: 'School',
                    colorByPoint: true,
                    data: [
                        {
                            name: 'Registered School',
                            y: 122938,
                            drilldown: 'Registered School'
                        },
                        {
                            name: 'School Sanctioned',
                            y: 99807,
                            drilldown: 'School Sanctioned'
                        },
                        {
                            name: 'School Working',
                            y: 18040,
                            drilldown: 'School Working'
                        },
                        {
                            name: 'School Vacant',
                            y: 5091,
                            drilldown: 'School Vacant'
                        }
                    ]
                }
            ],
            drilldown: {
                series: [
                    {
                        name: 'School Sanctioned',
                        id: 'School Sanctioned',
                        data: [
                            [
                                'Bhopal',
                                15
                            ],
                            [
                                'Betul',
                                4
                            ]
                        ]
                    },
                    {
                        name: 'School Working',
                        id: 'School Working',
                        data: [

                            [
                                'Narmadapuram',
                                18
                            ],
                            [
                                'Sahdol',
                                9
                            ]
                        ]
                    },
                    {
                        name: 'School Vacant',
                        id: 'Edge',
                        data: [
                            [
                                'Bhind',
                                4
                            ],
                            [
                                'Murena',
                                2
                            ]
                        ]
                    }

                ]
            }
        });


        // School OIS Setup Chart


        Highcharts.chart('Enrollment_Chart', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 0,
                    beta: 0
                }
            },
            title: {
                text: 'School Details',
                align: 'left'
            },
            subtitle: {
                text: "(Educational Year 2023-24) (No's)",
                align: 'left',
            },
            colors: ['#a3d7a2', '#676753', '#443f29', '#c08baa', '#b33b7a', '#cc99ff', '#ccccff', '#99ccff', '#ccffff', '#99ffcc'],
            plotOptions: {
                pie: {
                    dataLabels: {
                        enabled: true
                    }
                }
            },
            series: [{
                name: 'School',
                data: [{
                    name: 'Status of school with Zero enrollment',
                    y: 122938,
                    drilldown: 'StatusofschoolwithZeroenrollment'
                }, {
                    name: 'Status of schools with 1 to 5 enrollments',
                    y: 122938,
                    drilldown: 'Statusofschoolswith1to5enrollments'
                }, {
                    name: 'Status of schools with 6 to 10 enrollments',
                    y: 122938,
                    drilldown: 'Statusofschoolswith6to10enrollments'
                }, {
                    name: 'Status of schools with 11 to 15 enrollments',
                    y: 122938,
                    drilldown: 'Statusofschoolswith11to15enrollments'
                }, {
                    name: 'Status of schools with 16 to 20 enrollments',
                    y: 122938,
                    drilldown: 'Statusofschoolswith16to20enrollments'
                }, {
                    name: 'Status of schools with 21 to 25 enrollments',
                    y: 122938,
                    drilldown: 'Statusofschoolswith21to25enrollments'
                }, {
                    name: 'Status of schools with 26 to 30 enrollments',
                    y: 122938,
                    drilldown: 'Statusofschoolswith26to30enrollments'
                }, {
                    name: 'Status of schools with 31 to 35 enrollments',
                    y: 122938,
                    drilldown: 'Statusofschoolswith31to35enrollments'
                }, {
                    name: 'Status of schools with 36 to 40 enrollments',
                    y: 122938,
                    drilldown: 'Statusofschoolswith36to40enrollments'
                }, {
                    name: 'Status of schools with enrolment above 41',
                    y: 122938,
                    drilldown: 'Statusofschoolswithenrolmentabove41'
                }]
            }],
            drilldown: {

                series: [{
                    id: 'StatusofschoolwithZeroenrollment',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: 'Zeroenrollment_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: 'Zeroenrollment_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: 'Zeroenrollment_PrimaryMiddleSchool'
                    }]
                },
                {
                    id: 'Statusofschoolswith1to5enrollments',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: '1to5enrollments_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: '1to5enrollments_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: '1to5enrollments_PrimaryMiddleSchool'
                    }]
                }, {
                    id: 'Statusofschoolswith6to10enrollments',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: '1to5enrollments_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: '1to5enrollments_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: '1to5enrollments_PrimaryMiddleSchool'
                    }]
                }, {
                    id: 'Statusofschoolswith11to15enrollments',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: '1to5enrollments_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: '1to5enrollments_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: '1to5enrollments_PrimaryMiddleSchool'
                    }]
                }, {
                    id: 'Statusofschoolswith16to20enrollments',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: '1to5enrollments_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: '1to5enrollments_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: '1to5enrollments_PrimaryMiddleSchool'
                    }]
                }, {
                    id: 'Statusofschoolswith21to25enrollments',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: '1to5enrollments_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: '1to5enrollments_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: '1to5enrollments_PrimaryMiddleSchool'
                    }]
                }, {
                    id: 'Statusofschoolswith26to30enrollments',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: '1to5enrollments_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: '1to5enrollments_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: '1to5enrollments_PrimaryMiddleSchool'
                    }]
                }, {
                    id: 'Statusofschoolswith31to35enrollments',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: '1to5enrollments_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: '1to5enrollments_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: '1to5enrollments_PrimaryMiddleSchool'
                    }]
                }, {
                    id: 'Statusofschoolswith36to40enrollments',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: '1to5enrollments_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: '1to5enrollments_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: '1to5enrollments_PrimaryMiddleSchool'
                    }]
                }, {
                    id: 'Statusofschoolswithenrolmentabove41',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: '1to5enrollments_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: '1to5enrollments_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: '1to5enrollments_PrimaryMiddleSchool'
                    }]
                }, {
                    id: 'Zeroenrollment_PrimarySchool',
                    name: 'Total Count',
                    data: [{
                        name: 'Number of schools enrolled',
                        y: 454,
                        drilldown: 'Numberofschoolsenrolled'
                    }, {
                        name: 'Number of teachers posted in the enrolled school',
                        y: 354,
                        drilldown: 'Numberofteacherspostedintheenrolledschool'
                    }]
                }, {
                    id: 'Numberofschoolsenrolled',
                    name: 'Total Count',
                    data: [{
                        name: 'Bhopal',
                        y: 56,
                        drilldown: 'Bhopal'
                    }, {
                        name: 'Gwalior',
                        y: 77,
                        drilldown: 'Gwalior'
                    }, {
                        name: 'Indore',
                        y: 18,
                        drilldown: 'Indore'
                    }, {
                        name: 'Jabalpur',
                        y: 59,
                        drilldown: 'Jabalpur'
                    }, {
                        name: 'Narmadapuram',
                        y: 8,
                        drilldown: 'Narmadapuram'
                    }, {
                        name: 'Rewa',
                        y: 110,
                        drilldown: 'Rewa'
                    }, {
                        name: 'Sagar',
                        y: 44,
                        drilldown: 'Sagar'
                    }, {
                        name: 'Shahdol',
                        y: 3,
                        drilldown: 'Shahdol'
                    }, {
                        name: 'Ujjain',
                        y: 79,
                        drilldown: 'Ujjain'
                    }]
                }, {
                    id: 'Numberofteacherspostedintheenrolledschool',
                    name: 'Total Count',
                    data: [{
                        name: 'Bhopal',
                        y: 51,
                        drilldown: 'Bhopal'
                    }, {
                        name: 'Gwalior',
                        y: 65,
                        drilldown: 'Gwalior'
                    }, {
                        name: 'Indore',
                        y: 13,
                        drilldown: 'Indore'
                    }, {
                        name: 'Jabalpur',
                        y: 46,
                        drilldown: 'Jabalpur'
                    }, {
                        name: 'Narmadapuram',
                        y: 15,
                        drilldown: 'Narmadapuram'
                    }, {
                        name: 'Rewa',
                        y: 48,
                        drilldown: 'Rewa'
                    }, {
                        name: 'Sagar',
                        y: 37,
                        drilldown: 'Sagar'
                    }, {
                        name: 'Shahdol',
                        y: 5,
                        drilldown: 'Shahdol'
                    }, {
                        name: 'Ujjain',
                        y: 74,
                        drilldown: 'Ujjain'
                    }]
                },


                ]
            }
        });


    </script>


</asp:Content>

