<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeDashBoard.aspx.cs" Inherits="mis_Dashboard_EmployeeDashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

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

        .container {
            width: 200px;
            height: 200px;
            border: 1px solid #ccc;
            overflow: hidden;
        }

        .content {
            padding: 10px;
            overflow-y: auto;
            height: 100%;
            animation: scrollAnimation 0.1s linear infinite;
        }

        @keyframes scrollAnimation {
            0% {
                transform: translateY(0);
            }

            100% {
                transform: translateY(calc(-100% + 200px)); /* Adjust 200px according to your container height */
            }
        }

        p {
            margin: 0;
            padding: 5px 0;
            border-bottom: 1px solid #eee;
        }

            p:last-child {
                border-bottom: none;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0">Employee Dashboard</h4>

                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item"><a href="#sidebarDashboards" data-bs-toggle="collapse" role="button">Dashboards</a></li>
                        <li class="breadcrumb-item active">Employee DashBoard</li>
                    </ol>
                </div>

            </div>
        </div>
    </div>
    <div class="container-fluid p-0 ">
        <div class="row justify-content-center">
            <div class="col-lg-12 col-sm-12 col-md-12">
                <div class="single_element">
                    <div class="quick_activity">
                        <div class="row justify-content-center">
                            <div class="col-lg-3">
                                <a href="#StudentDetails">
                                    <div class="card-wrap">
                                        <div class="card-header card-header1 one">
                                            <h4 class="">Total Students
                                            </h4>
                                        </div>
                                        <div class="card-content">
                                            <span class="card-btn one counter">320</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-3">
                                <a href="#TeacherDetail">
                                    <div class="card-wrap">
                                        <div class="card-header card-header1 three">
                                            <h4 class="">Total Teachers
                                            </h4>
                                        </div>
                                        <div class="card-content">
                                            <span class="card-btn one counter">13</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-3">
                                <a href="#LeaveDetail">
                                    <div class="card-wrap">
                                        <div class="card-header card-header1 five">
                                            <h4 class="">Total Leave
                                            </h4>
                                        </div>
                                        <div class="card-content">
                                            <span type="button" class="card-btn five counter">12</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-3">
                                <div class="card-wrap">
                                    <div class="card-header card-header1 two">
                                        <h4 class="">Remaning Leave</h4>
                                    </div>
                                    <div class="card-content">
                                        <button class="card-btn two counter">6</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr />
            <div class="col-lg-6 col-md-12 col-sm-12">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="card">
                            <div class="card-header card-border-info">
                            </div>
                            <div class="card-body">
                                <div id=""></div>
                                <div class="col-md-12">
                                    <div class="employe" style="margin-top: -20px; margin-bottom: 20px; text-align: center; height: 300px; margin-bottom: 20px;">
                                        <div class="employhead" style="padding: 8px; font-size: 16px; font-family: sans-serif; font-weight: bold; background: linear-gradient(to bottom right, #f52929 -9%, #fba700d1 66%); color: White; text-align: left; border-radius: 5px;">
                                            <center>Important Information</center>
                                            <i class="fa fa-newspaper-o" aria-hidden="true" style="float: right; color: White; font-size: 23px;"></i>
                                        </div>
                                        <div id="News" style="font-size: 18px; font-weight: bold; text-align: left; padding: 14px;">
                                            <ul id="dvcircular1" class="ticker1" style="padding: 5px;">
                                                <li class="buttons">
                                                    <a href="#" title="Shikshak Samadhan">शिक्षक
                                                    शिकायत समाधान</a>
                                                </li>
                                                <li class="buttons">
                                                    <a href="#" title="Teachers Training">शिक्षक प्रशिक्षण</a>
                                                </li>
                                                <li class="buttons">
                                                    <a href="#" title="Teachers Opportunity">अवसर</a>
                                                </li>
                                                <li class="buttons">
                                                    <a href="#" title="School Edcuation Related Schemes For Teachers">शिक्षक-योजनाएं</a>
                                                </li>
                                            </ul>
                                            <script type="text/javascript">
                                                function ticker1() {
                                                    $('#dvcircular1 li:first').slideUp(function () {
                                                        $(this).appendTo($('#dvcircular1')).slideDown();
                                                    });
                                                }
                                                setInterval(function () { ticker1(); }, 2500);
                                            </script>
                                        </div>
                                    </div>
                                    <div style="text-align: right; margin-top: -43px; padding-right: 10px; font-weight: bold;">
                                        <a href="/Portal/Public/AllNews.aspx" style="text-decoration: none; color: white; font-size: 13px;">Search /View All</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12 ">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="card">
                            <div class="card-header card-border-info">
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div class="col-md-12">
                                            <div class="employe" style="margin-top: -20px; margin-bottom: 20px; text-align: center; height: 300px; margin-bottom: 20px;">
                                                <div class="employhead" style="padding: 8px; font-size: 16px; font-family: sans-serif; font-weight: bold; background: linear-gradient(to bottom right, #f52929 -9%, #fba700d1 66%); color: White; text-align: left; border-radius: 5px;">
                                                    <center>Latest News </center>
                                                    <i class="fa fa-newspaper-o" aria-hidden="true" style="float: right; color: White; font-size: 23px;"></i>
                                                </div>
                                                <div id="News1" style="font-size: 16px; font-weight: bold; text-align: left; padding: 14px;">
                                                    <div id="dvcircular12" class="ticker" style="padding: 5px;">
                                                        <ul id="dlNews1" cellspacing="0" border="0" style="border-collapse: collapse;">
                                                            <li>
                                                                <a id="dlNews_ctl00_HyperLink_Sub" href="#">माध्यमिक शिक्षा मंडल - कक्षा १० वीं एवं १२ वीं के आवेदन में ३१ इस त्रुटि सुधार का अवसर / विषयों में गलती सही करा सकेंगे विद्यार्थी - न्यूज़ दीपक हलवे ,प्राचार्य , शासकीय अहिल्याश्रम कन्या उमावि क्रमांक २ इंदौर - </a>
                                                            </li>

                                                            <li>
                                                                <a id="dlNews_ctl01_HyperLink_Sub" href="#">(१) इंदौर - शासकीय संयोगितागंज उमावि  बालक उमावि इंदौर - जिस स्कूल में  कभी पढ़े थे जॉनी वाकर , उस स्कूल को संवारेगा अब  नगर निगम इंदौर (२) कामकाज के लिए पलायन - सबसे  ज्यादा लोग भारत  से गए / अमेरिका पहला ठिकाना (३) माध्यमिक शिक्षा मंडल हेल्प लाइन - बीते साल में  एक लाख सैंतीस हजार कॉल आये   - न्यूज़ दीपक हलवे ,प्राचार्य , शासकीय हाई स्कूल ,बालौदा टाकून , इंदौर - </a>
                                                            </li>
                                                            <li>
                                                                <a id="dlNews_ctl02_HyperLink_Sub" href="#">(१) सरकारी सुविधा नहीं मिली तो स्टाफ और ग्रामीणों ने ही मिलकर स्कूल को संवार दिया (२) कैरियर काउंसलिंग - पोर्टल  से छात्रों को कॅरियर चुनने को मदद मिलेगी (३) अनुभूति कार्यक्रम अंतर्गत विद्यार्थियों को कराया वन भ्रमण   - न्यूज़ दीपक हलवे ,प्राचार्य , शासकीय हाई स्कूल ,बालौदा टाकून , इंदौर - </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <script type="text/javascript">
                                                        function ticker() {
                                                            $('#dvcircular12 li:first').slideUp(function () {
                                                                $(this).appendTo($('#dvcircular12')).slideDown();
                                                            });
                                                        }
                                                        setInterval(function () { ticker(); }, 3500);

                                                    </script>
                                                </div>
                                            </div>
                                            <div style="text-align: right; margin-top: -43px; padding-right: 10px; font-weight: bold;">
                                                <a href="/Portal/Public/AllNews.aspx" style="text-decoration: none; color: white; font-size: 13px;">Search /View All</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12 " id="StudentDetails">
                <div class="row justify-content-center">
                    <div class="section-title">
                        <h2>Student Details</h2>
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="card">
                            <div class="card-header card-border-info">
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <figure class="highcharts-figure">
                                            <div id="container2"></div>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12 ">
                <div class="row">
                    <div class="section-title">
                        <h2>Students Gender-Wise</h2>
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="card">
                            <div class="card-header card-border-info">
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <figure class="highcharts-figure">
                                            <div id="GenderWiseStudent"></div>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12 " id="TeacherDetail">
                <div class="row">
                    <div class="section-title">
                        <h2>Teacher Detail</h2>
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="card" data-aos="zoom-in-right" data-aos-duration="1500">
                            <div class="card-header card-border-info">
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <figure class="highcharts-figure">
                                            <div id="Teacher"></div>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12 " id="LeaveDetail">
                <div class="row">
                    <div class="section-title">
                        <h2>Leave Detail</h2>
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="card" data-aos="zoom-in-right" data-aos-duration="1500">
                            <div class="card-header card-border-info">
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <figure class="highcharts-figure">
                                            <div id="containerLeave"></div>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-10 col-md-12 col-sm-12 ">
                <div class="row">
                    <div class="section-title">
                        <h2>Increment Detail</h2>
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="card" data-aos="zoom-in-right" data-aos-duration="1500">
                            <div class="card-header card-border-info">
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <figure class="highcharts-figure">
                                            <div id="container"></div>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script src="../dist/js/highcharts/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/drilldown.js"></script>

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

        Highcharts.chart('Teacher', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 45
                }
            },
            title: {
                text: 'Subject Wise Teachers',
                align: 'left'
            },

            plotOptions: {
                pie: {
                    innerSize: 100,
                    depth: 45
                }
            },
            series: [{
                name: 'Count',
                data: [
                    ['English', 2],
                    ['Hindi', 1],
                    ['Mathematics', 2],
                    ['Sanskrit', 1],
                    ['Social Science', 2],
                    ['Science', 2],
                    ['KG-1,KG-2,UKG', 3],


                ]
            }]
        });




        Highcharts.chart('GenderWiseStudent', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 45,
                    beta: 0
                }
            },
            title: {
                text: 'Students Gender-Wise',
                align: 'left'
            },

            accessibility: {
                point: {
                    valueSuffix: '%'
                }
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b> '
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    depth: 35,
                    dataLabels: {
                        enabled: true,
                        format: '{point.name}'
                    }
                }
            },
            series: [{
                type: 'pie',
                name: 'Share',


                data: [


                    {
                        name: 'Female',
                        y: 19.73,
                        sliced: true,
                        selected: true
                    },


                    ['Male', 25.11],


                ]
            }]
        });


        var classNumbers = {
            'Class-1': { total: 80, boys: 20, girls: 60 },
            'Class-2': { total: 85, boys: 25, girls: 60 },
            'Class-3': { total: 90, boys: 30, girls: 60 },
            'Class-4': { total: 85, boys: 25, girls: 60 },
            'Class-5': { total: 95, boys: 35, girls: 60 },
            'Class-6': { total: 100, boys: 40, girls: 60 },
            'Class-7': { total: 80, boys: 20, girls: 60 },
            'Class-8': { total: 75, boys: 15, girls: 60 },
            'Class-9': { total: 70, boys: 10, girls: 60 },
            'Class-10': { total: 65, boys: 5, girls: 60 },
            'Class-11': { total: 60, boys: 2, girls: 58 },
            'Class-12': { total: 55, boys: 1, girls: 54 }
        };

        var series = Object.keys(classNumbers).map(function (className) {
            return {
                name: className,
                y: classNumbers[className].total,
                drilldown: className
            };
        });

        var drilldown = Object.keys(classNumbers).map(function (className) {
            return {
                name: className,
                id: className,
                data: [{
                    name: 'Boys',
                    y: classNumbers[className].boys,
                    drilldown: className + '-Boys'
                }, {
                    name: 'Girls',
                    y: classNumbers[className].girls,
                    drilldown: className + '-Girls'
                }]
            };
        });

        var casteCategories = ['General', 'OBC', 'SC', 'ST',]; // Separate SC and ST categories

        var boysDrilldown = Object.keys(classNumbers).map(function (className) {
            var boysDistribution = calculateDistribution(classNumbers[className].boys, casteCategories.length);
            return {
                name: className + '-Boys',
                id: className + '-Boys',
                data: casteCategories.map(function (caste, index) {
                    return {
                        name: caste,
                        y: caste === 'SC' || caste === 'ST' ? boysDistribution[index] / 2 : boysDistribution[index]
                    };
                })
            };
        });

        var girlsDrilldown = Object.keys(classNumbers).map(function (className) {
            var girlsDistribution = calculateDistribution(classNumbers[className].girls, casteCategories.length);
            return {
                name: className + '-Girls',
                id: className + '-Girls',
                data: casteCategories.map(function (caste, index) {
                    return {
                        name: caste,
                        y: caste === 'SC' || caste === 'ST' ? girlsDistribution[index] / 2 : girlsDistribution[index]
                    };
                })
            };
        });

        function calculateDistribution(total, categories) {
            var distribution = [];
            var remainder = total % categories;
            var base = Math.floor(total / categories);

            for (var i = 0; i < categories; i++) {
                distribution.push(base);
            }

            for (var j = 0; j < remainder; j++) {
                distribution[j]++;
            }

            return distribution;
        }

        var chart = Highcharts.chart('container2', {
            chart: {
                type: 'column'
            },
            title: {
                align: 'left',
                text: 'Class Wise Student'
            },
            xAxis: {
                type: 'category'
            },
            yAxis: {
                title: {
                    text: 'Total Students'
                }
            },
            legend: {
                enabled: false
            },
            plotOptions: {
                series: {
                    borderWidth: 0,
                    dataLabels: {
                        enabled: true,

                    }
                }
            },
            tooltip: {
                headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}</b> of total<br/>'
            },
            series: [{
                name: 'Total Students',
                colorByPoint: true,
                data: series
            }],
            drilldown: {
                series: drilldown.concat(boysDrilldown).concat(girlsDrilldown)
            }
        });
    </script>

    <script>
        Highcharts.chart('container', {
            chart: {
                type: 'column'
            },
            title: {
                align: 'left',
                text: 'Increment Detail'
            },

            accessibility: {
                announceNewData: {
                    enabled: true
                }
            },
            xAxis: {
                type: 'category'
            },
            yAxis: {
                title: {
                    text: 'Total percent Increment'
                }
            },
            legend: {
                enabled: false
            },
            plotOptions: {
                series: {
                    borderWidth: 0,
                    dataLabels: {
                        enabled: true,
                        format: '{point.y:.1f}%'
                    }
                }
            },

            tooltip: {
                headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>'
            },

            series: [
                {
                    name: 'Increment',
                    colorByPoint: true,
                    data: [
                        {
                            name: '2020',
                            y: 6,
                            drilldown: '2020'
                        },
                        {
                            name: '2021',
                            y: 3,
                            drilldown: '2021'
                        },
                        {
                            name: '2022',
                            y: 0,
                            drilldown: '2022'
                        },
                        {
                            name: '2023',
                            y: 6,
                            drilldown: '2023'
                        },
                        {
                            name: '2024',
                            y: 3,
                            drilldown: '2024'
                        },

                    ]
                }
            ],

        });

        Highcharts.chart('containerLeave', {
            chart: {
                type: 'column'
            },
            title: {
                align: 'left',
                text: 'Current Year Leave Detail'
            },

            accessibility: {
                announceNewData: {
                    enabled: true
                }
            },
            xAxis: {
                type: 'category'
            },
            yAxis: {
                title: {
                    text: 'Total Leave'
                }

            },
            legend: {
                enabled: false
            },
            plotOptions: {
                series: {
                    borderWidth: 0,
                    dataLabels: {
                        enabled: true,
                        format: '{point.y:.1f}'
                    }
                }
            },

            tooltip: {
                headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}</b> of total<br/>'
            },

            series: [
                {
                    name: 'Leave',
                    colorByPoint: true,
                    data: [
                        {
                            name: 'January',
                            y: 2,
                            drilldown: 'January'
                        },
                        {
                            name: 'Feburary',
                            y: 0,
                            drilldown: 'Feburary'
                        },
                        {
                            name: 'March',
                            y: 1,
                            drilldown: 'March'
                        },
                        {
                            name: 'April',
                            y: 0,
                            drilldown: 'April'
                        },
                        {
                            name: 'May',
                            y: 0,
                            drilldown: 'May'
                        },
                        {
                            name: 'June',
                            y: 1,
                            drilldown: 'June'
                        },
                        {
                            name: 'July',
                            y: 0,
                            drilldown: 'July'
                        },
                        {
                            name: 'August',
                            y: 0,
                            drilldown: 'August'
                        },
                        {
                            name: 'September',
                            y: 0,
                            drilldown: 'September'
                        },
                        {
                            name: 'October',
                            y: 1,
                            drilldown: 'October'
                        },
                        {
                            name: 'November',
                            y: 0,
                            drilldown: 'November'
                        },
                        {
                            name: 'December',
                            y: 1,
                            drilldown: 'December'
                        },
                    ]
                }
            ],

        });


    </script>
</asp:Content>

