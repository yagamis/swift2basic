//: 数组
//:  - 有序可重复,用于存储同一类型的值.
//:  - 定义: Array<类型> 或 [类型]

//:  - 创建一个有默认值的数组
let array = Array(repeating: 1, count: 3)

//:  - ⚡️创建一个整数区间内元素的数组,Array(区间)
let intRangeArray = Array(-2...2)


//:  - ⚡️💡用数组字面量来创建数组: [值1, 值2, ..., 值N]
var topLang = ["Java","C","C++","Python"]


//:  - ①元素数:count, 空否: isEmpty
topLang.count
topLang.isEmpty

//:  - ②➕添加: append, 添加一个同类型数组 +=
topLang.append("PHP")

let h5Serial = ["HTML","CSS","Javascript"]

topLang += h5Serial


//:  - ③获取元素 : 数组名[索引], ⚠️索引总是从0开始
topLang.count
topLang[7]


//:  - ④↙️插入: insert
topLang.insert("Swift", at: 4)

//:  - ⑤↗️移除: remove
topLang.remove(at: 8)

topLang


//: [>](@next)
