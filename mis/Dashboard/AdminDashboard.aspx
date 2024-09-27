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
            background-color: var(--vz-primary);
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
            background-color: var(--vz-primary);
            background-image: url(../assets/images/svg/CardHeader.svg);
        }

        .crm-widget .card-header-border {
            border-top: 0.5rem solid var(--vz-primary);
            border-radius: 25px 25px 0 0 !important;
            height: 30px;
        }

        .card-footer-border {
            border-bottom: 0.5rem solid var(--vz-primary);
            border-radius: 0 0 25px 25px !important;
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
                        pointWidth: 50,
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
                    format: ' <span class="fw-bold fs-14">Students: {point.y} </span>',
                },
                pointWidth: 50,
                tooltip: {
                    headerFormat: '',
                    pointFormatter: function () {
                        return '<span class=" fs-13"><b >' + this.name + '</b><br/>Total Students: <b>' + this.y + '</b><br>' +
                            'Boys: <b>' + (this.y - this.z) + '</b><br>' +
                            'Girls: <b>' + this.z + '</b><br></span>';
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
