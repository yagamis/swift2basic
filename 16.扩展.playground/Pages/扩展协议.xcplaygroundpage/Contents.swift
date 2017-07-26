//: 让既有类型遵从协议。

//天气预报
struct Weather {
    var name: String
    var temperature: Double
    var description: String
}

//国内天气目前不含 露点温度
protocol DewTempMeasurable {}
//云量
protocol CloudAmoutable {}

//扩展天气预报模型
extension Weather: DewTempMeasurable, CloudAmoutable {
    
}


