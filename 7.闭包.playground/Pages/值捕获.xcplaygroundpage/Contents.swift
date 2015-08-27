//: 值捕获
//:  - 闭包可以捕获它周围的变量，以嵌套函数为例。

func 增减函数(当前值: Int) -> (Int)->Int {
    var 正 = false
    var 基准数 = 0
    
    func 加1(a:Int) ->Int {
        正 = 当前值 > 基准数
        return a + 1
    }
    func 减1(a:Int) ->Int {
        正 = 当前值 < 基准数
        return a - 1
    }
    
    return 正 ? 减1 : 加1
}



var 当前值 = -4
let 加到0 = 增减函数(当前值)

while 当前值 != 0 {
    print("\(当前值)")
    当前值 = 加到0(当前值)
}

print(当前值)


//: [](@next)
