//: ----
//:  - [小波说雨燕 3天学会Swift 4]
//:  - 全集课件：[github.com/yagamis](http://github.com/yagamis/swift2basic)
//: ----
//: 闭包 Closure
//:
//: ----
//:  - 闭包是一种函数的简写形式, 省去函数名, 把参数和返回值放入花括号内.
// { (a: Int, b: Int) -> Int in
//      执行语句
//      return ...
// }

func add(x: Int, y: Int) -> Int {
    return x + y
}

var jiafa = { (x: Int, y: Int) -> Int  in
    return x + y
}

jiafa(3, 4)
//:  [>](@next)
