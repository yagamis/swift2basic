//: 数组
//:  - 有序可重复,用于存储同一类型的值.
//:  - 定义: Array<类型> 或 [类型]

//:  - 创建一个有默认值的数组
let array = Array(repeating: 1, count: 50)
let array1 = [1,1,1]

//:  - ⚡️创建一个整数区间内元素的数组,Array(区间)
let intRangeArray = Array(1...10)



//:  - ⚡️💡用数组字面量来创建数组: [值1, 值2, ..., 值N]
var topLang = ["java","C","C++","Python"]




//:  - ①元素数:count, 空否: isEmpty
topLang.count
topLang.isEmpty
//:  - ②➕添加: append, 添加一个同类型数组 +=
topLang.append("PHP")

let h5 = ["html","css","js"]

topLang += h5
//:  - ③获取元素 : 数组名[索引], ⚠️索引总是从0开始
topLang[7]


//:  - ④插入: insert
topLang.insert("Swift", at: 4)

//:  - ⑤移除: remove
topLang.remove(at: 8)

//:  - 高阶操作①: 求和，连接元素， reduce





//:  - 高阶操作②: 变形 map


//: [>](@next)
