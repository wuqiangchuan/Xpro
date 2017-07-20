<!DOCTYPE html>    
<html>    
<head>    
    <meta charset="utf-8">    
    <title>ECharts</title>    
    <!-- 引入 echarts.js -->    
    <script src="/static/js/jquery-1.10.2.min.js"></script>    
    <script type="text/javascript" src="/static/js/echarts.common.min.js" ></script>  
</head>    
<body>    
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->    
    <div id="main" style="width: 600px;height:400px;"></div>    
    <script type="text/javascript">    
        // 基于准备好的dom，初始化echarts实例    
        var myChart = echarts.init(document.getElementById('main'));//定义折线图显示的位置对象  
        function randomData() {    
            now = new Date(+now + oneDay);    
            value = value + Math.random() * 21 - 10;    
            return {    
                name: now.toString(),    
                  
                value: [    
                    [now.getFullYear(), now.getMonth() + 1, now.getDate()].join('/'),    
                    Math.round(value)    
                ]    
                   
            }    
        }
            
        var data = [];    
        var now = +new Date(1997, 9, 3);    
        var oneDay = 24 * 3600 * 1000;    
        var value = Math.random() * 1000;  
    
        for (var i = 0; i < 1000; i++) {    
            data.push(randomData());    
        }    
      

        option = {    
            title: {    
                text: '动态数据 + 时间坐标轴'    
            },    
            tooltip: {    
                trigger: 'axis',    
                formatter: function (params) {    
                    params = params[0];    
                    var date = new Date(params.name);    
                    return date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear() + ' : ' + params.value[1];    
                },    
                axisPointer: {    
                    animation: false    
                }    
            },    
            xAxis: {    
                type: 'time',    
                splitLine: {    
                    show: false    
                }    
            },    
            yAxis: {    
                type: 'value',    
                boundaryGap: [0, '100%'],    
                splitLine: {    
                    show: false    
                }    
            },    
            series: [{    
                name: '模拟数据',    
                type: 'line',    
                showSymbol: false,    
                hoverAnimation: false,    
                data: data    
            }]    
        };    
            
       setInterval(function () {    
            
            for (var i = 0; i < 2; i++) {    
                data.shift();    
                data.push(randomData());
            }
           myChart.setOption(option);
        }, 1000);    
    </script>    
</body>    
</html>   <!DOCTYPE html>    
<html>    
<head>    
    <meta charset="utf-8">    
    <title>ECharts</title>    
    <!-- 引入 echarts.js -->    
    <script src="/static/js/jquery-1.10.2.min.js"></script>    
    <script type="text/javascript" src="/static/js/echarts.common.min.js" ></script>  
</head>    
<body>    
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->    
    <div id="main" style="width: 600px;height:400px;"></div>    
    <script type="text/javascript">    
        // 基于准备好的dom，初始化echarts实例    
        var myChart = echarts.init(document.getElementById('main'));//定义折线图显示的位置对象  
        function randomData() {    
            now = new Date(+now + oneDay);    
            value = value + Math.random() * 21 - 10;    
            return {    
                name: now.toString(),    
                  
                value: [    
                    [now.getFullYear(), now.getMonth() + 1, now.getDate()].join('/'),    
                    Math.round(value)    
                ]    
                   
            }    
        }
            
        var data = [];    
        var now = +new Date(1997, 9, 3);    
        var oneDay = 24 * 3600 * 1000;    
        var value = Math.random() * 1000;  
    
        for (var i = 0; i < 1000; i++) {    
            data.push(randomData());    
        }    
       alert(data);

        option = {    
            title: {    
                text: '动态数据 + 时间坐标轴'    
            },    
            tooltip: {    
                trigger: 'axis',    
                formatter: function (params) {    
                    params = params[0];    
                    var date = new Date(params.name);    
                    return date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear() + ' : ' + params.value[1];    
                },    
                axisPointer: {    
                    animation: false    
                }    
            },    
            xAxis: {    
                type: 'time',    
                splitLine: {    
                    show: false    
                }    
            },    
            yAxis: {    
                type: 'value',    
                boundaryGap: [0, '100%'],    
                splitLine: {    
                    show: false    
                }    
            },    
            series: [{    
                name: '模拟数据',    
                type: 'line',    
                showSymbol: false,    
                hoverAnimation: false,    
                data: data    
            }]    
        };    
            
       setInterval(function () {    
            
            for (var i = 0; i < 2; i++) {    
                data.shift();    
                data.push(randomData());
            }
           myChart.setOption(option);
        }, 1000);    
    <