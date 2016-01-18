//: 函数类型：包含参数和返回类型的简写形式 🌰(Int,Int) -> Int
func 我的加法(a: (Int, Int)->Int , b: Int, c: Int) -> Int {
    return a(b, c)
}

//:  - 函数型变量：可以像变量一样使用函数。
func add(a: Int, b: Int) -> Int {
    return a + b
}

let 加法 = add

我的加法(加法, b: 3, c: 4)


//:  - 函数型返回值：可以把函数类型作为一个返回值。
func add1(a: Int) -> Int {
    return a + 1
}

func sub1(a: Int) -> Int {
    return a - 1
}

func addOrSub1(正数:Bool) -> (Int) -> Int {
    if 正数 {
        return add1
    } else {
        return sub1
    }
}


addOrSub1(false)(0)


