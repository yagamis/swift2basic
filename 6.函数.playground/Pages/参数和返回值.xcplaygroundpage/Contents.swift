//: 参数和返回值: 可以无参数无返回值

//:  - 无参数无返回值 .一般用于执行一系列操作,不需要结果.

func welcome() {
    print("欢迎")
    print("学习")
    print("3天学会Swift 3")
}

welcome()
//:  - 多返回值（使用元组）
func maxMin() -> (Int, Int) {
    return (Int.min, Int.max)
}

maxMin().0
maxMin().1


//:  - 参数以 名称: 类型 列出, 多个参数间用逗号分隔

func add(x: Int, y: Int, z: Int) -> Int {
    return x + y + z
}


//:  - 可以给某个参数以默认值
func add2(x :Int, increment : Int = 2) -> Int {
    return x + increment
}


add2(x: 3)

add2(x: 3, increment: 3)


//: [>](@next)
