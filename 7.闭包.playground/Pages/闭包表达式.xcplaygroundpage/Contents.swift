//: 闭包表达式
//:
//: ----
//:  - 有时候需要更简洁的函数表达方式
//:  - 尤其是一个函数的某参数是另一个函数时
//:  - 这节主要以sort函数为例
//: ----
let cities = ["xian","jinan","datong","shanghai","changsha","weifang","suihua"]


//: ----
//:  - sorted函数用于对数组排序, 只接受一个函数型参数, 描述排序逻辑。
let cityRank1 = cities.sorted()


func daoxu(a: String, b: String) -> Bool {
    return a > b
}

let cityRank2 = cities.sorted(by: daoxu)

//:  - 用闭包表达式来改写：
let cityRank3 = cities.sorted { (a, b) -> Bool in
    return a > b
}


//:  闭包的自动推断
//:  - ①参数和返回类型可自动推断,单表达式可以忽略 返回值 及 return
let cityRank4 = cities.sorted { (a,b)  in
    return a > b
}


//:  - ②可使用快捷参数,前缀$,从0开始递增
let cityRank5 = cities.sorted { $0 > $1 }


let cityRank6 = cities.filter {
    $0.contains("s") || $0.contains("f")
}

print(cityRank6)

