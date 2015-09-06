//: 扩展计算属性

//: - 给Double类型扩展计算属性:
//以米为基准
extension Double {
    var 公里: Double { return self / 1_000.0 }
    var 米: Double { return self }
    var 厘米: Double { return self * 100.0 }
    
}

var 每天跑步 = 1000.0
每天跑步.公里

var 珠穆朗峰高度 = 8848.8
珠穆朗峰高度.公里

var 身高 = 1.72
身高.厘米

//: [扩展构造器](@next)
