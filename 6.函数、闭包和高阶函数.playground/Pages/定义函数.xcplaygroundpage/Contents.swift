//: 定义和使用函数
//: 常规式定义
func add(x: Int, y: Int) -> Int {
    return x + y
}

var a = add(x: 1, y: 2)
let b = add(x: -1, y: -2)


//: ★变量式定义，也叫闭包表达式
var jiafa = { (x: Int, y: Int) -> Int in
    return x + y
}

jiafa(1,2)


//: [>](@next)
