//: 嵌套函数：以上介绍都是全局函数，可以在定义之后的任意位置使用。嵌入在一个函数内部的函数，叫局部函数。

func 增减函数(正:Bool) -> (Int)->Int {
    func 加1(a:Int) ->Int {
        return a + 1
    }
    func 减1(a:Int) ->Int {
        return a - 1
    }

    return 正 ? 减1 : 加1
}



var 当前值 = -4
let 加到0 = 增减函数(当前值 > 0)

while 当前值 != 0 {
    print("\(当前值)")
    当前值 = 加到0(当前值)
}

print(当前值)


//: [](@next)
