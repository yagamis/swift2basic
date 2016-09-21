//: 闭包表达式
//:
//: ----
//:  - 有时候需要更简洁的使用函数的方式
//:  - 尤其是一个函数的某参数是另一个函数时
//:  - 这节主要以sort函数为例
//: ----
var city = ["zhengzhou","xiamen","hefei","nanchang"]
//: ----
//:  - sorted函数用于对数组排序, 只接受一个函数型参数, 描述排序逻辑。

var cityRank1 = city.sorted()

func daoxu(a: String,b:String) -> Bool {
    return a > b
}

var cityRank2 = city.sorted(by: daoxu)



//:  - 用闭包表达式来改写：
var cityRank3 = city.sorted { (a, b) -> Bool in
    return a > b
}

//:  闭包的自动推断
//:  - ①参数和返回类型可自动推断,单表达式可以忽略return关键词

//:  - ③可使用快捷参数,前缀$,从0开始递增



var cityRank5 = city.sorted { $0 > $1 }

cityRank5



