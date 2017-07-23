//: 闭包表达式
//:
//: ----
//:  - 有时候需要更简洁的函数表达方式
//:  - 尤其是一个函数的某参数是另一个函数时
//:  - 这节主要以sort函数为例
//: ----

//: ----
//:  - sorted函数用于对数组排序, 只接受一个函数型参数, 描述排序逻辑。
let cities = ["Wuhan","Nanjing","Hangzhou"]



//:  - 用闭包表达式来改写：
let cities2 = cities.sorted()

func daoxu(a: String, b: String) -> Bool {
    return a > b
}

let cities3 = cities.sorted(by: daoxu)

//:  闭包的自动推断
//:  - ①参数和返回类型可自动推断,单表达式可以忽略 返回值 及 return
let cities4 = cities.sorted { (a, b)  in
    a > b
}


//:  - ②可使用快捷参数,前缀$,从0开始递增
let cities5 = cities.sorted { $0 > $1}


cities3
cities4
cities5


