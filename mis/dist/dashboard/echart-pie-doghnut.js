$(function () {
    "use strict";

    // ------------------------------
    // Nested chart
    // ------------------------------
    // based on prepared DOM, initialize echarts instance
    var nestedChart = echarts.init(document.getElementById('nested-pie'));
    var option = {

        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },

        //// Add legend
        //legend: {
        //    orient: 'vertical',
        //    x: 'left',
        //    data: ['Leave Process', 'Transfer', 'Promotion', 'Retirement / Separation', 'Verification', 'Increment', 'e-Service Book', 'Annual Confidential Report (ACR)']
        //},

        // Add custom colors
        color: ['#689f38', '#38649f', '#389f99', '#ee1044', '#ff8f00'],

        // Display toolbox
        toolbox: {
            show: true,
            orient: 'vertical',
            feature: {
                mark: {
                    show: true,
                    title: {
                        mark: 'Markline switch',
                        markUndo: 'Undo markline',
                        markClear: 'Clear markline'
                    }
                },
                dataView: {
                    show: true,
                    readOnly: true,
                    title: 'View data',
                    lang: ['View chart data', 'Close', 'Update']
                },
                magicType: {
                    show: true,
                    title: {
                        pie: 'Switch to pies',
                        funnel: 'Switch to funnel',
                    },
                    type: ['pie', 'funnel']
                },
                restore: {
                    show: true,
                    title: 'Restore'
                },
                saveAsImage: {
                    show: true,
                    title: 'Same as image',
                    lang: ['Save']
                }
            }
        },

        // Enable drag recalculate
        calculable: false,

        // Add series
        series: [

            // Inner
            {
                name: 'HRMS',
                type: 'pie',
                selectedMode: 'single',
                radius: [0, '40%'],

                // for funnel
                x: '15%',
                y: '7.5%',
                width: '40%',
                height: '85%',
                funnelAlign: 'right',
                max: 1548,

                itemStyle: {
                    normal: {
                        label: {
                            position: 'inner'
                        },
                        labelLine: {
                            show: false
                        }
                    },
                    emphasis: {
                        label: {
                            show: true
                        }
                    }
                },

                data: [
                    { value: 535, name: 'HRMS' },
                    { value: 679, name: 'Payroll' },
                    { value: 1548, name: 'School \n Directory' }
                ]
            },

            // Outer
            {
                name: 'HRMS',
                type: 'pie',
                radius: ['60%', '85%'],

                // for funnel
                x: '55%',
                y: '7.5%',
                width: '35%',
                height: '85%',
                funnelAlign: 'left',
                max: 1048,

                data: [
                    { value: 335, name: 'Leave Process' },
                    { value: 310, name: 'Transfer' },
                    { value: 234, name: 'Promotion' },
                    { value: 135, name: 'Retirement / Separation' },
                    { value: 1048, name: 'Verification' },
                    { value: 251, name: 'Increment' },
                    { value: 147, name: 'e-Service Book' },
                    { value: 102, name: 'Annual Confidential Report (ACR)' }
                ]
            }
        ]
    };


    nestedChart.setOption(option);

    // ------------------------------
    // nightingale chart
    // ------------------------------
    // based on prepared DOM, initialize echarts instance
    var nightingaleChart = echarts.init(document.getElementById('nightingale-chart'));
    var option = {
        //title: {
        //    text: 'Payroll',
        //    subtext: 'HRMS',
        //    x: 'center'
        //},

        // Add tooltip
        tooltip: {
            trigger: 'item',
            //formatter: "{a} <br/>{b}: +{c}$ ({d}%)"
        },

        // Add legend
        legend: {
            x: 'left',
            y: 'top',
            orient: 'horizontal',
            data: ['Generated Transfer Order', 'Joined Staff', 'Awaited Joining', 'Not Joined Staff']
        },
        

        color: ['#689f38', '#ee1044', '#38649f', '#389f99'],

        toolbox: {
            show: true,
            orient: 'vertical',
            feature: {
                mark: {
                    show: true,
                    title: {
                        mark: 'Markline switch',
                        markUndo: 'Undo markline',
                        markClear: 'Clear markline'
                    }
                },
                dataView: {
                    show: true,
                    readOnly: true,
                    title: 'View data',
                    lang: ['View chart data', 'Close', 'Update']
                },
                magicType: {
                    show: true,
                    title: {
                        pie: 'Switch to pies',
                        funnel: 'Switch to funnel',
                    },
                    type: ['pie', 'funnel']
                },
                restore: {
                    show: true,
                    title: 'Restore'
                },
                saveAsImage: {
                    show: true,
                    title: 'Same as image',
                    lang: ['Save']
                }
            }
        },

        // Enable drag recalculate
        calculable: true,

        // Add series
        series: [
            {
                name: 'Transfer',
                type: 'pie',
                radius: ['15%', '73%'],
                center: ['50%', '57%'],
                roseType: 'area',

                // Funnel
                width: '40%',
                height: '78%',
                x: '30%',
                y: '17.5%',
                max: 450,
                sort: 'ascending',

                data: [
                    { value: 9850, name: 'Generated Transfer Order' },
                    { value: 5958, name: 'Joined Staff' },
                    { value: 3455, name: 'Awaited Joining' },
                    { value: 437, name: 'Not Joined Staff' }
                ]
            }
        ]
    };
    nightingaleChart.setOption(option);


    //------------------------------------------------------
    // Resize chart on menu width change and window resize
    //------------------------------------------------------
    $(function () {

        // Resize chart on menu width change and window resize
        $(window).on('resize', resize);
        $(".sidebartoggler").on('click', resize);

        // Resize function
        function resize() {
            setTimeout(function () {

                // Resize chart

                nestedChart.resize();
                poleChart.resize();
            }, 200);
        }
    });
});





