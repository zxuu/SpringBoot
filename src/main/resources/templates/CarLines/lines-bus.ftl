<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title></title>
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
            border: 0;
        }
        html,body{
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
<div id="box" style="width: 100%;height: 100%;"></div>
<script src="https://cdn.jsdelivr.net/npm/echarts/dist/echarts.min.js" type="text/javascript" charset="utf-8"></script>
<script src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/bmap.min.js" type="text/javascript" charset="utf-8"></script>
<!-- 使用的是2.0版本的地图数据 -->
<script src="http://api.map.baidu.com/api?v=3.0&ak=uxIwiA8doTGlpVww7FAIbT59iIFV5oAB" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    myChart = echarts.init(document.getElementById('box'));
    var  webSocket=null;

    //判断当前浏览器是否支持WebSocket
    if ('WebSocket' in window){
        webSocket=new WebSocket('ws://123.57.32.84:8080/webSocket');
    } else{
        alert("当前浏览器不支持WebSocket");
    }

    //连接发生错误的回调方法
    webSocket.onerror=function () {
        setMessageInnerHTML("WebSocket连接发生错误！");
    }

    webSocket.onopen=function () {
        setMessageInnerHTML("WebSocket连接成功！")
    }



    webSocket.onclose=function () {
        setMessageInnerHTML("WebSocket连接关闭");
    }

    window.onbeforeunload=function () {
        closeWebSocket();
    }

    function closeWebSocket() {
        webSocket.close();
    }

    function send() {
        var message="前端发给后台";
        webSocket.send(message);
    }

    //将消息显示在网页上
    function setMessageInnerHTML(innerHTML) {
        // document.getElementById('message').innerHTML+=innerHTML+'<br/>';
    }
    //  const searchList = ["770路","771路","774路","775路","776路","778路","779路","780路","781路","783路","784路","784路区间","785路","787路","789路","790路","791路","793路B线","793路","794路","795路","798路","799路","801路","802路","804路","806路","807路","808路","809路","810路","812路","813路","816路","817路","818路","819路","822路","823路","824路","825路","829路","830路","836路","837路","842路","843路","844路","845路","848路","849路","850路","851路","854路","855路","856路","858路","860路","862路","863路","864路","868路","869路","870路","871路","875路","876路","909路"];
    //  上海市暂时添加这几个公交线路数据 后期再补
    // [
    // [121.448029, 31.198981],
    //     [121.448319, 31.19844]
    // ]
    // var data = [
    //     [121.448029, 31.198981],
    //         [121.448319, 31.19844]
    // ]

    myChart.setOption(option = {
            bmap: {
                center: [121.494687,31.23937],
                zoom: 10,
                roam: true,
                mapStyle: {
                    'styleJson': [
                        {
                            'featureType': 'water',
                            'elementType': 'all',
                            'stylers': {
                                'color': '#031628'
                            }
                        },
                        {
                            'featureType': 'land',
                            'elementType': 'geometry',
                            'stylers': {
                                'color': '#000102'
                            }
                        },
                        {
                            'featureType': 'highway',
                            'elementType': 'all',
                            'stylers': {
                                'visibility': 'off'
                            }
                        },
                        {
                            'featureType': 'arterial',
                            'elementType': 'geometry.fill',
                            'stylers': {
                                'color': '#000000'
                            }
                        },
                        {
                            'featureType': 'arterial',
                            'elementType': 'geometry.stroke',
                            'stylers': {
                                'color': '#0b3d51'
                            }
                        },
                        {
                            'featureType': 'local',
                            'elementType': 'geometry',
                            'stylers': {
                                'color': '#000000'
                            }
                        },
                        {
                            'featureType': 'railway',
                            'elementType': 'geometry.fill',
                            'stylers': {
                                'color': '#000000'
                            }
                        },
                        {
                            'featureType': 'railway',
                            'elementType': 'geometry.stroke',
                            'stylers': {
                                'color': '#08304b'
                            }
                        },
                        {
                            'featureType': 'subway',
                            'elementType': 'geometry',
                            'stylers': {
                                // 'color': '#000000',// 默认透明显示地铁线路
                                'lightness': -70
                            }
                        },
                        {
                            'featureType': 'building',
                            'elementType': 'geometry.fill',
                            'stylers': {
                                'color': '#000000'
                            }
                        },
                        {
                            'featureType': 'all',
                            'elementType': 'labels.text.fill',
                            'stylers': {
                                'color': '#857f7f'
                            }
                        },
                        {
                            'featureType': 'all',
                            'elementType': 'labels.text.stroke',
                            'stylers': {
                                'color': '#000000'
                            }
                        },
                        {
                            'featureType': 'building',
                            'elementType': 'geometry',
                            'stylers': {
                                'color': '#022338'
                            }
                        },
                        {
                            'featureType': 'green',
                            'elementType': 'geometry',
                            'stylers': {
                                'color': '#062032'
                            }
                        },
                        {
                            'featureType': 'boundary',
                            'elementType': 'all',
                            'stylers': {
                                'color': '#465b6c'
                            }
                        },
                        {
                            'featureType': 'manmade',
                            'elementType': 'all',
                            'stylers': {
                                'color': '#022338'
                            }
                        },
                        {
                            'featureType': 'label',
                            'elementType': 'all',
                            'stylers': {
                                'visibility': 'off'
                            }
                        }
                    ]
                }
            },
            series: [{
                type: 'lines',
                coordinateSystem: 'bmap',
                polyline: true,
                data: [],
                silent: true,
                lineStyle: {
                    normal: {
                        // color: '#c23531',
                        // color: 'rgb(200, 35, 45)',
                        opacity: 0.2,
                        width: 1
                    }
                },
                progressiveThreshold: 500,
                progressive: 200
            }, {
                type: 'lines',
                coordinateSystem: 'bmap',
                polyline: true,
                data: [],
                lineStyle: {
                    normal: {
                        width: 0
                    }
                },
                effect: {
                    constantSpeed: 0,
                    show: true,
                    trailLength: 0.1,
                    symbolSize: 1.5
                },
                zlevel: 1
            }]
        });

    webSocket.onmessage=function (event) {
        var r = event.data
        // alert(r)

        var strs = r.split(",")
        var d1 = [parseFloat(strs[0]),parseFloat(strs[1])]
        var d2 = [parseFloat(strs[2]),parseFloat(strs[3])]
        var d = [d1,d2]
        busLines = [{
            "coords": d,
            "lineStyle": {
                "normal": {
                    "color": "rgba(128, 0, 128, 1)"
                }
            }
        }]

            myChart.setOption(option = {
                series: [{
                    data: busLines
                }, {
                    data: busLines
                }]
            });


    }
    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
</script>
</body>
</html>