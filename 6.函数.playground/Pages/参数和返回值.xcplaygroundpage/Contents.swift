//: 参数和返回值: 可以无参数无返回值

//:  - 无参数无返回值。 用于执行一系列操作,不需要结果.

func welcome() {
    print("欢迎")
    print("学习")
    print("3天学会Swift")
}

welcome()

//:  - 多返回值（使用元组）
func maxMin() -> (Int, Int) {
    return (Int.min, Int.max)
}

maxMin().0
maxMin().1

//:  - 可以给某个参数以默认值
func add2(x :Int, increment : Int = 2) -> Int {
    return x + increment
}

add2(x: 3)

//:  - 调用时省略参数名，定义时在参数名前加下划线
func add3(_ x :Int, increment : Int = 3) -> Int {
    return x + increment
}

add3(5)

//: [>](@next)
