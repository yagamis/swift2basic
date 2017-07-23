//: 函数类型：包含参数和返回类型的简写形式，可以像普通变量那样使用,一般用于函数式编程. 🌰(Int,Int) -> Int
func calculate(x: Int, y: Int, method: (Int, Int) -> Int) -> Int {
    return method(x,y)
}

func add(g: Int, f: Int) -> Int {
    return g + f
}

func multiply(x: Int, y: Int) -> Int {
    return x * y
}

calculate(x: 3, y: 4, method: add)
calculate(x: 5, y: 6, method: multiply)



calculate(x: 10, y: 20) { (a, b) -> Int in
    return a + b
}
//函数型的简写形式：闭包表达式。$0,$1,$2
calculate(x: 5, y: 6) { $0 * $1 }
