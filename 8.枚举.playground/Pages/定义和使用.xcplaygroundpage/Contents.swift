//: 定义和使用 ：
//:  - 给定一个名称, 然后把每一种情况列举出来.
enum 天气 {
    case 晴
    case 阴
    case 雨
    case 霾
    case 冰雹
    case 雪
    case 雾
}

//:  - 使用：点语法
天气.雪

//:  - 与switch配合使用。如果变量是枚举值，可省略枚举名
let 上海今日天气 = 天气.晴

switch 上海今日天气 {
case .霾 :
    print("今日有霾")
case .晴 :
    print("天气不错")
default:
    break
}



//:  - 附加（或关联）值: 每一种类型都可附加一个或多个值，形式是元组。 🌰case 类型(Int,String,...)
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



