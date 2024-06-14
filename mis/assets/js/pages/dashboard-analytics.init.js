function getChartColorsArray(e) {
    if (null !== document.getElementById(e)) {
        var t = "data-colors" + ("-" + document.documentElement.getAttribute("data-theme") ?? ""), t = document.getElementById(e).getAttribute(t) ?? document.getElementById(e).getAttribute("data-colors"); if (t) return (t = JSON.parse(t)).map(function (e) { var t = e.replace(" ", ""); return -1 === t.indexOf(",") ? getComputedStyle(document.documentElement).getPropertyValue(t) || t : 2 == (e = e.split(",")).length ? "rgba(" + getComputedStyle(document.documentElement).getPropertyValue(e[0]) + "," + e[1] + ")" : t }); console.warn("data-colors attributes not found on", e)
    }
} var worldemapmarkers = "", countriesChart = "", audiencesSessionsCountryChart = "", audiencesMetricsCharts = "", userDevicePieCharts = "";
function loadCharts() {
    var e = getChartColorsArray("users-by-country"); e && (document.getElementById("users-by-country").innerHTML = "", worldlinemap = "",
        worldlinemap = new jsVectorMap({
            map: "world_merc", selector: "#users-by-country", zoomOnScroll: !1, zoomButtons: !1, markers: [{ name: "Greenland", coords: [72, -42] },
            { name: "Canada", coords: [56.1304, -106.3468] }, { name: "Brazil", coords: [-14.235, -51.9253] }, { name: "Egypt", coords: [26.8206, 30.8025] },
            { name: "Russia", coords: [61, 105] }, { name: "China", coords: [35.8617, 104.1954] }, { name: "United States", coords: [37.0902, -95.7129] },
            { name: "Norway", coords: [60.472024, 8.468946] }, { name: "Ukraine", coords: [48.379433, 31.16558] }], lines: [{ from: "Canada", to: "Egypt" },
            { from: "Russia", to: "Egypt" }, { from: "Greenland", to: "Egypt" }, { from: "Brazil", to: "Egypt" }, { from: "United States", to: "Egypt" },
            { from: "China", to: "Egypt" }, { from: "Norway", to: "Egypt" }, { from: "Ukraine", to: "Egypt" }],
            regionStyle: { initial: { stroke: "#9599ad", strokeWidth: .25, fill: e, fillOpacity: 1 } }, lineStyle: { animation: !0, strokeDasharray: "6 3 6" }
        }));


    if (e = getChartColorsArray("countries_charts")) {
        const r = {
            series: [{
                data: [33.09, 79.20, 21.57, 34.55, 45.95, 68.45, 30.56, 44.84], name: "Total Sanctioned Amount"
            }],
            chart: { type: "bar", height: 436, toolbar: { show: !1 } },

            plotOptions: { bar: { borderRadius: 4, horizontal: !0, distributed: !0, dataLabels: { position: "top" } } }
            , colors: e, dataLabels: {
                enabled: !0, offsetX: 32,
                style: { fontSize: "12px", fontWeight: 600, colors: ["#fff"] }
                ,
            }, legend: { show: !1 }, grid: { show: !1 },
            xaxis: {
                categories: ["सामान्य निर्धन वर्ग छात्रवृत्ति योजना", "राज्य शासन अनु. जनजाति छात्रवृत्ति", "निःशक्तजन छात्रवृत्ति योजना",
                    "राज्य शासन पिछड़ा वर्ग छात्रवृत्ति", "अनु.जाति कन्या साक्षरता प्रोत्साहन योजना", "अनु. जन जाति कन्या साक्षरता प्रोत्साहन योजना", "प्री मेट्रिक", "सैनिटरी पैड"]
            },
            yaxis: {
                labels: {
                    formatter: function (e) { return " &nbsp&nbsp " + e + "M" },

                }
            }
        };



        "" != countriesChart && countriesChart.destroy(), (countriesChart = new ApexCharts(document.querySelector("#countries_charts"), r)).render()
    } function t(e, t) {
        for (var r = 0, a = []; r < e;) {
            var o = (r + 1).toString() + "h",
            s = Math.floor(Math.random() * (t.max - t.min + 1)) + t.min; a.push({ x: o, y: s }), r++
        } return a
    } (e = getChartColorsArray("audiences_metrics_charts")) &&
        (e = {
            series: [{ name: "Total Upcoming Retirements", data: [105, 38, 22, 48, 98, 34, 15, 68, 110, 98, 78, 140] },
            { name: "Total Retired", data: [70, 38, 22, 15, 15, 7, 6, 12, 7, 45, 9, 5] }],
            chart: { type: "bar", height: 309, stacked: !0, toolbar: { show: !1 } },
            plotOptions: { bar: { horizontal: !1, columnWidth: "20%", borderRadius: 6 } },
            dataLabels: { enabled: !1 }, legend: {
                show: !0, position: "bottom", horizontalAlign: "center", fontWeight: 400, fontSize: "8px", offsetX: 0, offsetY: 0,
                markers: { width: 9, height: 9, radius: 4 }
            }, stroke: { show: !0, width: 2, colors: ["transparent"] }, grid: { show: !1 }, colors: e,
            xaxis: {
                categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                axisTicks: { show: !1 }, axisBorder: { show: !0, strokeDashArray: 1, height: 1, width: "100%", offsetX: 0, offsetY: 0 }
            }, yaxis: { show: !1 }, fill: { opacity: 1 }
        },


            "" != audiencesMetricsCharts && audiencesMetricsCharts.destroy(),
            (audiencesMetricsCharts = new ApexCharts(document.querySelector("#audiences_metrics_charts"), e)).render());
    var r; (e = getChartColorsArray("audiences-sessions-country-charts")) && (r = {
        series: [
            { name: "Sat", data: t(18, { min: 0, max: 90 }) },
            { name: "Fri", data: t(18, { min: 0, max: 90 }) },
            { name: "Thu", data: t(18, { min: 0, max: 90 }) },
            { name: "Wed", data: t(18, { min: 0, max: 90 }) },
            { name: "Tue", data: t(18, { min: 0, max: 90 }) },
            { name: "Mon", data: t(18, { min: 0, max: 90 }) },
            { name: "Sun", data: t(18, { min: 0, max: 90 }) }],
        chart: { height: 400, type: "heatmap", offsetX: 0, offsetY: -8, toolbar: { show: !1 } },
        plotOptions: { heatmap: { colorScale: { ranges: [{ from: 0, to: 50, color: e[0] }, { from: 51, to: 100, color: e[1] }] } } },
        dataLabels: { enabled: !1 }, legend: {
            show: !0, horizontalAlign: "center", offsetX: 0, offsetY: 20, markers: { width: 20, height: 6, radius: 2 },
            itemMargin: { horizontal: 12, vertical: 0 }
        }, colors: e, tooltip: { y: [{ formatter: function (e) { return void 0 !== e ? e.toFixed(0) + "k" : e } }] }
    },


        "" != audiencesSessionsCountryChart && audiencesSessionsCountryChart.destroy(),
        (audiencesSessionsCountryChart = new ApexCharts(document.querySelector("#audiences-sessions-country-charts"), r)).render());



    (e = getChartColorsArray("user_device_pie_charts")) && (r = {
        series: [854, 505], labels: ["Total Joined", "Pending For Joining"],
        chart: { type: "donut", height: 219 }, plotOptions: { pie: { size: 100, donut: { size: "76%" } } }, dataLabels: { enabled: !1 },
        legend: {
            show: !1, position: "bottom", horizontalAlign: "center", offsetX: 0, offsetY: 0, markers: { width: 20, height: 6, radius: 2 },
            itemMargin: { horizontal: 12, vertical: 0 }
        }, stroke: { width: 0 }, yaxis: { labels: { formatter: function (e) { return e + " Employees" } }, tickAmount: 4, min: 0 }, colors: e
    }, "" != userDevicePieCharts && userDevicePieCharts.destroy(), (userDevicePieCharts = new ApexCharts(document.querySelector("#user_device_pie_charts"), r)).render())

} window.onresize = function () { setTimeout(() => { loadCharts() }, 0) }, loadCharts();