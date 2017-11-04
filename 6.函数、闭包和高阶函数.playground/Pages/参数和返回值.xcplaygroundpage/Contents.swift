//: 参数和返回值

//:  - 无参数无返回值
func welcome1() {
    print("Welcome")
    print("learn Swift 4!")
}

//:  - 多返回值（使用元组）
func maxMin() -> (Int, Double) {
    return (Int.max, 0.0)
}

//:  - 可以给某个参数以默认值
func add2(x: Int, increment: Int = 2) -> Int {
    return x + increment
}

//★练习：使用变量式定义来改写上述函数


//: [>](@next)
