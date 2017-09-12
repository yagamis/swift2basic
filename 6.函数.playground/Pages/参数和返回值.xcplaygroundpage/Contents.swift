//: 参数和返回值: 可以无参数无返回值

//:  - 无参数无返回值。 用于执行一系列操作.
func welcome1() {
    print("welcome to")
    print("learn swift4!")
}

welcome1()
//:  - 多返回值（使用元组）
func maxMin() -> (Int, Double) {
    return (Int.max, 0.0)
}

let zzz = maxMin()

print(zzz.1)
//:  - 可以给某个参数以默认值
func add2(x: Int, increment: Int = 2) -> Int {
    return x + increment
}

let ccc = add2(x: 3)
let ddd = add2(x: 4, increment: 6)

//:  - 调用时省略参数名，定义时在参数名前加下划线
func add3(_ x: Int, _ y: Int) -> Int {
    return x + y
}

add3(2, 3)

//: [>](@next)
