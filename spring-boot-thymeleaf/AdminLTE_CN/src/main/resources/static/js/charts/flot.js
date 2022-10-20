$(function () {
    /*
     * Flot 交互图
     * -----------------------
     */
    // 我们在示例中使用内置数据源，通常数据会
    // 从服务器拉取
    var data        = [],
        totalPoints = 100

    function getRandomData() {

        if (data.length > 0) {
            data = data.slice(1)
        }

        // 随机数据
        while (data.length < totalPoints) {

            var prev = data.length > 0 ? data[data.length - 1] : 50,
                y    = prev + Math.random() * 10 - 5

            if (y < 0) {
                y = 0
            } else if (y > 100) {
                y = 100
            }

            data.push(y)
        }

        // 用 x值压缩生成 y值
        var res = []
        for (var i = 0; i < data.length; ++i) {
            res.push([i, data[i]])
        }

        return res
    }

    var interactive_plot = $.plot('#interactive', [
            {
                data: getRandomData(),
            }
        ],
        {
            grid: {
                borderColor: '#f3f3f3',
                borderWidth: 1,
                tickColor: '#f3f3f3'
            },
            series: {
                color: '#3c8dbc',
                lines: {
                    lineWidth: 2,
                    show: true,
                    fill: true,
                },
            },
            yaxis: {
                min: 0,
                max: 100,
                show: true
            },
            xaxis: {
                show: true
            }
        }
    )

    var updateInterval = 500 // 获取数据的时间为 x毫秒
    var realtime       = 'on' // 如果 == on 则每 x秒获取数据，否则停止获取
    function update() {

        interactive_plot.setData([getRandomData()])

        // 因为轴线不变，所以不需要调用 plot.setupGrid()
        interactive_plot.draw()
        if (realtime === 'on') {
            setTimeout(update, updateInterval)
        }
    }

    // 初始化时获取实时数据
    if (realtime === 'on') {
        update()
    }
    // 实时切换
    $('#realtime .btn').click(function () {
        if ($(this).data('toggle') === 'on') {
            realtime = 'on'
        }
        else {
            realtime = 'off'
        }
        update()
    })
    /*
     * 结束交互图
     */


    /*
     * 折线图
     * ----------
     */
    // 随机生成数据

    var sin = [],
        cos = []
    for (var i = 0; i < 14; i += 0.5) {
        sin.push([i, Math.sin(i)])
        cos.push([i, Math.cos(i)])
    }
    var line_data1 = {
        data : sin,
        color: '#3c8dbc'
    }
    var line_data2 = {
        data : cos,
        color: '#00c0ef'
    }
    $.plot('#line-chart', [line_data1, line_data2], {
        grid  : {
            hoverable  : true,
            borderColor: '#f3f3f3',
            borderWidth: 1,
            tickColor  : '#f3f3f3'
        },
        series: {
            shadowSize: 0,
            lines     : {
                show: true
            },
            points    : {
                show: true
            }
        },
        lines : {
            fill : false,
            color: ['#3c8dbc', '#f56954']
        },
        yaxis : {
            show: true
        },
        xaxis : {
            show: true
        }
    })
    // 初始化悬停时工具提示
    $('<div class="tooltip-inner" id="line-chart-tooltip"></div>').css({
        position: 'absolute',
        display : 'none',
        opacity : 0.8
    }).appendTo('body')
    $('#line-chart').bind('plothover', function (event, pos, item) {

        if (item) {
            var x = item.datapoint[0].toFixed(2),
                y = item.datapoint[1].toFixed(2)

            $('#line-chart-tooltip').html(item.series.label + ' of ' + x + ' = ' + y)
            .css({
                top : item.pageY + 5,
                left: item.pageX + 5
            })
            .fadeIn(200)
        } else {
            $('#line-chart-tooltip').hide()
        }

    })
    /* 结束折线图 */

    /*
     * 全幅静态区域图
     * -----------------
     */
    var areaData = [[2, 88.0], [3, 93.3], [4, 102.0], [5, 108.5], [6, 115.7], [7, 115.6], [8, 124.6], [9, 130.3], [10, 134.3], [11, 141.4], [12, 146.5], [13, 151.7], [14, 159.9], [15, 165.4], [16, 167.8], [17, 168.7], [18, 169.5], [19, 168.0]]
    $.plot('#area-chart', [areaData], {
        grid  : {
            borderWidth: 0
        },
        series: {
            shadowSize: 0, // 绘图速度更快，没有阴影
            color     : '#00c0ef',
            lines : {
                fill: true //折线图转换为区域图
            },
        },
        yaxis : {
            show: false
        },
        xaxis : {
            show: false
        }
    })

    /* 结束区域图 */

    /*
     * 条形图
     * ---------
     */

    var bar_data = {
        data : [[1,10], [2,8], [3,4], [4,13], [5,17], [6,9]],
        bars: { show: true }
    }
    $.plot('#bar-chart', [bar_data], {
        grid  : {
            borderWidth: 1,
            borderColor: '#f3f3f3',
            tickColor  : '#f3f3f3'
        },
        series: {
            bars: {
                show: true, barWidth: 0.5, align: 'center',
            },
        },
        colors: ['#3c8dbc'],
        xaxis : {
            ticks: [[1,'一月'], [2,'二月'], [3,'三月'], [4,'四月'], [5,'五月'], [6,'六月']]
        }
    })
    /* 结束条形图 */

    /*
     * 环形图
     * -----------
     */

    var donutData = [
        {
            label: '系列2',
            data : 30,
            color: '#3c8dbc'
        },
        {
            label: '系列3',
            data : 20,
            color: '#0073b7'
        },
        {
            label: '系列4',
            data : 50,
            color: '#00c0ef'
        }
    ]
    $.plot('#donut-chart', donutData, {
        series: {
            pie: {
                show       : true,
                radius     : 1,
                innerRadius: 0.5,
                label      : {
                    show     : true,
                    radius   : 2 / 3,
                    formatter: labelFormatter,
                    threshold: 0.1
                }

            }
        },
        legend: {
            show: false
        }
    })
    /*
     * 结束环形图
     */

})

/*
 * 自定义标签格式
 * ----------------------
 */
function labelFormatter(label, series) {
    return '<div style="font-size:13px; text-align:center; padding:2px; color: #fff; font-weight: 600;">'
        + label
        + '<br>'
        + Math.round(series.percent) + '%</div>'
}
