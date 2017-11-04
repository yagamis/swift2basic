//: 既然函数可以写成变量，那也可以当类型来使用。
func jisuan(x: Int, y: Int, method: (Int,Int) -> Int) -> Int {
    return method(x, y)
}

func add(x: Int, y: Int) -> Int {
    return x + y
}

func multipy(x : Int, y: Int) -> Int {
    return x * y
}

let z = jisuan(x: 9, y: 3, method: add)
let u = jisuan(x: 9, y: 3, method: multipy)


//闭包写法
let b = jisuan(x: 9, y: 3) { (x, y) -> Int in
    return x * y
}

//闭包中的默认参数名
let c = jisuan(x: 9, y: 3) { $0 / $1 }
