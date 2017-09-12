//: 数组
//:  - 有序可重复,用于存储同一类型的值.
//:  - 定义: Array<类型> 或 [类型]

//:  - 创建一个有默认值的数组
let array1 = Array(repeating: "女", count: 30)



//:  - ⚡️创建一个整数区间内元素的数组,Array(区间)
let intRangeArray = Array(-100...100)



//:  - ⚡️💡用数组字面量来创建数组: [值1, 值2, ..., 值N]
var topLangs = ["Swift","Python","Kotlin","Javascript","Go"]



//:  - ①元素数:count, 空否: isEmpty
topLangs.count
topLangs.isEmpty


//:  - ②➕添加: append, 添加一个同类型数组 +=
topLangs.append("C#")
let h5sets = ["html","CSS","React"]
topLangs += h5sets

//:  - ③获取元素 : 数组名[索引], ⚠️索引总是从0开始
topLangs[5]


//:  - ④插入: insert
topLangs.insert("React Native", at: 1)

//:  - ⑤移除: remove
topLangs.remove(at: 5)


//:  - 高阶操作①: 求和，连接元素， reduce
let topLangsTitle = topLangs.reduce("我最喜爱的编程语言排行榜：") {
    $0 + "," + $1
}

print(topLangsTitle)

let numbers = [1,2,3,100]

let sum = numbers.reduce(0) {
    $0 + $1
}
//:  - 高阶操作②: 变形 map
let numbersToStr = numbers.map { (number) -> String in
    return "\(number)"
}




//: [>](@next)
