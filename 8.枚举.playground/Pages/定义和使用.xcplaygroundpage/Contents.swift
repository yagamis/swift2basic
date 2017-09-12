//: 定义和使用 ：
//:  - 给定一个名称, 然后把每一种情况列举出来.
enum Weather {
    case sunny, cloudy, rainy, snowy, froggy
}


//:  - 使用：点语法
let todayWeather = Weather.snowy


//:  - 与switch配合使用。如果变量是枚举值，可省略枚举名。如果switch语句不列举枚举类型的所有情况，则必须要有default语句来处理其他情况。
switch todayWeather {
case .sunny:
    print("艳阳高照，宜出门旅行")
case .cloudy:
    print("阴天，回房间吧")
default:
    print("天气不对！")
    break
}

//:  - 附加值(选修): 每一种类型都可附加一个或多个值，形式是元组。 🌰case 类型(Int,String,...)
enum WeatherDetail {
    case lifeIndex(Int, Int, String)
    case pmIndex(String, Int)
}

//:  - 赋予附加值:加上元组字面量.
let weatherDetailToday = WeatherDetail.lifeIndex(20, 30, "绥化")
let wetherDetailTomorrow = WeatherDetail.pmIndex("2.5", 120)

//:  - 取得附加值:用switch语句, 在case中加上元组变量.
switch wetherDetailTomorrow {
case .lifeIndex(let uv, let li, let city):
    print("紫外线:\(uv),晾晒指数:\(li),推荐出行地： \(city)")
case .pmIndex(let category, let index):
    print("PM\(category)指数为：\(index)")
}





