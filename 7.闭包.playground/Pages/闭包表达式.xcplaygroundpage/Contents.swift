//: 闭包表达式
//:
//: ----
//:  - 有时候需要更简洁的函数表达方式
//:  - 尤其是一个函数的某参数是另一个函数时
//:  - 这节主要以sort函数为例
//: ----
let citys = ["zhengzhou","xiamen","hefei","nanchang"]
//: ----
//:  - sorted函数用于对数组排序, 只接受一个函数型参数, 描述排序逻辑。

let cityRank1 = citys.sorted()
cityRank1

//倒序
func descendingOrder(a: String,b:String) -> Bool {
    return a > b
}

let cityRank2 = citys.sorted(by: descendingOrder)

//:  - 用闭包表达式来改写：
let cityRank3 = citys.sorted { (a, b) -> Bool in
    return a > b
}

//:  闭包的自动推断
//:  - ①参数和返回类型可自动推断,单表达式可以忽略 返回值 及 return
let cityRank4 = citys.sorted { (a, b)  in
     a > b
}

//:  - ②可使用快捷参数,前缀$,从0开始递增
let cityRank5 = citys.sorted { $0 > $1 }

//倒序的几种精简写法效果完全相同
cityRank2
cityRank3
cityRank4
cityRank5



