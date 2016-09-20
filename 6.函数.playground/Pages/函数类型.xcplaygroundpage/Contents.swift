//: 函数类型：包含参数和返回类型的简写形式，可以像普通变量那样使用,一般用于函数式编程. 🌰(Int,Int) -> Int
func calculate(x: Int, y: Int, method: (Int,Int)->Int ) -> Int {
    return method(x, y)
}

func add(x: Int, y: Int) -> Int {
    return x + y
}

func multiply(x: Int, y: Int) -> Int {
    return x * y
}


calculate(x: 3, y: 4, method: add)
calculate(x: 5, y: 6, method: multiply)
