//: 定义和使用 ：
//:  - 给定一个名称, 然后把每一种情况列举出来.
enum Weather {
    case cloudy
    case sunny
    case rainy
    case snowy
    case froggy
}


//:  - 使用：点语法
Weather.cloudy


//:  - 与switch配合使用。如果变量是枚举值，可省略枚举名。如果switch语句不列举枚举类型的所有情况，则必须要有default语句来处理其他情况。
var weatherToday = Weather.sunny

switch weatherToday {
case .cloudy:
    print("阴")
case .sunny:
    print("晴")
default:
    print("未知天气")
}

//:  - 附加值(选修): 每一种类型都可附加一个或多个值，形式是元组。 🌰case 类型(Int,String,...)
enum weatherDetail {
    //紫外线指数,晾晒指数,推荐出行地
    case lifeIndex(Int, Int, String)
    case pmIndex(String, Int)
}

//:  - 赋予附加值:加上元组字面量.
let weatherTomorrowDetail = weatherDetail.pmIndex("2.5", 100)
let weatherTodayDetail = weatherDetail.lifeIndex(30, 50, "日喀则")

//:  - 取得附加值:用switch语句, 在case中加上元组变量.
switch weatherTomorrowDetail {
case .lifeIndex(let uvi, let li, let desc):
    print("紫外线指数:",uvi,"晾晒指数:", li, "推荐出行地:", desc)
case .pmIndex(let cat, let index):
    print("雾霾颗粒类别:", cat, "指数:", index)
}





