//: 扩展计算属性。注意只能扩展计算属性。 存储属性一旦定义好，就无法再增加。

//: - 给Double类型扩展计算属性:
//距离单位：米
extension Double {
    var m : Double { return self }
    var km: Double { return self / 1000.0 }
    var cm: Double {
        return self * 100.0
    }
    
}

var dailyRunning = 1000.0
dailyRunning.km

var mountainEverest = 8848.8
mountainEverest.km

var height = 1.72
height.cm




//: [>](@next)
