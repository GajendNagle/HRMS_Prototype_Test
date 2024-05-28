<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="HRMSDashboard.aspx.cs" Inherits="mis_Dashboard_StaffDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <%--<link href="../dist/css/site.css" rel="stylesheet" />--%>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="../dist/dashboard/hrmsdashboard.css" rel="stylesheet" />
    <style>
        #ACR_Details_Graph .highcharts-data-label text {
            color: white !important;
            font-size: 0.65rem !important;
            font-weight: bold !important;
            text-align: center !important;
            fill: white !important;
            text-decoration: none !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                    <h4 class="mb-sm-0">HRMS Dashboard <span>(Status As On Year : 2024)</span></h4>

                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="javascript: void(0);">Dashboards</a></li>
                            <li class="breadcrumb-item active">HRMS Dashboard</li>
                        </ol>
                    </div>

                </div>
            </div>
        </div>
        <%--<div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor "></h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=Dashboard" title="click to go on">Dashboard</a></li>
                        <li class="breadcrumb-item active"></li>
                    </ol>
                </div>
            </div>
        </div>--%>

        <div class="row justify-content-center">
            <div class="col-lg-12 col-sm-12 col-md-12">
                <div class="section-title">
                    <h2>Staff Details</h2>
                </div>
                <div class="single_element">
                    <div class="quick_activity">
                        <div class="row justify-content-center">
                            <div class="col-lg-2">

                                <div class="card-wrap">
                                    <div class="card-header card-header1 one">
                                        <h4 class="">Total Staff
                                            <smallh4>
                                                <br />
                                                (No's)</smallh4></h4>

                                    </div>
                                    <div class="card-content">
                                        <button class="card-btn one counter">4,53,093</button>
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-2">

                                <div class="card-wrap">
                                    <div class="card-header card-header1 five">
                                        <h4 class="">Total Working Staff
                                            <smallh4>(No's)</smallh4></h4>

                                    </div>
                                    <div class="card-content">

                                        <button class="card-btn five counter">2,79,607</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2">

                                <div class="card-wrap">
                                    <div class="card-header card-header1 two">
                                        <h4 class="">Total Retired Staff
                                            <smallh4>(No's)</smallh4></h4>

                                    </div>
                                    <div class="card-content">

                                        <button class="card-btn two counter">173486</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2">

                                <div class="card-wrap">
                                    <div class="card-header card-header1 one">
                                        <%--<i class="fas fa-code"></i>--%>
                                        <h4 class="">Registered Administrative Staff
                                            <smallh4>(No's)</smallh4></h4>

                                    </div>
                                    <div class="card-content">
                                        <button class="card-btn one counter">18,958</button>
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-2">

                                <div class="card-wrap">
                                    <div class="card-header card-header1 five">
                                        <h4 class="">Registered Institutional Staff
                                            <smallh4>(No's)</smallh4></h4>

                                    </div>
                                    <div class="card-content">

                                        <button class="card-btn five counter">6,520</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2">

                                <div class="card-wrap">
                                    <div class="card-header card-header1 two">
                                        <h4 class="">Registered Teaching Staff
                                            <smallh4>
                                                <br />
                                                (No's)</smallh4></h4>

                                    </div>
                                    <div class="card-content">

                                        <button class="card-btn two counter">2,51,879</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="card-wrap">
                                    <div class="card-header card-header1 three">
                                        <h4 class="">Out Source Staff
                                            <smallh4>
                                                <br />
                                                (No's)</smallh4></h4>
                                    </div>
                                    <div class="card-content">
                                        <%--<h1 class="card-title card-title1"></h1>--%>
                                        <button class="card-btn three counter">1,500</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="card-wrap">
                                    <div class="card-header card-header1 four">
                                        <h4 class="">Registered Guest Faculty
                                            <smallh4>(No's)</smallh4></h4>
                                    </div>
                                    <div class="card-content">


                                        <button class="card-btn four counter">750</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="section-title">
                <h2>Staff Wise Leave Details</h2>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12" data-aos="fade-up-right" data-aos-duration="1500">
                <div class="card shadow ">
                    <div class="card-header card-border-info">
                    </div>
                    <div class="card-body card-body-caharts ">
                        <h5 style="text-transform: none">Administrative Staff Leave</h5>
                        <p>(No's)</p>
                        <div id="Administrative_Staff_Chart"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12" data-aos="flip-left" data-aos-duration="1500">
                <div class="card shadow ">
                    <div class="card-header card-border-info">
                    </div>
                    <div class="card-body card-body-caharts ">
                        <h5 class="">Institutional Staff Leave</h5>
                        <p>(No's)</p>
                        <div id="Institutional_Staff_Charts"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12" data-aos="flip-left" data-aos-duration="1500">
                <div class="card shadow ">
                    <div class="card-header card-border-info">
                    </div>
                    <div class="card-body card-body-caharts ">
                        <h5 class="">Teaching Staff Leave</h5>
                        <p>(No's)</p>
                        <div id="Teachers_Charts"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12" data-aos="flip-right" data-aos-duration="1500">
                <div class="card shadow ">
                    <div class="card-header card-border-info">
                    </div>
                    <div class="card-body card-body-caharts ">
                        <h5 class="">Out Source Staff Leave</h5>
                        <p>(No's)</p>
                        <div id="OutSourceStaff_Charts"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12" data-aos="fade-up-left" data-aos-duration="1500">
                <div class="card shadow ">
                    <div class="card-header card-border-info">
                    </div>
                    <div class="card-body card-body-caharts ">
                        <h5 class="">Guest Faculty Staff Leave</h5>
                        <p>(No's)</p>
                        <div id="GuestFaculty_Chart"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12" data-aos="fade-up-left" data-aos-duration="1500">
                <div class="card shadow ">
                    <div class="card-header card-border-info">
                    </div>
                    <div class="card-body card-body-caharts ">
                        <h5 class="">Other Staff Leave</h5>
                        <p>(No's)</p>
                        <div id="OthersLave_Chart"></div>
                    </div>
                </div>
            </div>


            <div class="section-title">
                <h2>HRMS Details</h2>
            </div>

            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="card shadow">
                    <div class="card-header card-border-info">
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div id="TransferAdmin" class="graph-maxheight"></div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="card shadow">
                    <div class="card-header card-border-info">
                    </div>
                    <div class="card-body">
                        <div class="row">

                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div id="TransferJoinedStaff" class="graph-maxheight"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="card shadow">
                    <div class="card-header card-border-info">
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div id="Increment_Graph" class="graph-maxheight"></div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="card shadow">
                    <div class="card-header card-border-info">
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div id="Promotion_Graph" class="graph-maxheight"></div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="card shadow">
                    <div class="card-header card-border-info">
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div id="Non_Disciplinary_Chart" class="graph-maxheight"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="card shadow">
                    <div class="card-header card-border-info">
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div id="Retirement_Graph" class="graph-maxheight"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-8 col-md-12 col-sm-12 ">
                <div class="row justify-content-center">
                    <div class="section-title">
                        <h2>Payroll Details</h2>
                    </div>

                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <div class="card">
                            <div class="card-header card-border-info">
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div id="Payroll_OISDetails_Graph" class="graph-maxheight"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <div class="card">
                            <div class="card-header card-border-info">
                            </div>
                            <div class="card-body">
                                <div class="row">

                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div id="PropertyReturn_Graph" class="graph-maxheight"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-12 col-sm-12 ">
                <div class="row">
                    <div class="section-title">
                        <h2>ACR Details</h2>
                    </div>

                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="card">
                            <div class="card-header card-border-info">
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div id="ACR_Details_Graph" class="graph-maxheight"></div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <%--<div class="col-sm-12 col-md-12 col-lg-6">
                        <div class="card">
                            <div class="card-header card-border-info">
                            </div>
                            <div class="card-body">
                                <div class="row">

                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div id="Teaching_Staff_Graph" class="graph-maxheight"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                </div>
            </div>


            <%--      </div>
            <div class="row">--%>
            <div class="col-md-12">
                <div class="form-group">
                    <div class="card shadow">
                        <div class="card-header card-border-info">
                        </div>
                        <div class="card-body">
                            <div id="TeacherStaff_Chart" class="graph-maxheight"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script src="../dist/DashboardNew/js/jquery1-3.4.1.min.js"></script>
    <script src="../dist/DashboardNew/js/jquery.waypoints.min.js"></script>

    <script src="../dist/DashboardNew/js/jquery.counterup.min.js"></script>
    <script src="../dist/DashboardNew/js/custom.js"></script>
    <script src="../dist/dashboard/raphael-min.js"></script>
    <script src="../dist/dashboard/morris.js"></script>
    <script src="../dist/js/highcharts/highcharts.js"></script>


    <script src="../js/highcharts-3d.js"></script>
    <script src="../js/drilldown.js"></script>
    <script src="../js/exporting.js"></script>
    <script src="../js/export-data.js"></script>
    <script src="../js/accessibility.js"></script>

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
        // Leave Administrative Staff Charts

        Morris.Donut({
            element: 'Administrative_Staff_Chart',

            data: [{
                label: "Medical Leave",
                value: 50

            }, {
                label: "Casual Leave",
                value: 50
            }, {
                label: "Earned Leave",
                value: 50
            }, {
                label: "Optional Leave",
                value: 50
            }, {
                label: "Maternity Leave",
                value: 50
            }, {
                label: "Paternity Leave",
                value: 50
            }, {
                label: "Leave Without Pay",
                value: 50
            }, {
                label: "Unauthorized Absence",
                value: 50
            }, {
                label: "Present",
                value: 50
            }, {
                label: "Half Day",
                value: 50
            }, {
                label: "Child Care Leave",
                value: 50
            }],
            resize: true,
            colors: ['#78416b', '#a8428c', '#e74171', '#e9463f', '#d26e22', '#fe7c00', '#fdc300', '#ffe500', '#8bbc00', '#3ba6a0', '#3d97d5', '#0094b0', '#e5afcf', '#b9dd73', '#abcff1', '#ffdc5a', '#ff9d94',]
        });


        // Leave Institutional Staff Charts

        Morris.Donut({
            element: 'Institutional_Staff_Charts',

            data: [
                {
                    label: "Earned Leave",
                    value: 50
                }, {
                    label: "Medical Leave",
                    value: 50

                }, {
                    label: "Casual Leave",
                    value: 50
                }, {
                    label: "Optional Leave",
                    value: 50
                }, {
                    label: "Maternity Leave",
                    value: 50
                }, {
                    label: "Paternity Leave",
                    value: 50
                }, {
                    label: "Leave Without Pay",
                    value: 50
                }, {
                    label: "Unauthorized Absence",
                    value: 50
                }, {
                    label: "Present",
                    value: 50
                }, {
                    label: "Half Day",
                    value: 50
                }, {
                    label: "Child Care Leave",
                    value: 50
                }],
            resize: true,
            colors: ['#78416b', '#a8428c', '#e74171', '#e9463f', '#d26e22', '#fe7c00', '#fdc300', '#ffe500', '#8bbc00', '#3ba6a0', '#3d97d5', '#0094b0', '#e5afcf', '#b9dd73', '#abcff1', '#ffdc5a', '#ff9d94',]
        });


        // Leave Teacher's Charts

        Morris.Donut({
            element: 'Teachers_Charts',
            data: [

                {
                    label: "Half Day",
                    value: 50
                },
                {
                    label: "Medical Leave",
                    value: 50

                }, {
                    label: "Casual Leave",
                    value: 50
                }, {
                    label: "Earned Leave",
                    value: 50
                }, {
                    label: "Optional Leave",
                    value: 50
                }, {
                    label: "Maternity Leave",
                    value: 50
                }, {
                    label: "Paternity Leave",
                    value: 50
                }, {
                    label: "Leave Without Pay",
                    value: 50
                }, {
                    label: "Unauthorized Absence",
                    value: 50
                }, {
                    label: "Present",
                    value: 50
                }, {
                    label: "Child Care Leave",
                    value: 50
                }],
            resize: true,
            colors: ['#78416b', '#a8428c', '#e74171', '#e9463f', '#d26e22', '#fe7c00', '#fdc300', '#ffe500', '#8bbc00', '#3ba6a0', '#3d97d5', '#0094b0', '#e5afcf', '#b9dd73', '#abcff1', '#ffdc5a', '#ff9d94',]
        });


        // Leave Out Source Staff Chart

        Morris.Donut({
            element: 'OutSourceStaff_Charts',
            data: [

                {
                    label: "Maternity Leave",
                    value: 50
                },
                {
                    label: "Medical Leave",
                    value: 50

                }, {
                    label: "Casual Leave",
                    value: 50
                }, {
                    label: "Earned Leave",
                    value: 50
                }, {
                    label: "Optional Leave",
                    value: 50
                }, {
                    label: "Paternity Leave",
                    value: 50
                }, {
                    label: "Leave Without Pay",
                    value: 50
                }, {
                    label: "Unauthorized Absence",
                    value: 50
                }, {
                    label: "Present",
                    value: 50
                }, {
                    label: "Half Day",
                    value: 50
                }, {
                    label: "Child Care Leave",
                    value: 50
                }],
            resize: true,
            colors: ['#78416b', '#a8428c', '#e74171', '#e9463f', '#d26e22', '#fe7c00', '#fdc300', '#ffe500', '#8bbc00', '#3ba6a0', '#3d97d5', '#0094b0', '#e5afcf', '#b9dd73', '#abcff1', '#ffdc5a', '#ff9d94',]
        });

        // Leave Guest Staff Charts

        Morris.Donut({
            element: 'GuestFaculty_Chart',
            data: [
                {
                    label: "Casual Leave",
                    value: 50
                },
                {
                    label: "Medical Leave",
                    value: 50

                }, {
                    label: "Earned Leave",
                    value: 50
                }, {
                    label: "Optional Leave",
                    value: 50
                }, {
                    label: "Maternity Leave",
                    value: 50
                }, {
                    label: "Paternity Leave",
                    value: 50
                }, {
                    label: "Leave Without Pay",
                    value: 50
                }, {
                    label: "Unauthorized Absence",
                    value: 50
                }, {
                    label: "Present",
                    value: 50
                }, {
                    label: "Half Day",
                    value: 50
                }, {
                    label: "Child Care Leave",
                    value: 50
                }],
            resize: true,
            colors: ['#78416b', '#a8428c', '#e74171', '#e9463f', '#d26e22', '#fe7c00', '#fdc300', '#ffe500', '#8bbc00', '#3ba6a0', '#3d97d5', '#0094b0', '#e5afcf', '#b9dd73', '#abcff1', '#ffdc5a', '#ff9d94',]
        });


        // Leave Other Staff Charts

        Morris.Donut({
            element: 'OthersLave_Chart',
            data: [{
                label: "On Training",
                value: 50

            }, {
                label: "Attached",
                value: 50
            }, {
                label: "Office Duty",
                value: 50
            }, {
                label: "On Other Govt. Duty",
                value: 50
            }],
            resize: true,
            colors: ['#78416b', '#a8428c', '#e74171', '#e9463f', '#d26e22', '#fe7c00', '#fdc300', '#ffe500', '#8bbc00', '#3ba6a0', '#3d97d5', '#0094b0', '#e5afcf', '#b9dd73', '#abcff1', '#ffdc5a', '#ff9d94',]
        });


        //Tranfer Administrative / Teaching Staff
        Highcharts.chart('TransferAdmin', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 45
                }
            },
            title: {
                text: 'Employee/Staff Wise Transfer Details',
                align: 'left'
            },
            subtitle: {
                text: "(No's)",
                align: 'left'
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
                            color: 'white',
                            textOutline: 'none',
                            fontSize: '0.65rem', textAlign: 'center'
                        },
                    }

                }
            },
            series: [{
                name: 'Total Staff',
                data: [
                    ['Administrative Staff', 18],
                    ['Institutional Staff', 16],
                    ['Teaching Staff', 12]
                ]
            }]
        });



        // Tranfer Joined Staff
        Highcharts.chart('TransferJoinedStaff', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 45
                }
            },
            title: {
                text: 'Employee/Staff Wise Transfer Joining Details',
                align: 'left'
            },
            subtitle: {
                text: "(No's)",
                align: 'left'
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
                            color: 'white',
                            textOutline: 'none',
                            fontSize: '0.65rem', textAlign: 'center'
                        },


                    }

                }
            },
            series: [{
                name: 'Total Staff',
                data: [
                    ['Joined Staff', 16],
                    ['Awaited Joining', 16],
                    ['Not Joined', 12]


                ]
            }]
        });
        // Increment Graph
        Highcharts.chart('Increment_Graph', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 45
                }
            },
            title: {
                text: 'Employee/Staff wise Increment Details',
                align: 'left'
            },
            subtitle: {
                text: "(No's)",
                align: 'left'
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
                            color: 'white',
                            textOutline: 'none',
                            fontSize: '0.65rem',
                            textAlign: 'center'
                        },


                    }

                }
            },
            series: [{
                name: 'Total Staff',
                data: [
                    ['Administrative Staff', 16],
                    ['Institutional Staff', 11],
                    ['Teaching Staff', 12],
                    ['On-Hold Employees/ Staff', 10]


                ]
            }]
        });

        // Promotion Graph
        Highcharts.chart('Promotion_Graph', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 45
                }
            },
            title: {
                text: 'Employee/Staff Wise Promotion Details',
                align: 'left'
            },
            subtitle: {
                text: "(No's)",
                align: 'left'
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
                            color: 'white',
                            textOutline: 'none',
                            fontSize: '0.65rem', textAlign: 'center'
                        },


                    }

                }
            },
            series: [{
                name: 'Employee/Staff',
                data: [
                    ['Administrative Staff Promotions', 12],
                    ['Institutional Staff Promotions', 16],
                    ['Teaching Staff Promotions', 13],
                    ['Administrative Staff Awaited', 11],
                    ['Institutional Staff Awaited', 16],
                    ['Teaching Staff Awaited', 9]//,
                    //['Administrative Staff On Hold', 12],
                    //['Institutional Staff On Hold', 16],
                    //['Teaching Staff On Hold', 13]
                ]
            }]
        });
        // Non-Disciplinary  Graph
        Highcharts.chart('Non_Disciplinary_Chart', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 45
                }
            },
            title: {
                text: 'Disciplinary Details',
                align: 'left'
            },
            subtitle: {
                text: "(No's)",
                align: 'left'
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
                            color: 'white',
                            textOutline: 'none',
                            fontSize: '0.65rem', textAlign: 'center'
                        },


                    }

                }
            },
            series: [{
                name: 'Orders',
                data: [
                    ['Recovery Orders', 16],
                    ['Suspension Orders', 15],
                    ['Enquiry Orders', 17],
                    ['Panality Orders', 18]
                ]
            }]
        });

        // Retirement / Separtion Details Graph
        Highcharts.chart('Retirement_Graph', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 45
                }
            },
            title: {
                text: 'Retirement Details',
                align: 'left'
            },
            subtitle: {
                text: "(No's)",
                align: 'left'
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
                            color: 'white',
                            textOutline: 'none',
                            fontSize: '0.65rem', textAlign: 'center'
                        },


                    }

                }
            },
            series: [{
                name: 'Employees',
                data: [
                    ['Next 6 Months', 12],
                    ['Next 1 Year', 13],
                    ['Next 2 Year', 15],
                    ['Next 3 Year', 20],



                ]
            }]
        });

        // ACR Details Graph
        Highcharts.chart('ACR_Details_Graph', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 45,
                    beta: 0
                }
            },
            title: {
                text: 'ACR Details',
                align: 'left'
            },
            subtitle: {
                text: "(No's)",
                align: 'left'
            },
            accessibility: {
                announceNewData: {
                    enabled: true
                },
                point: {
                    valueSuffix: '%'
                }
            },
            colors: ['#1D1CE5', '#D36B00', '#5473a5', '#c08baa', '#b33b7a', '#cc99ff', '#ccccff', '#99ccff', '#ccffff', '#99ffcc'],

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
                    name: 'ACR Details',
                    colorByPoint: true,
                    data: [
                        {
                            name: 'Administrative Staff',
                            y: 18958,
                            drilldown: 'Administrative Staff'
                        },
                        {
                            name: 'Institutional Staff',
                            y: 6520,
                            drilldown: 'Institutional Staff'
                        },
                        {
                            name: 'Teaching Staff',
                            y: 251879,
                            drilldown: 'Teaching Staff'
                        }
                    ]
                }
            ],
            drilldown: {
                series: [
                    {
                        name: 'Administrative Staff',
                        id: 'Administrative Staff',
                        data: [
                            ['Filled', 16],
                            ['Approved', 12],
                            ['Not Filled', 12],
                            ['Not-Approved (Pending Approval)', 12]
                        ]
                    },
                    {
                        name: 'Institutional Staff',
                        id: 'Institutional Staff',
                        data: [
                            ['Filled', 16],
                            ['Approved', 12],
                            ['Not Filled', 12],
                            ['Not-Approved (Pending Approval)', 12]
                        ]
                    },
                    {
                        name: 'Teaching Staff',
                        id: 'Teaching Staff',
                        data: [
                            ['Filled', 16],
                            ['Approved', 12],
                            ['Not Filled', 12],
                            ['Not-Approved (Pending Approval)', 12]
                        ]
                    }

                ]
            }
        });

        // Payroll OIS Details Graph
        Highcharts.chart('Payroll_OISDetails_Graph', {
            chart: {
                type: 'column'
            },
            title: {
                text: 'OIS Wise Payroll Details',
                align: 'left'
            },
            xAxis: {
                categories: ['Office', 'Institute', 'School'],
                crosshair: false,
                accessibility: {
                    description: 'Total'
                }
            },
            yAxis: {

                title: {
                    text: "Payroll (No's)"
                },
                labels: {
                    formatter: function () {
                        return this.value;
                    }
                }
            },

            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0
                }
            },
            colors: [{
                linearGradient: { x1: 0, x2: 0, y1: 0, y2: 1 },
                stops: [
                    [0, 'rgba(255,0,0,0.3)'], // Start color
                    [1, 'rgba(255,0,0,0.9)']  // End color
                ]
            }, {
                linearGradient: { x1: 0, x2: 0, y1: 0, y2: 1 },
                stops: [
                    [0, 'rgba(0,0,255,0.3)'], // Start color
                    [1, 'rgba(0,0,255,0.9)']  // End color
                ]
            }],

            series: [
                {
                    name: 'Total Payroll',
                    data: [911, 1090, 122938]
                },
                {
                    name: 'Total Payroll Generated',
                    data: [903, 988, 110035]
                }
            ]
        });

        // Payroll Staff Details Graph
        Highcharts.chart('PropertyReturn_Graph', {
            chart: {
                type: 'column'
            },
            title: {
                text: 'Property Return Details',
                align: 'left'
            },
            xAxis: {
                categories: ['Administrative', 'Institutional', 'Teaching'],
                crosshair: true,
                accessibility: {
                    description: 'Total'
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: "Property Returns  (No's)"
                },

                labels: {
                    formatter: function () {
                        return this.value;
                    }
                },
                plotLines: [
                    {
                        value: 0,
                        width: 1,
                        color: '#808080'
                    }
                ]
            },
            colors: [{
                linearGradient: { x1: 0, x2: 0, y1: 0, y2: 1 },
                stops: [
                    [0, 'rgba(255,0,0,0.3)'], // Start color
                    [1, 'rgba(255,0,0,0.9)']  // End color
                ]
            }, {
                linearGradient: { x1: 0, x2: 0, y1: 0, y2: 1 },
                stops: [
                    [0, 'rgba(0,0,255,0.3)'], // Start color
                    [1, 'rgba(0,0,255,0.9)']  // End color
                ]
            }],

            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0
                }
            },
            series: [
                {
                    name: 'Total Property Return Staff',
                    data: [18958, 6520, 122938]
                },
                {
                    name: 'Total Property Returned',
                    data: [18905, 6511, 110035]
                }

            ]

        });



        // Teacher Staff Chart
        Highcharts.chart('TeacherStaff_Chart', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 0,
                    beta: 0
                }
            },
            title: {
                text: 'Teaching Staff Details',
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
                    name: 'Status of school with Zero Teacher Staff',
                    y: 122938,
                    drilldown: 'StatusofschoolwithZeroTeacherStaff'
                }, {
                    name: 'Status of schools with 1 to 5 Teacher Staffs',
                    y: 122938,
                    drilldown: 'Statusofschoolswith1to5TeacherStaff'
                }, {
                    name: 'Status of schools with 6 to 10 Teacher Staff',
                    y: 122938,
                    drilldown: 'Statusofschoolswith6to10TeacherStaff'
                }, {
                    name: 'Status of schools with 11 to 15 Teacher Staff',
                    y: 122938,
                    drilldown: 'Statusofschoolswith11to15TeacherStaff'
                }, {
                    name: 'Status of schools with 16 to 20 Teacher Staff',
                    y: 122938,
                    drilldown: 'Statusofschoolswith16to20TeacherStaff'
                }, {
                    name: 'Status of schools with 21 to 25 Teacher Staff',
                    y: 122938,
                    drilldown: 'Statusofschoolswith21to25TeacherStaff'
                }, {
                    name: 'Status of schools with 26 to 30 Teacher Staff',
                    y: 122938,
                    drilldown: 'Statusofschoolswith26to30TeacherStaff'
                }, {
                    name: 'Status of schools with 31 to 35 Teacher Staff',
                    y: 122938,
                    drilldown: 'Statusofschoolswith31to35TeacherStaff'
                }, {
                    name: 'Status of schools with 36 to 40 Teacher Staff',
                    y: 122938,
                    drilldown: 'Statusofschoolswith36to40TeacherStaff'
                }, {
                    name: 'Status of schools with Teacher Staff above 41',
                    y: 122938,
                    drilldown: 'StatusofschoolswithTeacherStaffabove41'
                }]
            }],
            drilldown: {

                series: [{
                    id: 'StatusofschoolwithZeroTeacherStaff',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: 'ZeroTeacherStaff_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: 'ZeroTeacherStaff_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: 'ZeroTeacherStaff_PrimaryMiddleSchool'
                    }]
                },
                {
                    id: 'Statusofschoolswith1to5Teacher Staff',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: '1to5TeacherStaff_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: '1to5TeacherStaff_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: '1to5TeacherStaff_PrimaryMiddleSchool'
                    }]
                }, {
                    id: 'Statusofschoolswith6to10Teacher Staff',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: '1to5TeacherStaff_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: '1to5TeacherStaff_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: '1to5TeacherStaff_PrimaryMiddleSchool'
                    }]
                }, {
                    id: 'Statusofschoolswith11to15Teacher Staff',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: '1to5TeacherStaff_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: '1to5TeacherStaff_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: '1to5TeacherStaff_PrimaryMiddleSchool'
                    }]
                }, {
                    id: 'Statusofschoolswith16to20Teacher Staff',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: '1to5TeacherStaff_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: '1to5TeacherStaff_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: '1to5TeacherStaff_PrimaryMiddleSchool'
                    }]
                }, {
                    id: 'Statusofschoolswith21to25Teacher Staff',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: '1to5TeacherStaff_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: '1to5TeacherStaff_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: '1to5TeacherStaff_PrimaryMiddleSchool'
                    }]
                }, {
                    id: 'Statusofschoolswith26to30Teacher Staff',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: '1to5TeacherStaff_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: '1to5TeacherStaff_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: '1to5TeacherStaff_PrimaryMiddleSchool'
                    }]
                }, {
                    id: 'Statusofschoolswith31to35Teacher Staff',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: '1to5TeacherStaff_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: '1to5TeacherStaff_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: '1to5TeacherStaff_PrimaryMiddleSchool'
                    }]
                }, {
                    id: 'Statusofschoolswith36to40Teacher Staff',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: '1to5TeacherStaff_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: '1to5TeacherStaff_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: '1to5TeacherStaff_PrimaryMiddleSchool'
                    }]
                }, {
                    id: 'Statusofschoolswithenrolmentabove41',
                    name: 'School',
                    data: [{
                        name: 'Primary School (1-5)',
                        y: 30,
                        drilldown: '1to5TeacherStaff_PrimarySchool'
                    }, {
                        name: 'Middle School (6-8)',
                        y: 20,
                        drilldown: '1to5TeacherStaff_MiddleSchool'
                    }, {
                        name: 'Primary + Middle (1-8)',
                        y: 20,
                        drilldown: '1to5TeacherStaff_PrimaryMiddleSchool'
                    }]
                }, {
                    id: 'ZeroTeacherStaff_PrimarySchool',
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

