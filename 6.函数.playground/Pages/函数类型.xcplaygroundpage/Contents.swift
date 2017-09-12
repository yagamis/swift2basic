//: 函数类型：包含参数和返回类型的简写形式，可以像普通变量那样使用,一般用于函数式编程. 🌰(Int,Int) -> Int
func jisuan(x: Int, y: Int, method: (Int,Int) -> Int) -> Int {
    return method(x, y)
}

func add(x: Int, y: Int) -> Int {
    return x + y
}

func multipy(x : Int, y: Int) -> Int {
    return x * y
}


let z = jisuan(x: 3, y: 4, method: add)
let u = jisuan(x: 8, y: -9, method: multipy)


//函数型的简写形式 ： 闭包表达式
let b = jisuan(x: 8, y: 9) { (x, y) -> Int in
    return x * y
}

let c = jisuan(x: 128, y: 64) { $0 / $1 }

//休息10分钟到 10：10继续闭包
