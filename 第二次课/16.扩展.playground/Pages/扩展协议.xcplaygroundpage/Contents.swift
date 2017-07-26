//: 让既有类型遵从协议。

//天气预报类型Weather
struct Weather {
    var name : String
    var temperature: Double
    var desciption: String
}

//国内天气目前 不含 露点温度
protocol DewTempMeasurable {
    
}

//云量
protocol CloudAmountable {
    
}

//扩展天气预报模型
extension Weather: DewTempMeasurable, CloudAmountable {
    
}
