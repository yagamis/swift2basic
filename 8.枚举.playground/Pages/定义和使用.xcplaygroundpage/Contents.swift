//: 定义和使用 ：
//:  - 给定一个名称, 然后把每一种情况列举出来.
enum Weather {
    case sunny
    case cloudy
    case rainy
    case snow
    case froggy
}



//:  - 使用：点语法
Weather.cloudy


//:  - 与switch配合使用。如果变量是枚举值，可省略枚举名
var todayweather = Weather.sunny

switch todayweather {
case .cloudy:
    print("今天天气多云")
case .sunny:
    print("天气晴朗")
default:
    print("天气状况未知")
}



//:  - 附加值(选修): 每一种类型都可附加一个或多个值，形式是元组。 🌰case 类型(Int,String,...)
enum 精确天气 {
    case 晴(Int, Int, String)
    case 霾(String, Int)
}

//:  - 赋予附加值:加上元组字面量.
let 上海今日精确天气 = 精确天气.霾("PM10", 100)
let 北京今日精确天气 = 精确天气.晴(30, 50, "湛蓝")

//:  - 取得附加值:用switch语句, 在case中加上元组变量.
switch 北京今日精确天气 {
case .晴(let uvi, let li, let desc):
    print("紫外线指数:",uvi,"晾晒指数:", li, "天蓝程度:", desc)
case .霾(let cat, let index):
    print("雾霾颗粒类别:", cat, "指数:", index)
}



